<?php namespace ProcessWire;

/**
 * /site/templates/_func.php
 * 
 * Example of shared functions used by template files
 *
 * This file is currently included by _init.php 
 * 
 * FUN FACT: This file is identical to the one in the NON-multi-language
 * version of this site profile (site-default). In fact, it's rare that
 * one has to think about languages when developing a multi-language 
 * site in ProcessWire. 
 *
 */

 /**
 * Return a date formatted as specified in the blog 'date' field
 *
 * @param int|string $date If given a timestamp, it will be automatically formatted according to the 'date' field in PW
 *	If given a string, then whatever format it is in will be kept.
 * @return string
 *
 */
function formatDate($date) {

	if(is_numeric($date)) {
		// get date format from our 'date' field, for consistency
		$outputFormatString = 'dateOutputFormat';
		if(wire('user')->language->name != "default") {
			$outputFormatString .= wire('user')->language;
		}
		$dateFormat = wire('fields')->get('date')->get($outputFormatString);
		$date = FieldtypeDatetime::formatDate((int)$date, $dateFormat);
	}

	return $date;
}

/**
 * 
 *
 * @param string $localUrl the url with the language identifier already given.
 * @return string
 */
function getRootDirectory($localUrl, $subDirectory) {	
	if (!isset($subDirectory) || trim($subDirectory) === '') {
		return $localUrl;
	} else {
		return preg_replace('/'.preg_quote($subDirectory, '/').'/', "", $localUrl, 1);
	}
}

/**
 * Given a group of pages, render a simple <ul> navigation
 *
 * This is here to demonstrate an example of a simple shared function.
 * Usage is completely optional.
 *
 * @param PageArray $items
 * @return string
 *
 */
function renderNav(PageArray $items) {

	// $out is where we store the markup we are creating in this function
	$out = '';

	// cycle through all the items
	foreach($items as $item) {

		// render markup for each navigation item as an <li>
		if($item->id == wire('page')->id) {
			// if current item is the same as the page being viewed, add a "current" class to it
			$out .= "<li class='current'>";
		} else {
			// otherwise just a regular list item
			$out .= "<li>";
		}

		// markup for the link
		$out .= "<a href='$item->url'>$item->title</a> ";
	
		// if the item has summary text, include that too
		if($item->summary) $out .= "<div class='summary'>$item->summary</div>";

		// close the list item
		$out .= "</li>";
	}

	// if output was generated above, wrap it in a <ul>
	if($out) $out = "<ul class='nav'>$out</ul>\n";

	// return the markup we generated above
	return $out;
}

/** 
 * Given a group of pages, render a <ul> navigation tree
 *
 * This is here to demonstrate an example of a more intermediate level 
 * shared function and usage is completely optional. This is very similar to
 * the renderNav() function above except that it can output more than one 
 * level of navigation (recursively) and can include other fields in the output.
 *
 * @param array|PageArray $items
 * @param int $maxDepth How many levels of navigation below current should it go?
 * @param string $fieldNames Any extra field names to display (separate multiple fields with a space)
 * @param string $class CSS class name for containing <ul>
 * @return string
 *
 */
function renderNavTree($items, $maxDepth = 0, $fieldNames = '', $class = 'nav') {

	// if we were given a single Page rather than a group of them, we'll pretend they
	// gave us a group of them (a group/array of 1)
	if($items instanceof Page) $items = array($items); 

	// $out is where we store the markup we are creating in this function
	$out = '';

	// cycle through all the items
	foreach($items as $item) {

		// markup for the list item...
		// if current item is the same as the page being viewed, add a "current" class to it
		$out .= $item->id == wire('page')->id ? "<li class='current'>" : "<li>";

		// markup for the link
		$out .= "<a href='$item->url'>$item->title</a>";

		// if there are extra field names specified, render markup for each one in a <div>
		// having a class name the same as the field name
		if($fieldNames) foreach(explode(' ', $fieldNames) as $fieldName) {
			$value = $item->get($fieldName); 
			if($value) $out .= " <div class='$fieldName'>$value</div>";
		}

		// if the item has children and we're allowed to output tree navigation (maxDepth)
		// then call this same function again for the item's children 
		if($item->hasChildren() && $maxDepth) {
			if($class == 'nav') $class = 'nav nav-tree';
			$out .= renderNavTree($item->children, $maxDepth-1, $fieldNames, $class); 
		}

		// close the list item
		$out .= "</li>";
	}

	// if output was generated above, wrap it in a <ul>
	if($out) $out = "<ul class='$class'>$out</ul>\n";

	// return the markup we generated above
	return $out; 
}

/**
 * Render previous-next controll at post bottom.
 *
 * @param Page $page
 * @return string
 *
 */
