<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * Localized language
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'local' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', 'root' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */


/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';


/* Add any custom values between this line and the "stop editing" line. */



/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
if ( ! defined( 'WP_DEBUG' ) ) {
	define( 'WP_DEBUG', false );
}


define('AUTH_KEY',         's4F8gshs55/etYMGsGYz3iQqHJ0r3KRKaVJYuhcDKcEWQazvVMW+17JBKBgCSgABBOFPIpR2rKYSiONwCQqNLA==');
define('SECURE_AUTH_KEY',  'kGRZigRera/EcgCyTTOj92oT0NkDyBXOS2ZGJrM7nIV8tSj765Mp3oEkxQNDFfynzlsBINz60l7Hg1fcd1DsQw==');
define('LOGGED_IN_KEY',    '+j3HZCHMh7fhSDR6MMMbh1NJThvCxBT2gncQJFCiAm+818gKeZlHKcKbtaeQfjXW980lfOPIV/mN6Hr5MoqTYg==');
define('NONCE_KEY',        'ZePXwUoGH6aSJQAM02KqTFaP8WeLClLO5JES+2Gy7dQuEzpJLHhRjCVLo5VLnnzAR3scZ56UhUzmZTx0PNY12g==');
define('AUTH_SALT',        's6h3Inh/QIEejhatLOeMdbm7Z9Wtp6qSiZTSYTPTZduycnm8DfQU2Nu/K6+LdcvuYEDfN1BcxYbt7dgHVdGmjA==');
define('SECURE_AUTH_SALT', 'Xv8WrHWCqJuQwAWHAOhCVQJPFKw6VrcmNeapUV0KpSqNdZxBvEipkGCCefyKe6jvw8ln6V3QWUZgP0fobhkFCQ==');
define('LOGGED_IN_SALT',   'FuADD+oEGQ41u/43mRyqtaCYMfl2PR5DvJotMKpbSTMTmseNPcbubMk/t5DL6ZwYZR1MRpnDmvZc43gaEcjLQQ==');
define('NONCE_SALT',       'a3B14w2qFlgLpm3GvgN1wFgjtmJAnqIPKtQFRiQwC+D8eyywTbIn9fmqXM36Pyz2So+F+rge7ZhRZrV863WLkw==');
define( 'WP_ENVIRONMENT_TYPE', 'local' );
/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
