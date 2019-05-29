<?php
  /**
   * @author: Nhat
   * @param: Array $upload_mimes
   * @return: Array
   */
  
  if( !function_exists('add_svg_to_upload_mimes') ) {
    function add_svg_to_upload_mimes( $upload_mimes ) { 
      $upload_mimes['svg'] = 'image/svg+xml'; 
      $upload_mimes['svgz'] = 'image/svg+xml'; 
      return $upload_mimes; 
    } 
    add_filter( 'upload_mimes', 'add_svg_to_upload_mimes', 10, 1 );
  }

?>