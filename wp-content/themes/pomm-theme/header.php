<!DOCTYPE html>
<html <?php language_attributes() ?>>

<head>

  <?php get_template_part( 'template-parts/head-html' ) ?>

</head>

  <body ontouchstart="" <?php body_class() ?>>

    <?php the_field('code_after_body_opening', 'option') ?>
    
    <div class="container" id="wrapper">
      <!-- header -->
      <header>
        <div class="logo">
          <?php the_custom_logo(); ?>
        </div>
        <nav role="navigation">
          <!-- Brand and toggle get grouped for better mobile display -->
          <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
              <span class="sr-only">Toggle navigation</span>
              <span class="fa">&#xf0c9;</span>
            </button>
          </div>

          <!-- Collect the nav links, forms, and other content for toggling -->
          <div class="collapse navbar-collapse navbar-ex1-collapse">
            <?php wp_nav_menu( array( 'menu' => 'main-menu' ) ); ?>
          </div><!-- /.navbar-collapse -->
          <div id="sun"></div>

        </nav>
        <div class="clearfix"></div>
      </header>
      <!-- end header -->