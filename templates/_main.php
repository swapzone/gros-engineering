<?php namespace ProcessWire;

/**
 * _main.php
 * Main markup file (multi-language)

 * MULTI-LANGUAGE NOTE: Please see the README.txt file
 *
 * This file contains all the main markup for the site and outputs the regions 
 * defined in the initialization (_init.php) file. These regions include: 
 * 
 *   $title: The page title/headline 
 *   $content: The markup that appears in the main content/body copy column
 * 
 * Of course, you can add as many regions as you like, or choose not to use
 * them at all! This _init.php > [template].php > _main.php scheme is just
 * the methodology we chose to use in this particular site profile, and as you
 * dig deeper, you'll find many others ways to do the same thing. 
 * 
 * This file is automatically appended to all template files as a result of 
 * $config->appendTemplateFile = '_main.php'; in /site/config.php. 
 *
 * In any given template file, if you do not want this main markup file 
 * included, go in your admin to Setup > Templates > [some-template] > and 
 * click on the "Files" tab. Check the box to "Disable automatic append of
 * file _main.php". You would do this if you wanted to echo markup directly 
 * from your template file or if you were using a template file for some other
 * kind of output like an RSS feed or sitemap.xml, for example. 
 */
 
$headerHeight = ($smallHeader == true) ? 280 : 515;
$menuClass = ($smallHeader == true) ? '' : 'active';
?>

<!DOCTYPE html>
<html lang="<?php echo _x('en', 'HTML language code'); ?>" class="theme-color-27a79a theme-skin-light">
<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	
	<title><?php echo $title; ?></title>
	<meta name="description" content="<?php echo $page->summary; ?>" />
	
	<!--<link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Fredoka+One">
	<link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Open+Sans:300,300italic,400,400italic,600,600italic,700,700italic,800,800italic">-->
	
    <link rel="stylesheet" type="text/css" href="<?php echo $config->urls->templates?>fonts/map-icons/css/map-icons.min.css">
    <link rel="stylesheet" type="text/css" href="<?php echo $config->urls->templates?>fonts/icomoon/style.css">
	
	<link rel="stylesheet" type="text/css" href="<?php echo $config->urls->templates?>scripts/plugins/jquery.bxslider/jquery.bxslider.css">
    <link rel="stylesheet" type="text/css" href="<?php echo $config->urls->templates?>scripts/plugins/jquery.customscroll/jquery.mCustomScrollbar.min.css">
    <link rel="stylesheet" type="text/css" href="<?php echo $config->urls->templates?>scripts/plugins/jquery.fancybox/jquery.fancybox.css">
    <link rel="stylesheet" type="text/css" href="<?php echo $config->urls->templates?>scripts/plugins/jquery.owlcarousel/owl.carousel.css">

	
	<link rel="stylesheet" type="text/css" href="<?php echo $config->urls->templates?>styles/style.css" />
	<link rel="stylesheet" type="text/css" href="<?php echo $config->urls->templates?>styles/custom.css" />
    <link rel="stylesheet" type="text/css" href="<?php echo $config->urls->templates?>colors/teal.css" />
	
	<!--<script type="text/javascript" src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	<script type="text/javascript" src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>-->
	<script type="text/javascript" src="<?php echo $config->urls->templates?>/scripts/libs/modernizr.js"></script>

	<?php	
	// handle output of 'hreflang' link tags for multi-language
	// this is good to do for SEO in helping search engines understand
	// what languages your site is presented in	
	foreach($languages as $language) {
		// if this page is not viewable in the language, skip it
		if(!$page->viewable($language)) continue;
		// get the http URL for this page in the given language
		$url = $page->localHttpUrl($language); 
		// hreflang code for language uses language name from homepage
		$hreflang = $homepage->getLanguageValue($language, 'name'); 
		// output the <link> tag: note that this assumes your language names are the same as required by hreflang. 
		echo "\n\t<link rel='alternate' hreflang='$hreflang' href='$url' />";
	}	
	?>
