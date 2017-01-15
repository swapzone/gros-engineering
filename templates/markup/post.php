<?php namespace ProcessWire;

/**
 * Output a single blog post
 *
 * VARIABLES:
 * ==========
 * $post - the blog post to render (Page)
 * $tags - the tags used for the post (String)
 * $previous - the link from whcih the user came (can be null)
 */

$author_name = $post->createdUser->get('user_name|title|name');
$dateFull = date("Y-m-d", $page->created);  // 'YYYY-MM-DD';
$dateDay = date("d", $page->created); // 'DD';
$dateMonth = date("M", $page->created); // 'MMM';
?>

<div class="row animate-up">
	<div class="col-sm-12">
		<main class="post-single">
			<article class="post-content section-box">
				<div class="post-inner">
					<header class="post-header">
						<?php
						if ($previous !== null) {
							echo "
								<div class='back-link'>
									<a href='{$previous}'>" . _x('return to overview', 'blog overview') . "</a>
								</div>";
						}
						?>
						<div class="post-data">
							<div class="post-tag">
								<?php echo $tags; ?>
							</div>

							<div class="post-title-wrap">
								<h1 class="post-title"><?php echo $post->title; ?></h1>
								<time class="post-datetime" datetime="<?php echo $dateFull; ?>">
									<span class="day"><?php echo $dateDay ?></span>
									<span class="month" style="text-transform: uppercase;"><?php echo $dateMonth ?></span>
								</time>
							</div>

							<div class="post-info">
								<i class="icon icon-user"></i>by <?php echo $author_name; ?>
							</div>
						</div>
					</header>

					<div class="post-editor clearfix">
					   <?php echo $post->body; ?>
					</div>

					<footer class="post-footer">
						<div class="post-share">
							<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-503b5cbf65c3f4d8" async="async"></script>
							<div class="addthis_sharing_toolbox"></div>
						</div>
					</footer>
				</div>
			</article>
		</main>
	</div>
</div>
<span id="post-id" style="display: none"><?php echo $post->id; ?></span>