<?php namespace ProcessWire;

// blog.php template file

// find all posts
$posts = $pages->find("template=post, limit={$page->quantity}")->sort('-created');

/*****************************************************************************/
/* Blog Posts																 */
/*****************************************************************************/
$content .= "<div class='blog'>
				<div class='blog-grid'>
					<div class='grid-sizer'></div>";
						
$content .= renderPostTiles($posts, 10);

$content .= "		</div>
				</div>";

// if there are more posts than the specified limit, then output pagination	
if($posts->getLimit() < $posts->getTotal()) $content .= $posts->renderPager();

$content .= "</div>"; 

