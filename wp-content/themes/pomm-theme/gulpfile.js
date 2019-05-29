
var gulp 				= require('gulp'),
	sass 					= require('gulp-sass'),
	autoprefixer 	= require('gulp-autoprefixer'),
	concat 				= require('gulp-concat'),
	uglify 				= require('gulp-uglify'),
	jshint 				= require('gulp-jshint'),
	cssnano 			= require('gulp-cssnano'),
	rename 				= require('gulp-rename'),
	babel 				= require('gulp-babel'),
	wait          = require('gulp-wait'),
	browserSync 	= require('browser-sync').create();

var paths = {
	bundles	: './dist/bundles',
	min			: './dist/min',
	fonts		: './dist/fonts',
	img			: './dist/img',

	js 			: './src/js',
	scss		: './src/scss',
	temp		: './src/temp',

	node		: './node_modules',
	thirty		: './src/thirty'
};

gulp.task( 'copy_assets', function() {
  // return gulp.src( paths.node + '/font-awesome/fonts/*.{ttf,woff,woff2,eot,svg}' )
  //   .pipe(gulp.dest(paths.fonts));
});

gulp.task('vendor_css', function () {
	return gulp.src([
			paths.thirty + '/css/bootstrap.css',
			paths.thirty + '/css/font-awesome.css',
		])
		.pipe(concat('vendor.css'))
		.pipe(gulp.dest(paths.bundles))
		.pipe(rename('vendor.min.css'))
		.pipe(cssnano({zindex: false}))
		.pipe(gulp.dest(paths.min));
});

gulp.task('sass', function () {
	return gulp.src([
			paths.scss + '/*.scss'
		])
		.pipe(wait(1000))
		.pipe(sass({
			outputStyle: 'expanded',
			indentType: 'space',
			indentWidth: 2
		}))
		.pipe(autoprefixer({
			browsers: ['last 10 versions']
		}))
		.pipe(concat('style.css'))
		.pipe(gulp.dest(paths.bundles))
		.pipe(rename('style.min.css'))
		.pipe(cssnano({zindex: false}))
		.pipe(gulp.dest(paths.min));
});

gulp.task('vendor_js', function () {
	return gulp.src([
			paths.thirty + '/js/bootstrap.min.js',
			paths.thirty + '/js/jquery.prettyPhoto.js',
		])
		.pipe(concat('vendor.js'))
		.pipe(gulp.dest(paths.bundles))
		.pipe(rename('vendor.min.js'))
		.pipe(uglify())
		.pipe(gulp.dest(paths.min));
});

gulp.task('jshint', function () {
	return gulp.src(paths.js + '/*.js')
		.pipe(jshint({
			esversion: 6
		}))
		.pipe(jshint.reporter('default'));
});

gulp.task('babeljs', ['jshint'], function () {
	return gulp.src( paths.js + '/*.js' )
		.pipe(babel())
		.pipe(gulp.dest( paths.temp + '/babeljs' ));
});

gulp.task('js', ['babeljs'], function () {
	return gulp.src([
			paths.temp + '/babeljs/*.js'
		])
		.pipe(concat('script.js'))
		.pipe(gulp.dest(paths.bundles))
		.pipe(rename('script.min.js'))
		.pipe(uglify())
		.pipe(gulp.dest(paths.min));
});

/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/

var tasks = ['copy_assets', 'vendor_js', 'vendor_css', 'jshint', 'babeljs', 'js', 'sass'];

var main = function() {

	// Run registerd tasks
	gulp.watch([
		paths.js + '/*.js',
		paths.js + '/*/*.js',
		paths.js + '/*/*/*.js'
	], {cwd: './'}, ['js']);

	gulp.watch([
		paths.scss + '/*.scss',
		paths.scss + '/*/*.scss',
		paths.scss + '/*/*/*.scss'
	], {cwd: './'}, ['sass']);

	gulp.watch([
		'./*.php',
		'./*/*.php',
		'./*/*/*.php',
		paths.bundles + '/*.{js,css}'
	])
	.on('change', browserSync.reload);

};

gulp.task('default', tasks, main);
gulp.task('watch', tasks, main);