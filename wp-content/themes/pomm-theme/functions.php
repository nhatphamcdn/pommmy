<?php

add_action( 'init', 'masterInit' );
function masterInit() {
	require( 'inc/posttypes.php' );
	require( 'inc/taxonomies.php' );
	require( 'inc/menus.php' );
	require( 'inc/acf.php' );
	
	// Custom theme
	require( 'inc/custom/theme-support.php' );
	require( 'inc/custom/image-scurity.php' );
}

add_action( 'widgets_init', 'masterWidgetsInit' );
function masterWidgetsInit() {
	require( 'inc/widgets.php' );
}

// Init
require( 'inc/custom/custom-editor.php' );

// Extras functions
require( 'inc/clean-up.php' );
require( 'inc/asset-url.php' );
require( 'inc/pagination.php' );
require( 'inc/static.php' );
require( 'inc/extras.php' );