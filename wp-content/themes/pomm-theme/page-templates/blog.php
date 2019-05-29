<?php
  /**
   * Template Name: Blog
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
        // the query
        $paged = ( get_query_var( 'paged' ) ) ? get_query_var( 'paged' ) : 1;
        $args = array(
          'post_type' => 'post',
          'post_status' => 'publish',
          'posts_per_page' => 4,
          'paged' => $paged
        );
        $wpb_all_query = new WP_Query($args); ?>
        
        <?php if ( $wpb_all_query->have_posts() ) : ?>
          <div class="row">
            <!-- the loop -->
            <?php while ( $wpb_all_query->have_posts() ) : $wpb_all_query->the_post(); ?>
              <div class="col-lg-6 col-sm-12">
                <h2 class="entry-title post-title">
                  <a href="<?php the_permalink(); ?>"><?php the_title(); ?></a>
                </h2>
                <div class="post-meta mg-b10">
                  <span class="timestamp updated"><?php echo get_the_date( 'D, j F Y' ); ?></span>
                </div>
                <?php echo get_the_post_thumbnail( get_the_ID(), 'full', array( 'class' => 'img-border' ) ); ?>
                <p><?php the_content( '', TRUE ); ?></p>
                <a class="button blue" href="<?php the_permalink(); ?>">
                  <?php echo get_field('read_more_text', 'option'); ?>
                </a>
                <div class="separator"></div>
              </div>
            <?php endwhile; ?>
            <!-- end of the loop -->
            <div class="clearfix"></div>
            <div class="col-lg-12">
              <?php
                $disablePrev = '';
                $disableNext = '';
                if($paged <= 1) {
                  $disablePrev = 'disable';
                }
                if($paged >= $wpb_all_query->max_num_pages) {
                  $disableNext = 'disable';
                }
              ?>
              <a class="<?php echo $disablePrev; ?> button prev green pull-left" href="<?php echo get_previous_posts_page_link(); ?>"><?php echo get_field('button_previous_text', 'option'); ?></a>
              <a class="<?php echo $disableNext; ?> button next green pull-right" href="<?php echo get_next_posts_page_link(); ?>"><?php echo get_field('button_next_text', 'option'); ?></a>
              <div class="clearfix"></div>
            </div>

            <?php wp_reset_postdata(); ?>
          </div>
        <?php endif; ?>
      </div>

    </section>
    <!-- end page content area -->

    <div class="clearfix"></div>
  </div>
  <!-- end #wrapper -->

<?php 
  get_footer();
?>