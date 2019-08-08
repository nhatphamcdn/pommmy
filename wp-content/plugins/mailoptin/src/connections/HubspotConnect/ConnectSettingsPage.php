<?php

namespace MailOptin\HubspotConnect;

use Authifly\Exception\Exception;

class ConnectSettingsPage extends AbstractHubspotConnect
{
    public function __construct()
    {
        parent::__construct();

        add_filter('mailoptin_connections_settings_page', array($this, 'connection_settings'), 10, 99);

        add_filter('wp_cspa_santized_data', [$this, 'remove_access_token_persistence'], 10, 2);
        add_action('wp_cspa_settings_after_title', array($this, 'output_error_log_link'), 10, 2);

        add_action('mailoptin_before_connections_settings_page', [$this, 'handle_access_token_persistence']);
    }

    /**
     * Build the settings metabox for hubspot
     *
     * @param array $arg
     *
     * @return array
     */
    public function connection_settings($arg)
    {
        if (self::is_connected()) {
            $status       = sprintf('<span style="color:#008000">(%s)</span>', __('Connected', 'mailoptin'));
            $button_text  = __('RE-AUTHORIZE', 'mailoptin');
            $button_color = 'mobtnGreen';
            $description  = sprintf(__('Only re-authorize if you want to connect another Hubspot account.', 'mailoptin'));
        } else {
            $status       = sprintf('<span style="color:#FF0000">(%s)</span>', __('Not Connected', 'mailoptin'));
            $button_text  = __('AUTHORIZE', 'mailoptin');
            $button_color = 'mobtnPurple';
            $description  = sprintf(__('Authorization is required to grant <strong>%s</strong> access to interact with your Hubspot account.', 'mailoptin'), 'MailOptin');
        }

        $settingsArg[] = array(
            'section_title'             => __('Hubspot Connection', 'mailoptin') . " $status",
            'type'                      => self::CRM_TYPE,
            'hubspot_auth'              => array(
                'type'        => 'arbitrary',
                'data'        => sprintf(
                    '<div class="moBtncontainer"><a href="%s" class="mobutton mobtnPush %s">%s</a></div>',
                    add_query_arg('redirect_url', MAILOPTIN_CONNECTIONS_SETTINGS_PAGE, MAILOPTIN_OAUTH_URL . '/hubspot/'), 
                    $button_color,
                    $button_text
                ),
                'description' => '<p class="description" style="text-align:center">' . $description . '</p>',
            ),
            'disable_submit_button'     => true,
        );

        return array_merge($arg, $settingsArg);
    }

    /**
     * Prevent access token from being overridden when settings page is saved.
     *
     * @param array $sanitized_data
     * @param string $option_name
     *
     * @return mixed
     */
    public function remove_access_token_persistence($sanitized_data, $option_name)
    {
        // remove the access token from being overridden on save of settings.
        if ($option_name == MAILOPTIN_CONNECTIONS_DB_OPTION_NAME) {
            unset($sanitized_data['hubspot_access_token']);
            unset($sanitized_data['hubspot_refresh_token']);
            unset($sanitized_data['hubspot_expires_at']);
        }

        return $sanitized_data;
    }

    /**
     * Persist access token.
     *
     * @param string $option_name DB wp_option key for saving connection settings.
     */
    public function handle_access_token_persistence($option_name)
    {
        if ( ! empty($_GET['mo-save-oauth-provider']) && $_GET['mo-save-oauth-provider'] == 'hubspot' && ! empty($_GET['access_token'])) {
            $old_data = get_option($option_name, []);
            $new_data = array_map('rawurldecode', [
                'hubspot_access_token'  => $_GET['access_token'],
                'hubspot_refresh_token' => $_GET['refresh_token'],
                'hubspot_expires_at'    => $_GET['expires_at']
            ]);

            update_option($option_name, array_merge($old_data, $new_data));

            $connection = Connect::$connectionName;

            // delete connection cache
            delete_transient("_mo_connection_cache_$connection");

            wp_redirect(MAILOPTIN_CONNECTIONS_SETTINGS_PAGE);
            exit;
        }
    }

    public function output_error_log_link($option, $args)
    {
        //Not a hubspot connection section
        if( MAILOPTIN_CONNECTIONS_DB_OPTION_NAME !== $option || !isset($args['hubspot_auth'])){
            return;
        }
        
        //Output error log link if  there is one
        echo self::get_optin_error_log_link('hubspot');

    }

    public static function get_instance()
    {
        static $instance = null;

        if (is_null($instance)) {
            $instance = new self();
        }

        return $instance;
    }
}