function renderNextPrevPosts($page) {
	/*)
	$date = $page->getUnformatted('date');
	$nextPost = $page->parent->child("date>$date, sort=date");
	$prevPost = $page->parent->child("date<$date, sort=-date");

	$out = "<div class='next-prev-posts'>";
	if($prevPost->id > 0) $out .= "<p class='prev-post'><i class='fa fa-lg fa-chevron-circle-left'></i>&nbsp;&nbsp;<a href='{$prevPost->url}'>{$prevPost->title}</a></p>";
	if($nextPost->id > 0) $out .= "<p class='next-post'><a href='{$nextPost->url}'>{$nextPost->title}</a>&nbsp;&nbsp;<i class='fa fa-lg fa-chevron-circle-right'></i></p>";
	$out .= "</div>";
	return $out;
	*/
	
	return '';
}


/**
 * Given a blog entry generate and return the output.
 *
 * @param Page $page
 * @return string The generated output
 *
 */
function renderPost($page) {
	// set a couple new fields that our output will use
	$page->set('authorName', $page->createdUser->get('title|name'));

	$t = new TemplateFile(wire('config')->paths->templates . '/markup/post.php');
	$t->set('post', $page);
	$t->set('tags', renderTags($page->tags));
	$out = $t->render();

	return $out;
}

/**
 * Given a PageArray of blog entries generate and return the output.
 *
 * @param PageArray|Page $posts The entries to generate output for
 * @return string The generated output
 */
function renderPostTiles($posts) {
	if(!$posts instanceof PageArray) {
		if($posts instanceof Page) {
			// single page
			$post = $posts;
			$posts = new PageArray();
			$posts->add($post);

		} else if(is_string($posts)) {
			// selector string
			$selector = $posts;
			$posts = wire('pages')->find("template=post, sort=-date, $selector");

		} else {
			throw new WireException('renderPosts requires a PageArray, Page or selector string');
		}
	}
	
	if (count($posts) === 0) {
		return __('No article published yet.');
	}
	
	// reduce number of posts to given $limit
	// $result = array_slice($posts->getArray(), 0, $limit);
	
	$output = '';
	foreach ($posts->getArray() as $page) {		
		$output .= '
			<div class="grid-item">
				<article class="post-box post">';
				
		$image = $page->images->first();
		// return print_r($page->images->first(), TRUE);

		if ($image !== null) {
			$output .= '
					<div class="post-media">
						<div class="post-image">
							<a href="' . $page->url . '"><img src="' . $image->url . '" alt="Post image"></a>
						</div>
					</div>';
		} else {
			$output .= '
					<div class="post-media no-media"></div>';
		}
		
		$dateFull = date("Y-m-d", $page->date);  // 'YYYY-MM-DD';
		$dateDay = date("d", $page->date); // 'DD';
		$dateMonth = date("M", $page->date); // 'MMM';
		
		$output .= '
					<div class="post-data">
						<time class="post-datetime" datetime="' . $dateFull . '">
							<span class="day">' . $dateDay . '</span>
							<span class="month" style="text-transform: uppercase;">' . $dateMonth . '</span>
						</time>

						<div class="post-tag">
							' . renderTags($page->tags) . '
						</div>

						<h3 class="post-title">
							<a href="' . $page->url . '">' . $page->title .'</a>
							<!--<p>SUMMARY <a class="read-more" href="{{url}}">&raquo;</a></p>-->
						</h3>

						<div class="post-info">
							<i class="rsicon rsicon-user"></i>' . _x('by', 'Written by') . ' ' . $page->createdUser->title . '
						</div>
					</div>
				</article>
			</div>';
	}
	
	return $output;
}

/**
 * Render a list of the given tags represented by the $pages array.
 * The designator specifies the character that shall be rendered in front of each tag.
 */
function renderTags($pages, $designator) {
	if(!$pages instanceof PageArray) {
		if($pages instanceof Page) {
			// single page
			$tag = $pages;
			$pages = new PageArray();
			$pages->add($tag);

		} else if(is_string($pages)) {
			// selector string
			$selector = $pages;
			$pages = wire('pages')->find("template=tag, sort=-date, $selector");

		} else {
			throw new WireException('renderTags requires a PageArray, Page or selector string');
		}
	}
	
	if ($pages->count() === 0) {
		return '';
	}
	
	$output = '';
	foreach ($pages->getArray() as $tag) {
		$output .= $designator . $tag->title . ', ';
	}
	return substr($output, 0, -2);
}

/**
 * Shorten a given text to the given length but taking into account not to cut words.
 */
function shortenText($text, $max_length = 20) {
	$text = strip_tags($text);
	if(strlen($text) > $max_length && preg_match('#^\s*(.{'. $max_length .',}?)[,.\s]+.*$#s', $text, $matches)) {
		return $matches[1];
	}
	else {
		return $text;
	}
}
