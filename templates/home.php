<?php namespace ProcessWire;

// find all posts
$posts = $pages->find("template=post, sort=-date, limit=2");
$blog_posts = renderPostTiles($posts, 2);

// find all skills
$skills = $pages->find("template=skills, sort=created");

// find all work experiences
$jobs = $pages->find("template=work-experience, sort=-created");

ob_start(); ?>

<section id="about" class="section section-about">
	<div class="animate-up">
		<div class="section-box">
			<div class="profile">
				<div class="row">
					<div class="col-xs-5">
						<div class="profile-photo"><img src="<?php echo $config->urls->templates ?>img/uploads/profile_sascha.jpg" alt="Sascha Gros"/></div>
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
								<?php
								
								if ($page->vacation) {
									$dateString = date("M d, Y", $page->vacation); // 'March 25, 2016';

									echo'<li class="clearfix">
										<strong class="title"><span class="button">' . __('On Vacation') . '</span></strong>
										<span class="cont"><i class="rsicon rsicon-calendar"></i>' . _x('till', 'Vacation until') . ' ' . $dateString . '</span>
									</li>';
								}
								?>
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
			<p>
				<a class="btn btn-lg btn-border ripple" target="_blank" href="<?php echo getRootDirectory(wire('pages')->get('/resume')->localUrl($user->language), $subDirectory); ?>">
					<?php echo __('Download Resume'); ?>
				</a>
			</p>
			<p>
				<?php 
					echo __('Hello! I\'m Sascha Gros. Full stack web developer and data scientist, specializing in Node.js and RESTful API design. Living test-driven development. Experienced with all stages of the development cycle in agile environments. Well-versed in numerous programming languages and web frameworks. Bringing web technology to all fields of your software needs.'); 
				?>
			</p>
		</div>
	</div>	
</section><!-- #about -->

<section id="skills" class="section section-skills">
	<div class="animate-up">
		<h2 class="section-title"><?php echo _x('Professional Skills', 'Profile section'); ?></h2>
		<div class="section-box">
			<?php
				$index = 0;
				foreach ($skills->getArray() as $skill) {
					if ($index != 0 && $index % 2 == 0) {
						echo '</div>';
					}
					if ($index == 0 || $index % 2 == 0) {
						echo '<div class="row">';
					}
					echo '<div class="col-sm-6">
							<div class="progress-bar">
								<div class="bar-data">
									<span class="bar-title">' . $skill->title . '</span>
									<span class="bar-value">' . $skill->quantity . '%</span>
								</div>
								<div class="bar-line">
									<span class="bar-fill" data-width="' . $skill->quantity . '%"></span>
								</div>
							</div>
						</div>';
					
					$index++;
				}
			?>			
		</div>
	</div>	
</section><!-- #skills -->
						
 <section id="clients" class="section section-clients">
	<div class="animate-up">

		<div class="clients-carousel">
			<div class="client-logo">
				<img src="<?php echo $config->urls->templates ?>img/uploads/logos/logo-angularjs.png" title="AngularJS" alt="angularJS"/>
			</div>

			<div class="client-logo">
				<img src="<?php echo $config->urls->templates ?>img/uploads/logos/logo-electron.png" title="Electron.js" alt="Electron.js"/>
			</div>

			<div class="client-logo">
				<img src="<?php echo $config->urls->templates ?>img/uploads/logos/logo-nodejs.png" title="Node.js" alt="Node.js"/>
			</div>

			<div class="client-logo">
				<img src="<?php echo $config->urls->templates ?>img/uploads/logos/logo-swagger.png" title="Swagger IO" alt="Swagger IO"/>
			</div>
			
			<div class="client-logo">
				<img src="<?php echo $config->urls->templates ?>img/uploads/logos/logo-sharepoint.png" title="SharePoint" alt="SharePoint"/>
			</div>

			<div class="client-logo">
				<img src="<?php echo $config->urls->templates ?>img/uploads/logos/logo-typescript.png" title="Typescript" alt="Typescript"/>
			</div>

			<div class="client-logo">
				<img src="<?php echo $config->urls->templates ?>img/uploads/logos/logo-mongodb.png" title="MongoDB" alt="MongoDB"/>
			</div>

			<div class="client-logo">
				<img src="<?php echo $config->urls->templates ?>img/uploads/logos/logo-ghost.png" title="Ghost CMS" alt="Ghost CMS"/>
			</div>
			
			<div class="client-logo">
				<img src="<?php echo $config->urls->templates ?>img/uploads/logos/logo-jasmine.png" title="Jasmine" alt="Jasmine"/>
			</div>

			<div class="client-logo">
				<img src="<?php echo $config->urls->templates ?>img/uploads/logos/logo-jquery.png" title="jQuery" alt="jQuery"/>
			</div>
			
			<div class="client-logo">
				<img src="<?php echo $config->urls->templates ?>img/uploads/logos/logo-sass.png" title="Sass" alt="Sass"/>
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

				<?php 
					$jobIndex = 0;
					foreach ($jobs as $job) {
						$direction = $jobIndex % 2 == 0 ? 'left' : 'right';
						$animation = $jobIndex % 2 == 0 ? 'right' : 'left';
						
						echo '<div class="timeline-box timeline-box-' . $direction . '">
								<span class="dot"></span>
								<div class="timeline-box-inner animate-' . $animation . '">
									<span class="arrow"></span>
									<div class="date">' . $job->headline . '</div>
									<h3>' . $job->title . '</h3>
									<h4>' . $job->subtitle . '</h4>
									<p>' . $job->body . '</p>
								</div>
							</div>';
							
						$jobIndex++;
					}
				?>			
			</div>
		</div>
	</div>
