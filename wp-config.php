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
define( 'DB_NAME', 'heroku_d5b978ce0cd886d' );//heroku_d5b978ce0cd886d

/** MySQL database username */
define( 'DB_USER', 'baaf6669d187ed' );//baaf6669d187ed

/** MySQL database password */
define( 'DB_PASSWORD', '23a325d0' );//23a325d0

/** MySQL hostname */
define( 'DB_HOST', 'us-cdbr-iron-east-02.cleardb.net' );//us-cdbr-iron-east-02.cleardb.net

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

define('WP_POST_REVISIONS', 4);
define('FS_METHOD', 'direct');
/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '?_%5!g9(vej{I^[r,qj]Fqs,LkP>_G/P>nMl+PdL(4HD@GCjkJ/OY<tXw8M.ruz:' );
define( 'SECURE_AUTH_KEY',  'uozDUe>]8jqq)S9|h`%pkhg%|!>t>ZU7|CPt4H3_j5qb(3l$u(-u>?W4y:MO1;Br' );
define( 'LOGGED_IN_KEY',    '7~g.cXF7a5#JN3ijOQiI6PPM&?fLD;sF89?;~]s.orWs2d6ir,xLFZ(S~54ie3Q5' );
define( 'NONCE_KEY',        '!$WC*!@= `Re4FU3:1qlG}>G/3W3.]j}Pr)?{}-:ku$SA;r~.t<CUyw_@mj8.l}h' );
define( 'AUTH_SALT',        '7Z57 cluG;~#u%%5%sVYQXuw_XS3BJd#-3^eKoV3w7*n*.S8sA6L:Xze5eea1f1U' );
define( 'SECURE_AUTH_SALT', '?}K7hK wxQ;Cce5.ayh%OPW%k67[=Ni}e.Z;r<}CZc^Xy|/fMc_2fL:Uwouv^=,,' );
define( 'LOGGED_IN_SALT',   '!pv<Pe:>@iEl}|LmI$15;DsH{gpiC+`LU7Q.&9[&M}tFtpYw;V$2j`#0,P2q n9#' );
define( 'NONCE_SALT',       ',&mLd/[]AKd%>7-u6RxF5RH3HXh!:Q(e/q+3Hl}0):jUl1bjftA^=<fbz:O`fs;h' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

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
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );
