<?php
  get_header();
?>
    <!-- page content area -->
		<section id="content" class="col-lg-7 col-md-8 col-sm-12">
      <div class="cloud">
        <h1>Blog</h1>
      </div>

      <div class="content-bg">
        <h2 class="entry-title post-title"><?php the_title(); ?></h2>
        <?php 
          if ( have_posts() ) : 
            while ( have_posts() ) : the_post();
              the_content();
            endwhile;
          endif;
        ?>
        <div class="action-mod">
          <a href="" class="prev button blue">Quay lại</a>
        </div>
      </div>
        
    </section>
    <!-- end page content area -->

    <div class="clearfix"></div>
  </div>
  <!-- end #wrapper -->

<?php 
  get_footer();
?>