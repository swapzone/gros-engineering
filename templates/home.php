<?php namespace ProcessWire;

// find all posts
$posts = $pages->find("template=post, sort=-date, limit=2");
$blog_posts = renderPostTiles($posts, 2);

ob_start(); ?>

<section id="about" class="section section-about">
	<div class="animate-up">
		<div class="section-box">
			<div class="profile">
				<div class="row">
					<div class="col-xs-5">
						<div class="profile-photo"><img src="<?php echo $config->urls->templates ?>img/uploads/profile_golden_gate.jpg" alt="Sascha Gros"/></div>
					</div>
					<div class="col-xs-7">
						<div class="profile-info">
							<div class="profile-preword"><span><?php echo _x('Hello', 'Profile section'); ?></span></div>
                            <h1 class="profile-title"><span><?php echo _x('I\'m', 'Profile section'); ?></span> Sascha Gros</h1>

							<h2 class="profile-position"><?php echo _x('Full Stack Web Developer and Startup Lover', 'Profile section'); ?></h2></div>
							<ul class="profile-list">
								<li class="clearfix">
									<strong class="title"><?php echo _x('Motto', 'Profile section'); ?></strong>
									<span class="cont"><?php echo _x('Everything should be made as simple as possible, but not simpler.', 'Profile section'); ?></span>
								</li>
								<li class="clearfix">
									<strong class="title"><?php echo _x('Address', 'Profile section'); ?></strong>
									<span class="cont">Trettachstraße 1, 70327 Stuttgart, DE</span>
								</li>
								<li class="clearfix">
									<strong class="title"><?php echo _x('Email', 'Profile section'); ?></strong>
									<span class="cont"><a href="mailto:info@gros-engineering.de">info@gros-engineering.de</a></span>
								</li>
								<li class="clearfix">
									<strong class="title"><?php echo _x('Phone', 'Profile section'); ?></strong>
									<span class="cont"><a href="tel:+491788171987">+49 178 8171987</a></span>
								</li>
							</ul>
					</div>
				</div>
			</div>
			<div class="profile-social">
				<ul class="social">
					<li><a class="ripple-centered" href="https://github.com/swapzone" target="_blank"><i class="rsicon rsicon-github"></i></a></li>
					<li><a class="ripple-centered" href="https://twitter.com/swapzone" target="_blank"><i class="rsicon rsicon-twitter"></i></a></li>
					<li><a class="ripple-centered" href="skype:bring-and-buy?call" target="_blank"><i class="rsicon rsicon-skype"></i></a></li>
					<li><a class="ripple-centered" href="https://de.linkedin.com/in/saschagros" target="_blank"><i class="rsicon rsicon-linkedin"></i></a></li>
					<li><a class="ripple-centered" href="https://www.xing.com/profile/Sascha_Gros" target="_blank"><i class="rsicon rsicon-xing"></i></a></li>
				</ul>
			</div>
		</div>

		<div class="section-txt-btn">
			<!-- TODO include CV -->
			<!--<p><a class="btn btn-lg btn-border ripple" target="_blank" href="/static/CV_Sascha_Gros.pdf">Download Resume</a></p>-->
			<p>
				<?php echo _x('Hello! I’m Sascha Gros. Full stack web developer and data scientist.
					Specializing in Node.js and RESTful API design. Living test-driven development.
					Experienced with all stages of the development cycle in agile environments.
					Well-versed in numerous programming languages and web frameworks.
					Bringing web technology to all fields of your software needs.', 'Profile section'); ?>
			</p>
		</div>
	</div>	
</section><!-- #about -->
										
<section id="skills" class="section section-skills">
	<div class="animate-up">
		<h2 class="section-title"><?php echo _x('Professional Skills', 'Profile section'); ?></h2>
		<div class="section-box">
			<div class="row">							
				<div class="col-sm-6">
					<div class="progress-bar">
						<div class="bar-data">
							<span class="bar-title">Node.js</span>
							<span class="bar-value">90%</span>
						</div>
						<div class="bar-line">
							<span class="bar-fill" data-width="90%"></span>
						</div>
					</div>
				</div>
				
				<div class="col-sm-6">
					<div class="progress-bar">
						<div class="bar-data">
							<span class="bar-title">AngularJS</span>
							<span class="bar-value">100%</span>
						</div>
						<div class="bar-line">
							<span class="bar-fill" data-width="100%"></span>
						</div>
					</div>
				</div>
			</div>
			
			<div class="row">							
				<div class="col-sm-6">
					<div class="progress-bar">
						<div class="bar-data">
							<span class="bar-title">HTML & CSS</span>
							<span class="bar-value">90%</span>
						</div>
						<div class="bar-line">
							<span class="bar-fill" data-width="90%"></span>
						</div>
					</div>
				</div>
				
				<div class="col-sm-6">
					<div class="progress-bar">
						<div class="bar-data">
							<span class="bar-title">Javascript / Typescript</span>
							<span class="bar-value">90%</span>
						</div>
						<div class="bar-line">
							<span class="bar-fill" data-width="90%"></span>
						</div>
					</div>
				</div>
			</div>
			
			<div class="row">							
				<div class="col-sm-6">
					<div class="progress-bar">
						<div class="bar-data">
							<span class="bar-title">SharePoint</span>
							<span class="bar-value">70%</span>
						</div>
						<div class="bar-line">
							<span class="bar-fill" data-width="70%"></span>
						</div>
					</div>
				</div>
				
				<div class="col-sm-6">
					<div class="progress-bar">
						<div class="bar-data">
							<span class="bar-title">Electron.js</span>
							<span class="bar-value">85%</span>
						</div>
						<div class="bar-line">
							<span class="bar-fill" data-width="85%"></span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>	
</section><!-- #skills -->
						
 <section id="clients" class="section section-clients">
	<div class="animate-up">

		<div class="clients-carousel">
			<div class="client-logo">
				<img src="<?php echo $config->urls->templates ?>img/uploads/logos/logo-envato.png" title="envato" alt="envato"/>
			</div>

			<div class="client-logo">
				<img src="<?php echo $config->urls->templates ?>img/uploads/logos/logo-angularjs.png" title="angular js" alt="angular js"/>
			</div>

			<div class="client-logo">
				<img src="<?php echo $config->urls->templates ?>img/uploads/logos/logo-teaspoon.png" title="teaspoon" alt="teaspoon"/>
			</div>

			<div class="client-logo">
				<img src="<?php echo $config->urls->templates ?>img/uploads/logos/logo-wordpress.png" title="wordpress" alt="wordpress"/>
			</div>

			<div class="client-logo">
				<img src="<?php echo $config->urls->templates ?>img/uploads/logos/logo-evernote.png" title="evernote" alt="evernote"/>
			</div>

			<div class="client-logo">
				<img src="<?php echo $config->urls->templates ?>img/uploads/logos/logo-compass.png" title="compass" alt="compass"/>
			</div>

			<div class="client-logo">
				<img src="<?php echo $config->urls->templates ?>img/uploads/logos/logo-bootstrap.png" title="bootstrap" alt="bootstrap"/>
			</div>

			<div class="client-logo">
				<img src="<?php echo $config->urls->templates ?>img/uploads/logos/logo-jasmine.png" title="jasmine" alt="jasmine"/>
			</div>

			<div class="client-logo">
				<img src="<?php echo $config->urls->templates ?>img/uploads/logos/logo-jquery.png" title="jquery" alt="jquery"/>
			</div>
		</div>
	</div>
</section><!-- #technologies -->
						
<section id="experience" class="section section-experience">
	<div class="animate-up">
		<h2 class="section-title"><?php echo __('Work Experience'); ?></h2>

		<div class="timeline">
			<div class="timeline-bar"></div>
			<div class="timeline-inner clearfix">

				<div class="timeline-box timeline-box-left">
					<span class="dot"></span>
					<div class="timeline-box-inner animate-right">
						<span class="arrow"></span>
						<div class="date"><?php echo __('Jun 2014 - Apr 2016'); ?></div>
						<h3><?php echo __('Full Stack Web Developer'); ?></h3>
						<h4>EFEXCON AG, <?php echo __('Switzerland'); ?></h4>
						<p>
							<?php echo __('Working on the business travel startup 1ClickTrips of the EFEXCON AG.
							Responsible for the technology selection, overall architecture and
							implementation of the door-to-door travel management solution.'); ?>
						</p>
					</div>
				</div>

				<div class="timeline-box timeline-box-right">
					<span class="dot"></span>
					<div class="timeline-box-inner animate-left">
						<span class="arrow"></span>
						<div class="date"><?php echo __('Okt 2012 - Apr 2014'); ?></div>
						<h3><?php echo __('Software Developer and Project Manager'); ?></h3>
						<h4>Synapticon GmbH, <?php echo __('Germany'); ?></h4>
						<p>
							<?php echo __('Initially responsible for developing different parts of an online
							development environment for embedded systems, I was then managing a
							project with the goal to create a new operating software for
							ticket vending systems of rail operators.'); ?>
						</p>
					</div>
				</div>

				<div class="timeline-box timeline-box-left">
					<span class="dot"></span>
					<div class="timeline-box-inner animate-right">
						<span class="arrow"></span>
						<div class="date"><?php echo __('Oct 2009 - Sep 2012'); ?></div>
						<h3><?php echo __('Student and Software Developer'); ?></h3>
						<h4>Hewlett Packard - <?php echo __('Germany and Ireland'); ?></h4>
						<p>
							<?php echo __('As a dual student with Hewlett Packard I did several short projects
							using a lot of different tools and programming languages. My bachelor\'s
							thesis was about SharePoint and the implementation of a filing system
							in the public sector.'); ?>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</section><!-- #experience -->
				
<section id="blog" class="section section-blog">
	<div class="animate-up">
		<h2 class="section-title"><?php echo __('From The Blog'); ?></h2>
		<div class="section-subtitle">
			<a href="<?php echo $sub_directory; ?>/blog"><?php echo _x('More', 'Read more'); ?>...</a>
		</div>

		<div class="blog-grid">
			<div class="grid-sizer"></div>
			<?php echo $blog_posts; ?>
		</div>
	</div>
</section><!-- #blog -->

<section id="references" class="section section-references">
	<div class="animate-up">
		<h2 class="section-title"><?php echo __('References'); ?></h2>
		<div class="section-box">
			<ul class="ref-slider">
				<li>
					<div class="ref-box">
						<div class="person-speech">
							<p>
								<?php echo __('Sascha is a very talented software developer and a great team player. I have had the pleasure to work with
								him on multiple projects and he has my highest recommendation. He combines the understanding of how to deliver high
								quality software with the understanding of how a business can deliver a product in time.'); ?>
							</p>
						</div>
						<div class="person-info clearfix">
							<img class="person-img" src="<?php echo $config->urls->templates ?>img/uploads/marcel.jpg" alt="Headshot">
							<div class="person-name-title">
								<span class="person-name">Marcel Büsing</span>
								<span class="person-title"><?php echo __('Developer at Daimler AG'); ?></span>
							</div>
						</div>
					</div>
				</li>
				<li>
					<div class="ref-box">
						<div class="person-speech">
							<p>
								<?php echo __('Sascha is one of the few people I know that is able to instantly grab rough ideas and transform them into
								concrete prototypes and solutions. His profound understanding of software architectures and agile software
								engineering makes him an important driver and brain in any exciting innovation project.
								Don\'t bother him with boring business apps. Challenge him with SH/SW and IoT integrations.'); ?>
							</p>
						</div>
						<div class="person-info clearfix">
							<img class="person-img" src="<?php echo $config->urls->templates ?>img/uploads/ruediger.jpg" alt="Headshot">
							<div class="person-name-title">
								<span class="person-name">Rüdiger Gros</span>
								<span class="person-title"><?php echo __('CEO at EFEXCON AG'); ?></span>
							</div>
						</div>
					</div>
				</li>
				<li>
					<div class="ref-box">
						<div class="person-speech">
							<p>
								<?php echo __('Sascha is an uncomplicated, dedicated, very reliable and creative partner for sophisticated software solutions.
								He combines a great technical know-how with an even greater willingness to develop and deliver an amazing product
								with a high practical user value. It was a convincing, fair and trustful cooperation. Thank you!'); ?>
							</p>
						</div>
						<div class="person-info clearfix">
							<img class="person-img" src="<?php echo $config->urls->templates ?>img/uploads/vicky.jpg" alt="Headshot">
							<div class="person-name-title">
								<span class="person-name">Victoria Ott</span>
								<span class="person-title"><?php echo __('Independent Osteopath'); ?></span>
							</div>
						</div>
					</div>
				</li>
			</ul>
			<div class="ref-slider-nav">
				<span id="ref-slider-prev" class="slider-prev"></span>
				<span id="ref-slider-next" class="slider-next"></span>
			</div>
		</div>
	</div>	
</section><!-- #references -->																								

<section id="portfolio" class="section section-portfolio">
	<div class="animate-up">
		<h2 class="section-title"><?php echo __('Portfolio'); ?></h2>

		<div class="filter">
			<div class="filter-inner">
				<div class="filter-btn-group">
					<button data-filter="*"><?php echo _x('All', 'Filters'); ?></button>
					<button data-filter=".web"><?php echo _x('Web', 'Filters'); ?></button>
					<button data-filter=".native"><?php echo _x('Native', 'Filters'); ?></button>
					<button data-filter=".embedded"><?php echo _x('Embedded', 'Filters'); ?></button>
				</div>
				<div class="filter-bar">
					<span class="filter-bar-line"></span>
				</div>
			</div>
		</div>

		<div class="grid">
			<div class="grid-sizer"></div>
			
			<div class="grid-item size11 web">
				<div class="grid-box">
					<figure class="portfolio-figure">
						<img src="<?php echo $config->urls->templates ?>img/uploads/portfolio/1clicktrips/travel.jpg" alt="Travel image"/>
						<figcaption class="portfolio-caption">
							<div class="portfolio-caption-inner">
								<h3 class="portfolio-title"><?php echo __('1ClickTrips Business Travel'); ?></h3>
								<h4 class="portfolio-cat"><?php echo __('Web'); ?></h4>

								<div class="btn-group">
									<!--<a class="btn-link" href="http://www.google.com" target="_blank"><i class="rsicon rsicon-link"></i></a>-->
									<a class="portfolioFancybox btn-zoom" data-fancybox-group="portfolioFancybox1" href="#portfolio1-inline"><i class="rsicon rsicon-eye"></i></a>
								</div>
							</div>
						</figcaption>
					</figure>

					<div id="portfolio1-inline" class="fancybox-inline-box">
						<div class="inline-cont">
							<h2 class="inline-title"><?php echo __('1ClickTrips - Business travel booking of tomorrow. Today.'); ?></h2>
							<div class="inline-text">
								<p>
									<?php echo __('1ClickTrips is a door-to-door travel tool focusing on events and appointments. The idea is simple:
									Give your event data to 1ClickTrips and it will figure out the best options to get there in time
									without wasting valuable time and money.'); ?>
								</p>
								<p>
									<?php echo __('The cool part of 1ClickTrips is the process of creating your trips. It allows you to pick from the best options
									to get to the event and then add a hotel that is located on your trip path and won\'t put any extra effort
									on getting there.'); ?>
								</p>
								<p>
									<?php echo __('Once you selected your trip and hotel you can book everything and then take it with you on your mobile,
									including all tickets, maps and additional information to help you get around.'); ?>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div><!-- .grid-item -->			
		
			<div class="grid-item size11 native">
				<div class="grid-box">
					<figure class="portfolio-figure">
						<img src="<?php echo $config->urls->templates ?>img/uploads/portfolio/time-tracker/stempeln.jpg" alt=""/>
						<figcaption class="portfolio-caption">
							<div class="portfolio-caption-inner">
								<h3 class="portfolio-title"><?php echo __('Time Tracker Plugin for Chrome'); ?></h3>
								<h4 class="portfolio-cat"><?php echo __('Native'); ?></h4>

								<div class="btn-group">
									<!--<a class="btn-link" href="http://www.google.com" target="_blank"><i class="rsicon rsicon-link"></i></a>-->
									<a class="portfolioFancybox btn-zoom" data-fancybox-group="portfolioFancybox2" href="#portfolio2-inline"><i class="rsicon rsicon-eye"></i></a>
								</div>
							</div>
						</figcaption>
					</figure>
					
					<div id="portfolio2-inline" class="fancybox-inline-box">
						<div class="inline-cont">
							<h2 class="inline-title"><?php echo __('Time Tracker Plugin for Chrome'); ?></h2>
							<div class="inline-text">
								<p>
									<?php echo __('The requirements were easy: Be able to track my time out of Chrome, assign each time record with
									either a generic category or with a <a href="https://github.com">Github</a> issue and then store
									it to SharePoint 2013.'); ?>
								</p>
								<p>
									<?php echo __('The challenges have been to keep the plugin\'s UI simple and to handle authentication with Sharepoint
									and Github properly.'); ?>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div><!-- .grid-item -->
			
			<div class="grid-item size11 web">
				<div class="grid-box">
					<figure class="portfolio-figure">
						<img src="<?php echo $config->urls->templates ?>img/uploads/portfolio/rockit/climbing.jpg" alt=""/>
						<figcaption class="portfolio-caption">
							<div class="portfolio-caption-inner">
								<h3 class="portfolio-title"><?php echo __('Rockit Course Administration'); ?></h3>
								<h4 class="portfolio-cat"><?php echo __('Web'); ?></h4>

								<div class="btn-group">
									<!--<a class="btn-link" href="" target="_blank"><i class="rsicon rsicon-link"></i></a>-->
									<a class="portfolioFancybox btn-zoom" data-fancybox-group="portfolioFancybox3" href="#portfolio3-inline"><i class="rsicon rsicon-eye"></i></a>
								</div>
							</div>
						</figcaption>
					</figure>

					<div id="portfolio3-inline" class="fancybox-inline-box">
						<div class="inline-cont">
							<h2 class="inline-title"><?php echo __('Course administration solution for climbing halls'); ?></h2>
							<div class="inline-text">
								<p>
									<?php echo __('A local climbing hall wanted to make the transformation to a digital administration of the
									weekly courses and occupancy of their climbing hall.'); ?>
								</p>
								<p>
									<?php echo __('It was supposed to be a web-based solution that every staff member could access. A role model
									for different types of staff members was needed as well as different views for those different
									roles. They wanted to have a calendar to filter for different event types and the possibility
									for staff members to register for events they are authorized for.'); ?>
								</p>
								<p>
									<?php echo __('Additionally the content of the system must be reflected in the website of the climbing club.
									Interested participants must be able to see which courses are available and also to register
									for a course in case they want to attend. They have to confirm their registration before it
									is valid.'); ?>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div><!-- .grid-item -->

			<div class="grid-item size11 native web">
				<div class="grid-box">
					<figure class="portfolio-figure">
						<img src="<?php echo $config->urls->templates ?>img/uploads/portfolio/my-patients/patient.jpg" alt=""/>
						<figcaption class="portfolio-caption">
							<div class="portfolio-caption-inner">
								<h3 class="portfolio-title"><?php echo __('Patient Administration'); ?></h3>
								<h4 class="portfolio-cat"><?php echo __('Native'); ?></h4>

								<div class="btn-group">
									<!--<a class="btn-link" href="" target="_blank"><i class="rsicon rsicon-link"></i></a>-->
									<a class="portfolioFancybox btn-zoom" data-fancybox-group="portfolioFancybox4" href="#portfolio4-inline"><i class="rsicon rsicon-eye"></i></a>
								</div>
							</div>
						</figcaption>
					</figure>

					<div id="portfolio4-inline" class="fancybox-inline-box">
						<div class="inline-cont">
							<h2 class="inline-title"><?php echo __('Patient Administration for small doctor\'s offices'); ?></h2>
							<div class="inline-text">
								<p>
									<?php echo __('Patient administration solutions are either totally overloaded with functionality nobody needs
									making the whole user experience a hassle. Or they are way too expensive.'); ?>
								</p>
								<p>
									<?php echo __('That was the reason for a client of mine to ask me for an easy-to-use solution that a small doctor\'s
									office can afford. In my opinion this is a problem many physiotherapists and doctors have.
									So I came up with a solution that can be used on all operating systems, be it Windows, OS X or Linux.'); ?>
								</p>
								<p>
									<?php echo __('The solution offers a patient administration section that is fully searchable, a treatment section
									where treatments for patients can be added, edited and invoiced and backup and restore functionality.
									All data is kept locally and won\'t be transferred into the cloud. Since it is module-based, all
									modules can be replaced or more modules can be added to adapt the software to customer needs.'); ?>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div><!-- .grid-item -->

			<div class="grid-item size11 native embedded">
				<div class="grid-box">
					<figure class="portfolio-figure">
						<img src="<?php echo $config->urls->templates ?>img/uploads/portfolio/sun-tracker/solar.jpg" alt=""/>
						<figcaption class="portfolio-caption">
							<div class="portfolio-caption-inner">
								<h3 class="portfolio-title"><?php echo __('Sun Tracker Prototype'); ?></h3>
								<h4 class="portfolio-cat"><?php echo __('Native') . ', ' . __('Embedded'); ?></h4>

								<div class="btn-group">
									<!--<a class="btn-link" href="" target="_blank"><i class="rsicon rsicon-link"></i></a>-->
									<a class="portfolioFancybox btn-zoom" data-fancybox-group="portfolioFancybox5" href="#portfolio5-inline"><i class="rsicon rsicon-eye"></i></a>
								</div>
							</div>
						</figcaption>
					</figure>

					<div id="portfolio5-inline" class="fancybox-inline-box">
						<div class="inline-cont">
							<h2 class="inline-title"><?php echo __('Automated sun tracker prototype to compare different concepts'); ?></h2>
							<div class="inline-text">
								<p>
									<?php echo __('For solar modules there is one big drawback: they only deliver the maximum possible power output when being
									exposed to sunlight in a 90° angle. As soon as the angle differs from that, the output significantly drops.'); ?>
								</p>
								<p>
									<?php echo __('So the question is: would it make sense to continuously adapt the orientation of the solar panels towards the
									sun? We have compare the energy that is consumed by the mechanism that is tracking the sun and moving the panels
									against the energy plus that is gained by moving the panels in contrast to keeping them static.'); ?>
								</p>
								<p>
									<?php echo __('For this project I had to come up with a low-budget sun-tracking sensor and an additional algorithm that
									calculated the position of the sun based on the GPS location of the panel and the theoretical earth orbit
									around the sun. Both concepts have been used to figure out the differences in energy efficiency.'); ?>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div><!-- .grid-item -->
		</div>
		<!--
		<div class="grid-more">
			<span class="ajax-loader"></span>
			<button class="btn btn-border ripple"><i class="rsicon rsicon-add"></i></button>
		</div>
		-->
	</div>	
</section><!-- #portfolio -->

<!--
<section id="text-section" class="section section-text">
	<div class="animate-up animated">
		<h2 class="section-title">Text Section</h2>
		<div class="section-box">
			<p>Hello! I’m Robert Smith and this is custom editor section. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nuncl them Toruk Macto calls to them!</p>
		</div>
	</div>
</section>--><!-- #text-section -->

<!--
<section id="calendar" class="section section-calendar">
	<div class="animate-up">
		<h2 class="section-title">Availability Calendar</h2>

		<div class="calendar-busy" data-weekstart="monday">
			<div class="calendar-today" style="background-image: url('assets/img/uploads/rs-calendar-cover.jpg')">
				<div class="valign-outer">
					<div class="valign-middle">
						<div class="valign-inner">
							<div class="date">
								<span class="day"></span>
								<span class="month"></span>
							</div>
							<div class="week-day"></div>
						</div>
					</div>
				</div>
			</div>

			<div class="calendar-cont">
				<div class="calendar-header">
					<div class="calendar-nav">
						<span class="active-date"><span class="active-month"></span><span class="active-year"></span></span>
						<a class="calendar-prev ripple-centered" title="Prev"><i class="rsicon rsicon-chevron_left"></i></a>
						<a class="calendar-next ripple-centered" title="Next"><i class="rsicon rsicon-chevron_right"></i></a>
					</div>
				</div>

				<table class="calendar-body">
					<thead class="calendar-thead"></thead>
					<tbody class="calendar-tbody"></tbody>
				</table>
				<div class="calendar-busy-note">Sorry. I'm not available on those days</div>
			</div>
		</div>
	</div>	
</section>--><!-- #calendar -->

<section id="contact" class="section section-contact">
	<div class="animate-up">
		<h2 class="section-title"><?php echo __('Contact Me'); ?></h2>

		<div class="row">
			<div class="col-sm-6">
				<div class="section-box contact-form">
					<h3><?php echo __('Feel free to contact me'); ?></h3>
					
					<form class="contactForm" id="contactForm" action="<?php echo $sub_directory; ?>/contact">
						<div class="input-field">
							<input class="contact-name" type="text" name="rsName" required />
							<span class="line"></span>
							<label><?php echo __('Name'); ?></label>
						</div>

						<div class="input-field">
							<input class="contact-email" type="email" name="rsEmail" required />
							<span class="line"></span>
							<label><?php echo __('Email'); ?></label>
						</div>

						<div class="input-field">
							<input class="contact-subject" type="text" name="rsSubject" />
							<span class="line"></span>
							<label><?php echo _x('Subject', 'Email subject'); ?></label>
						</div>

						<div class="input-field">
							<textarea class="contact-message" rows="4" name="rsMessage" required></textarea>
							<span class="line"></span>
							<label><?php echo __('Message'); ?></label>
						</div>

						<span class="btn-outer btn-primary-outer ripple">
							<input class="contact-submit btn btn-lg btn-primary" type="submit" value="Send"/>
						</span>
						
						<div class="contact-response"></div>
					</form>
				</div>
			</div>

			<div class="col-sm-6">
				<div class="section-box contact-info has-map">
					<ul class="contact-list">
						<li class="clearfix">
							<strong><?php echo __('Address'); ?></strong>
							<span>Trettachstraße 1, 70327 Stuttgart, DE</span>
						</li>
						<li class="clearfix">
							<strong><?php echo __('Phone'); ?></strong>
							<span><a href="tel:+491788171987">+49 178 8171987</a></span>
						</li>
						<li class="clearfix">
							<strong><?php echo __('Email'); ?></strong>
							<span><a href="mailto:gros.sascha@gmail.com">info@gros-engineering.com</a></span>
						</li>
					</ul>

					<div class="overlay" onClick="style.pointerEvents='none'"></div>
					<div id="map" data-latitude="48.779410" data-longitude="9.252592"></div>
				</div>
			</div>
		</div>
	</div>	
</section><!-- #contact -->

<?php $content = ob_get_clean(); ?>