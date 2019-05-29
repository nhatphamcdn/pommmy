<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'pomm');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

define('WP_POST_REVISIONS', 4);
define('FS_METHOD', 'direct');
define( 'WP_MEMORY_LIMIT', '128M' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '-o_ck<7n/|Jv4:HYhH]6m?;)wY&PQ6^<vJz@0+ako=>]rMha3$zXs5!cT>(>z0_Y');
define('SECURE_AUTH_KEY',  'Z-Yi)#80b`q>AJ&sA&nPQWrAHg/ypHjF3nCk<r(8UQ/S5L:wce6j++^sZ=ZY(hIG');
define('LOGGED_IN_KEY',    '_H,?zR%VPdhI2SBWGJnK&L-Gj%-3o$Udo$^/r/ph{#rqz$+{gijkr,&t$=$taGs6');
define('NONCE_KEY',        '4S_V+[sNwF-}BR86V].phqKknA8A@$6i]MI-G{2[e1)@-peZx#_`oow1,gpVs@Od');
define('AUTH_SALT',        'tPXJ&UgK[M_Zp_f,hIfLZ{BE-2HUepB?mJ0wF:|M{{M$ZD7$Z%`OtD^5yJ]6TYLf');
define('SECURE_AUTH_SALT', 'E;.b[_,p`>tNb:sT=IfYJu.5x202=#9Onh+RT|444a{PBga114vBB=eeaZ=()czQ');
define('LOGGED_IN_SALT',   '5s(1[b:Yn>Y!uUnS;{UNkW`+3I`VCH>kBF=Zjc#!B}Bt3P>ZwFvei2398R-;8FL5');
define('NONCE_SALT',       'm8{aH)1+QRa`@5^xF[8/6V[_u]+$nb+jO!?`uZaff_2U>>sRvwk?SvQn%u^dAxWS');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', true);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');