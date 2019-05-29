<?php

function masterCleanup() {

  // Remove Really Simple Discovery
  remove_action ('wp_head', 'rsd_link');

  // Remove WordPress version number generator tag
  remove_action('wp_head', 'wp_generator');

  // Remove Windows Live Writer
  remove_action( 'wp_head', 'wlwmanifest_link');

  // Remove shortlink
  remove_action('wp_head', 'wp_shortlink_wp_head', 10, 0 );

  // Remove Emojis
  remove_action( 'wp_head', 'print_emoji_detection_script', 7 );
  remove_action( 'wp_print_styles', 'print_emoji_styles' );

  // Remove REST API Links
  remove_action( 'wp_head', 'rest_output_link_wp_head', 10 );
  remove_action('template_redirect', 'rest_output_link_header', 11, 0);

  // Remove oEmbed
  remove_action( 'wp_head', 'wp_oembed_add_discovery_links', 10 );
  remove_action( 'wp_head', 'wp_oembed_add_host_js' );
  remove_action('rest_api_init', 'wp_oembed_register_route');
  remove_filter('oembed_dataparse', 'wp_filter_oembed_result', 10);

  // Remove Automatic Feed Links
  remove_action('wp_head', 'feed_links', 2);
  remove_action('wp_head', 'feed_links_extra', 3);

  // Remove Relational Links (prev/next post)
  remove_action('wp_head', 'adjacent_posts_rel_link_wp_head');
}
add_action('after_setup_theme', 'masterCleanup');

function clean_header(){ 
  wp_deregister_script( 'comment-reply' );
}

add_action('init','clean_header');

// Remove Categories and Tags
add_action('init', 'prefix_remove_tax');
function prefix_remove_tax() {
    register_taxonomy('category', array());
    register_taxonomy('post_tag', array());
}