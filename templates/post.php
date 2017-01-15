<?php namespace ProcessWire;

// blog-post.php template file

// Fields of the blog-post template:
//
// title
// body
// images
// tags

/*****************************************************************************/
/* Configuration													         */
/*****************************************************************************/
$global_class = "-post";

$blog = $pages->find("template=blog"); // should only return one page in the PageArray
if(!$blog->count()) {
  throw new Wire404Exception();
}
$blog = $blog[0];

/*****************************************************************************/
/* Back link															     */
/*****************************************************************************/
$content = "<div class='blog'>";

/*****************************************************************************/
/* Blog Posts																 */
/*****************************************************************************/
// render our blog post
$content .= "<div class='blog-singlepost' id='post-{$page->id}'>";

$content .= renderPost($page) .
			renderNextPrevPosts($page);

$content .= "</div>"; // end of post-single
$content .= "</div>"; // end of blog
?>
