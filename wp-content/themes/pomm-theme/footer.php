      <footer>
        <div class="footer-menu"></div>
        <div class="footer-bottom">
          <div class="container">
            <div class="col-lg-12 col-md-12">
              <?php
                $copyright = get_field('footer_copyright', 'option');
                echo str_replace("{year}", date('Y'), $copyright);
              ?>
            </div>
          </div>
        </div>
      </footer>

    </div>

    <?php wp_footer(); ?>

    <?php the_field('code_before_body_closing', 'option') ?>

  </body>

</html>