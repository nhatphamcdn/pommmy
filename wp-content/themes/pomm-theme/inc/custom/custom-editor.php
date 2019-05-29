<?php

add_filter('use_block_editor_for_post', '__return_false');

add_filter( 'tiny_mce_before_init', 'resetFormatTinyMCE' );
function resetFormatTinyMCE( $in ) {
  $in['wordpress_adv_hidden'] = FALSE;

  return $in;
}

add_filter( 'mce_buttons_2', 'add_format' );
function add_format( $buttons ) {
	array_unshift( $buttons, 'styleselect' );
	return $buttons;
}

add_filter( 'tiny_mce_before_init', 'leaven_modify_mce_styles' );
function leaven_modify_mce_styles( $init_array ) {
	// Define the style_formats array
	$style_formats = array(
		array(
			'title'    => __( 'Green Title', 'pomm' ),
			'selector' => 'p',
			'classes'  => 'green-title',
		),
		array(
			'title'    => __( 'Button read', 'pomm' ),
			'selector' => 'a',
			'classes'  => 'button red',
		),
		array(
			'title'    => __( 'Separator', 'pomm' ),
			'selector' => 'p',
			'classes'  => 'separator',
		),
		array(
			'title'    => __( 'Gallery', 'pomm' ),
			'selector' => 'ul',
			'classes'  => 'gallery',
		),
	);
	$init_array['style_formats'] = wp_json_encode( $style_formats );
	return $init_array;
}

function my_theme_add_editor_styles() {
  add_editor_style( 'editor-style.css' );
}
add_action( 'init', 'my_theme_add_editor_styles' );

function prevent_deleting_pTags($init){
  $init['wpautop'] = false;

  return $init;

}

add_filter('tiny_mce_before_init', 'prevent_deleting_pTags');