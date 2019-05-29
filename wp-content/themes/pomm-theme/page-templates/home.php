<?php
  /**
   * Template Name: Home
   *
   * @package Pomm
   */

  if ( ! defined( 'ABSPATH' ) ) {
    exit; // Exit if accessed directly.
  }

  get_header();


  // Get data
?>
    <!-- front page header featured area -->
    <section id="featured">
      <?php
        // check if the repeater field has rows of data
        if( have_rows('slideshow_item') ):
          $i = 0;
      ?>
          <div id="wowslider-container1">
            <div class="ws_images">
              <ul>
                <?php
                // loop through the rows of data
                  while ( have_rows('slideshow_item') ) : the_row();
                    $image = get_sub_field('image');
                    $title = get_sub_field('title');
                    $summary = get_sub_field('summary');
                    $link_to = get_sub_field('link_to');
                ?>
                <li>
                  <a href="<?php echo $link_to; ?>">
                    <img src="<?php echo $image; ?>" alt="<?php echo $title; ?>" title="<?php echo $title; ?>" id="wows1_<?php echo $i; ?>"/>
                  </a>
                  <?php echo $summary; ?>
                </li>

                <?php
                    $i++;
                  endwhile;
                ?>
              </ul>
            </div>

            <div class="ws_bullets">
              <div>
              <?php
                  // loop through the rows of data
                  while ( have_rows('slideshow_item') ) : the_row();
                    $image = get_sub_field('image');
                    $title = get_sub_field('title');
                    $summary = get_sub_field('summary');
                    $link_to = get_sub_field('link_to');
              ?>
                  <a href="#" title="<?php echo $title; ?>"><?php echo $i; ?></a>

              <?php
                    $i++;
                  endwhile;
              ?>
              </div>
            </div>
          </div>
          <!--  end WOWSlider -->
      <?php
        endif;
      ?>

    </section>
    <!-- end front page header featured area -->

    <!-- page content area -->
    <section id="content-homepage">
      <?php
        if( have_rows('block_item') ):
          $i = 0;
        // loop through the rows of data
          while ( have_rows('block_item') ) : the_row();
            $block_title = get_sub_field('block_title');
            $block_summary = get_sub_field('block_summary');
            $read_more = get_sub_field('read_more');

            $button_class = $i == 0 ? ' blue' : ($i == 1 ? ' red' : ' green');
            $col_class = $i == 0 ? 'yellow' : ($i == 1 ? 'green' : 'orange');
            $lazing = $i == 0 ? '<div id="ladybug"></div>' : ($i == 1 ? '<div id="butterfly"></div>' : '');
      ?>
        <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
          <div id="col-<?php echo $col_class; ?>">
            <?php echo $lazing; ?>
            <h2><?php echo $block_title; ?></h2>
            <p><?php echo $block_summary; ?></p>
            <a href="<?php echo $read_more['link']; ?>" class="button<?php echo $button_class; ?>">
              <?php echo $read_more['text']; ?>
            </a>
          </div>
        </div>
      <?php
            $i++;
          endwhile;
        endif;
      ?>
    </section>
    <!-- end page content area -->

    <div class="clearfix"></div>
  </div>
  <!-- end #wrapper -->

<?php 
  get_footer();
?>