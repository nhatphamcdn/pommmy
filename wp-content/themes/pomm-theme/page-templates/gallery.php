<?php
  /**
   * Template Name: Gallery
   *
   * @themes Pomm
   */

  if ( ! defined( 'ABSPATH' ) ) {
    exit; // Exit if accessed directly.
  }

  get_header();


  // Get data
?>
    <!-- page content area -->
		<section id="content" class="col-lg-7 col-md-8 col-sm-12">

      <div class="cloud">
        <h1><?php the_title(); ?></h1>
      </div>

      <div class="content-bg">
      <?php 
        if ( have_posts() ) : 
          while ( have_posts() ) : the_post();
            the_content();
          endwhile;
        endif;
      ?>
      </div>

    </section>
    <!-- end page content area -->

    <div class="clearfix"></div>
  </div>
  <!-- end #wrapper -->

<?php 
  get_footer();
?>