<?php namespace ProcessWire;

// blog.php template file

$currentPage = 1;
if (isset($_GET['page'])) {
	$currentPage = $_GET['page'];
}

// find all posts 
$posts = $pages->find("template=post, sort=-date, limit={$page->quantity}"); 


// echo "Current page: " . $currentPage;	

/*****************************************************************************/
/* Blog Posts																 */
/*****************************************************************************/
$content .= "<div class='blog'>
				<div class='blog-grid'>
					<div class='grid-sizer'></div>";
						
$content .= renderPostTiles($posts);

$content .= "		</div>
				</div>";

// if there are more posts than the specified limit, then output pagination	
if($posts->getLimit() < $posts->getTotal()) $content .= '<div class="pager-container">' . $posts->renderPager() . '</div>';

$content .= "</div>"; 

