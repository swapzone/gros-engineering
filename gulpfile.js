'use strict';

// include gulp
const gulp = require('gulp');

// include core modules
const path 	= require('path');

// include gulp plugin loader
const $ = require('gulp-load-plugins')({ lazy: true });

/****************************************************************************************************/
/* SETTING UP DEVELOPMENT ENVIRONMENT                                                               */
/****************************************************************************************************/

// the title and icon that will be used for notifications
const notifyInfo = {
	title: 'Gulp',
	icon: path.join(__dirname, 'gulp.png')
};

// error notification settings for plumber
const plumberErrorHandler = {
	errorHandler: $.notify.onError({
		title: notifyInfo.title,
		icon: notifyInfo.icon,
		message: "Error: <%= error.message %>"
	})
};

/****************************************************************************************************/
/* DEVELOPMENT TASKS                                                                                */
/****************************************************************************************************/

// copy font files and compile styles
gulp.task('build:styles', function() {
	return gulp.src([
			'templates/fonts/map-icons/map-icons.css',
			'templates/fonts/icomoon/style.css',
			'templates/scripts/plugins/jquery.bxslider/jquery.bxslider.css',
			'templates/scripts/plugins/jquery.customscroll/jquery.mCustomScrollbar.min.css',
			'templates/scripts/plugins/jquery.fancybox/jquery.fancybox.css',
			'templates/scripts/plugins/jquery.owlcarousel/owl.carousel.css',
			'templates/styles/style.css',
			'templates/styles/custom.css',
			'templates/colors/teal.css'
		])
		.pipe($.cleanCss())
		.pipe($.concat('style.css'))
		.pipe(gulp.dest('build/'));
});

// process and compile all script files
gulp.task('build:scripts', function() {
	return gulp.src([
		'templates/fonts/map-icons/map-icons.js',
		'templates/scripts/libs/modernizr.js',
		'templates/scripts/plugins/imagesloaded.pkgd.min.js',
		'templates/scripts/plugins/jquery.appear.min.js',
		'templates/scripts/plugins/jquery.onepagenav.min.js',
		'templates/scripts/plugins/isotope.pkgd.min.js',
		'templates/scripts/plugins/jquery.customscroll/jquery.mCustomScrollbar.concat.min.js',
		'templates/scripts/plugins/jquery.bxslider/jquery.bxslider.min.js',
		'templates/scripts/plugins/jquery.fancybox/jquery.fancybox.pack.js',
		'templates/scripts/plugins/jquery.fancybox/helpers/jquery.fancybox-media.js',
		'templates/scripts/plugins/jquery.owlcarousel/owl.carousel.min.js',
		'templates/scripts/options.js',
		'templates/scripts/site.js'
		])
		.pipe($.minify({
			ignoreFiles: ['site.js']
		}))
		.pipe($.concat('script.js'))
		.pipe(gulp.dest('build/'));
});

/****************************************************************************************************/
/* GULP TASK SUITES                                                                                 */
/****************************************************************************************************/

// list the available gulp tasks
gulp.task('help', $.taskListing);

// build front end for production environment (minify & uglify source files)
gulp.task('build', ['build:scripts', 'build:styles']);