</head>
<body class="header-has-img loading">
	<div class="mobile-nav">
        <button class="btn-mobile mobile-nav-close"><i class="rsicon rsicon-close"></i></button>
        <div class="mobile-nav-inner">
            <nav id="mobile-nav" class="nav">
                <ul class="clearfix">
                    <li><a href="<?php echo $sub_directory; ?>/#about"><?php echo _x('About', 'Menu entry'); ?></a></li>
                    <li><a href="<?php echo $sub_directory; ?>/#skills"><?php echo _x('Skills', 'Menu entry'); ?></a></li>            
                    <li><a href="<?php echo $sub_directory; ?>/#experience"><?php echo _x('Experience', 'Menu entry'); ?></a></li>
                    <li><a href="<?php echo $sub_directory; ?>/#blog"><?php echo _x('Blog', 'Menu entry'); ?></a></li>
					<li><a href="<?php echo $sub_directory; ?>/#references"><?php echo _x('References', 'Menu entry'); ?></a></li>
                    <li><a href="<?php echo $sub_directory; ?>/#contact"><?php echo _x('Contact', 'Menu entry'); ?><span></span></a></li>
                </ul>
            </nav>
        </div>
    </div>
    <!-- .mobile-nav -->
    
    <div class="sidebar sidebar-fixed">
        <button class="btn-sidebar btn-sidebar-close"><i class="rsicon rsicon-close"></i></button>
        <div class="widget-area">
            <aside class="widget widget-profile">
                <div class="profile-info">
                    <h2 class="profile-title">Gros Engineering</h2>
                        <h3 class="profile-position"><?php echo _x('Professional Software Development', 'Blog subtitle'); ?></h3>
                </div>
            </aside>
            <!-- .widget-profile -->
					
			<aside class="widget widget-language">
				<ul class="languages"><?php
					foreach($languages as $language) {
						if(!$page->viewable($language)) continue; // is page viewable in this language?
						if($language->id == $user->language->id) {
							echo "<li class='current'>";
						} else {
							echo "<li>";
						}
						$url = $page->localUrl($language); 
						$hreflang = $homepage->getLanguageValue($language, 'name'); 
						echo "<a hreflang='$hreflang' href='$url'>$language->title</a></li>";
					}
				?></ul>
			</aside>
			<!-- .widget-language -->
	
            <aside class="widget widget_search">
                <h2 class="widget-title"><?php echo __('Search'); ?></h2>
                <form class="search-form" action="<?php echo $pages->get('template=search')->url; ?>" method="get">
                    <label class="ripple">
                        <span class="screen-reader-text"><?php echo __('Search for'); ?>:</span>
                        <input class="search-field" type="search" name="q" placeholder="<?php echo __('Search'); ?>">
                    </label>
                    <input type="submit" name="submit" class="search-submit" value="<?php echo _x('Search', 'Button to trigger the search'); ?>">
                </form>
            </aside>
            <!-- .widget_search -->
    
            <aside class="widget widget_contact">
                <h2 class="widget-title"><?php echo __('Contact Me'); ?></h2>
                <form class="rsForm" action="<?php echo $sub_directory; ?>/contact" method="post">
                    <div class="input-field">
                        <label><?php echo __('Name'); ?></label>
                        <input type="text" name="rsName" required />
                        <span class="line"></span>
                    </div>
    
                    <div class="input-field">
                        <label><?php echo __('Email'); ?></label>
                        <input type="email" name="rsEmail" required />
                        <span class="line"></span>
                    </div>
    
                    <div class="input-field">
                        <label><?php echo _x('Subject', 'Email subject'); ?></label>
                        <input type="text" name="rsSubject" />
                        <span class="line"></span>
                    </div>
    
                    <div class="input-field">
                        <label><?php echo __('Message'); ?></label>
                        <textarea rows="4" name="rsMessage" required></textarea>
                        <span class="line"></span>
                    </div>
    
                    <span class="btn-outer btn-primary-outer ripple">
                        <input class="rsFormSubmit btn btn-lg btn-primary" type="submit" value="<?php echo _x('Send', 'Button to send the message'); ?>">
                    </span>
                </form>
            </aside>
            <!-- .widget_contact -->
        </div>
        <!-- .widget-area -->
    </div>
    <!-- .sidebar -->

	<div class="wrapper">
		<header class="header">
            <div class="head-bg" style="background-image: url(<?php echo $config->urls->templates?>img/uploads/rs-cover.jpg); height: <?php echo $headerHeight; 	?>px"></div>
        
            <div class="head-bar">
                <div class="head-bar-inner">
                    <div class="row">
                        <div class="col-sm-3 col-xs-6">
                           	<a class="head-logo" href="<?php echo $sub_directory; ?>/"><img src="<?php echo $config->urls->templates?>img/logo.png" alt="Gros Engineering" style="height: 22px; margin-top: 12px;"/></a>
                        </div>
        
                        <div class="col-sm-9 col-xs-6">
                            <div class="nav-wrap">
                                <nav id="nav" class="nav">
									<ul class="clearfix">
										<li class="<?php echo $menuClass; ?>"><a href="<?php echo $sub_directory; ?>/#about"><?php echo _x('About', 'Menu entry'); ?></a></li>
										<li><a href="<?php echo $sub_directory; ?>/#skills"><?php echo _x('Skills', 'Menu entry'); ?></a></li>
										<li><a href="<?php echo $sub_directory; ?>/#experience"><?php echo _x('Experience', 'Menu entry'); ?></a></li>
										<li><a href="<?php echo $sub_directory; ?>/#blog"><?php echo _x('Blog', 'Menu entry'); ?></a></li>
										<li><a href="<?php echo $sub_directory; ?>/#references"><?php echo _x('References', 'Menu entry'); ?></a> </li>
										<li><a href="<?php echo $sub_directory; ?>/#contact"><?php echo _x('Contact', 'Menu entry'); ?><span></span></a></li>
									</ul>
								</nav>
        
                                <button class="btn-mobile btn-mobile-nav"><?php echo __('Menu'); ?></button>
                                <button class="btn-sidebar btn-sidebar-open"><i class="rsicon rsicon-menu"></i></button>
                            </div>
                            <!-- .nav-wrap -->
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <!-- .header -->
        
        <div class="content">
			<div class="container">
				<!-- main content -->
				<?php echo $content; ?>		
			</div>
			
			<!-- footer -->
			<footer class="footer">
				<div class="footer-social">
					<ul class="social">
						<li><a class="ripple-centered" href="https://github.com/swapzone" target="_blank"><i class="rsicon rsicon-github"></i></a></li>
						<li><a class="ripple-centered" href="https://twitter.com/swapzone" target="_blank"><i class="rsicon rsicon-twitter"></i></a></li>
						<li><a class="ripple-centered" href="skype:bring-and-buy?call" target="_blank"><i class="rsicon rsicon-skype"></i></a></li>
						<li><a class="ripple-centered" href="https://de.linkedin.com/in/saschagros" target="_blank"><i class="rsicon rsicon-linkedin"></i></a></li>
						<li><a class="ripple-centered" href="https://www.xing.com/profile/Sascha_Gros" target="_blank"><i class="rsicon rsicon-xing"></i></a></li>
					</ul>	
				</div>
				<div class="link-legal">
					<a href="<?php echo $sub_directory; ?>/legal"><?php echo _x('Legal', 'Link to the "Impressum"'); ?></a>
					<p>
						<a href='http://processwire.com'><?php echo __('Powered by ProcessWire'); ?></a>
					</p>
				</div>
			</footer>
		</div>
	</div>
	
	<a class="btn-scroll-top" href="#"><i class="rsicon rsicon-arrow-up"></i></a>
    <div id="overlay"></div>
    <div id="preloader">
        <div class="preload-icon"><span></span><span></span></div>
        <div class="preload-text"><?php echo _x('Loading', 'Loading animation text'); ?> ...</div>
    </div>
	
	<!--<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAW0ZucZxbWVi3vp-JxPhJkLXlN61y8rKs"></script>
	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1/jquery.js"></script>-->
    <script type="text/javascript" src="<?php echo $config->urls->templates?>scripts/libs/jquery.js"></script>
    <script type="text/javascript" src="<?php echo $config->urls->templates?>scripts/libs/googlemapsapi.js"></script>
    <script type="text/javascript" src="<?php echo $config->urls->templates?>fonts/map-icons/js/map-icons.min.js"></script>
    <script type="text/javascript" src="<?php echo $config->urls->templates?>scripts/plugins/imagesloaded.pkgd.min.js"></script>
    <script type="text/javascript" src="<?php echo $config->urls->templates?>scripts/plugins/jquery.appear.min.js"></script>
	<script type="text/javascript" src="<?php echo $config->urls->templates?>scripts/plugins/jquery.onepagenav.min.js"></script>
	<script type="text/javascript" src="<?php echo $config->urls->templates?>scripts/plugins/isotope.pkgd.min.js"></script>
	<script type="text/javascript" src="<?php echo $config->urls->templates?>scripts/plugins/jquery.customscroll/jquery.mCustomScrollbar.concat.min.js"></script>
    <script type="text/javascript" src="<?php echo $config->urls->templates?>scripts/plugins/jquery.bxslider/jquery.bxslider.min.js"></script>
    <script type="text/javascript" src="<?php echo $config->urls->templates?>scripts/plugins/jquery.fancybox/jquery.fancybox.pack.js"></script>
    <script type="text/javascript" src="<?php echo $config->urls->templates?>scripts/plugins/jquery.fancybox/helpers/jquery.fancybox-media.js"></script>
    <script type="text/javascript" src="<?php echo $config->urls->templates?>scripts/plugins/jquery.owlcarousel/owl.carousel.min.js"></script>
	<script type="text/javascript" src="<?php echo $config->urls->templates?>scripts/options.js"></script>
	<script type="text/javascript" src="<?php echo $config->urls->templates?>scripts/site.js"></script>
</body>
</html>