</section><!-- #experience -->
				
<section id="blog" class="section section-blog">
	<div class="animate-up">
		<h2 class="section-title"><?php echo __('From The Blog'); ?></h2>
		<div class="section-subtitle">
			<a href="<?php echo getRootDirectory(wire('pages')->get('/blog')->localUrl($user->language), $subDirectory); ?>"><?php echo _x('More', 'Read more'); ?>...</a>
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
								<?php 
									echo __('Sascha is a very talented software developer and a great team player. I have had the pleasure to work with him on multiple projects and he has my highest recommendation. He combines the understanding of how to deliver high quality software with the understanding of how a business can deliver a product in time.'); 
								?>
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
								<?php 
									echo __('Sascha is one of the few people I know that is able to instantly grab rough ideas and transform them into concrete prototypes and solutions. His profound understanding of software architectures and agile software engineering makes him an important driver and brain in any exciting innovation project. Don\'t bother him with boring business apps. Challenge him with SH/SW and IoT integrations.'); 
								?>
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
								<?php 
									echo __('Sascha is an uncomplicated, dedicated, very reliable and creative partner for sophisticated software solutions. He combines a great technical know-how with an even greater willingness to develop and deliver an amazing product with a high practical user value. It was a convincing, fair and trustful cooperation. Thank you!'); 
								?>
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
									<?php echo __('1ClickTrips is a door-to-door travel tool focusing on events and appointments. The idea is simple: Give your event data to 1ClickTrips and it will figure out the best options to get there in time without wasting valuable time and money.'); ?>
								</p>
								<p>
									<?php echo __('The cool part of 1ClickTrips is the process of creating your trips. It allows you to pick from the best options to get to the event and then add a hotel that is located on your trip path and won\'t put any extra effort on getting there.'); ?>
								</p>
								<p>
									<?php echo __('Once you selected your trip and hotel you can book everything and then take it with you on your mobile, including all tickets, maps and additional information to help you get around.'); ?>
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
									<?php echo html_entity_decode(__('The requirements were easy: Be able to track my time out of Chrome, assign each time record with	either a generic category or with a <a href="https://github.com">Github</a> issue and then store it to SharePoint 2013.'), ENT_QUOTES, 'UTF-8'); ?>
								</p>
								<p>
									<?php echo __('The challenges have been to keep the plugin\'s UI simple and to handle authentication with Sharepoint and Github properly.'); ?>
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
									<?php echo __('A local climbing hall wanted to make the transformation to a digital administration of the weekly courses and occupancy of their climbing hall.'); ?>
								</p>
								<p>
									<?php echo __('It was supposed to be a web-based solution that every staff member could access. A role model for different types of staff members was needed as well as different views for those different roles. They wanted to have a calendar to filter for different event types and the possibility for staff members to register for events they are authorized for.'); ?>
								</p>
								<p>
									<?php echo __('Additionally the content of the system must be reflected in the website of the climbing club. Interested participants must be able to see which courses are available and also to register for a course in case they want to attend. They have to confirm their registration before it is valid.'); ?>
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
									<?php echo __('Patient administration solutions are either totally overloaded with functionality nobody needs making the whole user experience a hassle. Or they are way too expensive.'); ?>
								</p>
								<p>
									<?php echo __('That was the reason for a client of mine to ask me for an easy-to-use solution that a small doctor\'s office can afford. In my opinion this is a problem many physiotherapists and doctors have. So I came up with a solution that can be used on all operating systems, be it Windows, OS X or Linux.'); ?>
								</p>
								<p>
									<?php echo __('The solution offers a patient administration section that is fully searchable, a treatment section where treatments for patients can be added, edited and invoiced and backup and restore functionality. All data is kept locally and won\'t be transferred into the cloud. Since it is module-based, all modules can be replaced or more modules can be added to adapt the software to customer needs.'); ?>
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
									<?php echo __('For solar modules there is one big drawback: they only deliver the maximum possible power output when being exposed to sunlight in a 90° angle. As soon as the angle differs from that, the output significantly drops.'); ?>
								</p>
								<p>
									<?php echo __('So the question is: would it make sense to continuously adapt the orientation of the solar panels towards the sun? We have compare the energy that is consumed by the mechanism that is tracking the sun and moving the panels against the energy plus that is gained by moving the panels in contrast to keeping them static.'); ?>
								</p>
								<p>
									<?php echo __('For this project I had to come up with a low-budget sun-tracking sensor and an additional algorithm that	calculated the position of the sun based on the GPS location of the panel and the theoretical earth orbit around the sun. Both concepts have been used to figure out the differences in energy efficiency.'); ?>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div><!-- .grid-item -->
		</div>
	</div>	
</section><!-- #portfolio -->

<section id="contact" class="section section-contact">
	<div class="animate-up">
		<h2 class="section-title"><?php echo __('Contact Me'); ?></h2>

		<div class="row">
			<div class="col-sm-6">
				<div class="section-box contact-form">
					<h3><?php echo __('Feel free to contact me'); ?></h3>
					
					<form class="contactForm" id="contactForm" action="<?php echo getRootDirectory(wire('pages')->get('/contact')->localUrl($user->language), $subDirectory); ?>" method="post">
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