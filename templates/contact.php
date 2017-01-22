<?php
$emailTo = "info@gros-engineering.com";

$headers = "MIME-Version: 1.0\r\n";
$headers .= "Content-type: text/html; charset=utf-8\r\n";
$headers .= "From: ".$_POST['rsEmail']."\r\n";

if (!isset($_POST['rsSubject'])) {
	$subject = "Contact form message"; 
} else {
	$subject = $_POST['rsSubject'];
}

reset($_POST);

$body = "";
$body .= "<p><b>Name: </b>".$_POST['rsName']."</p>";
$body .= "<p><b>Email: </b>".$_POST['rsEmail']."</p>";
$body .= "<p><b>Betreff: </b>".$subject."</p>";
$body .= "<p><b>Anfrage: </b>".$_POST['rsMessage']."</p>";	

$mail_sent = mail($emailTo, $subject, $body, $headers);
ob_start(); ?>

<div class="content">
    <div class="container">
		<div class="row animate-up animated">
			<div class="col-sm-12">
				<main class="post-single">
					<article class="post-content section-box">
						<div class="post-inner">
							<header class="post-header">
								<h1 class="post-title"><?php echo $page->title; ?></h1>
							</header>
							<section class="post-content">
								<?php 
								if ($mail_sent === true) {
									echo $page->body;
								} else {
									echo html_entity_decode(__('Sorry, the contact request was not successful. 
										Please send an inquiry via <a href=\'mailto:info@gros-engineering.com\'>Email</a>.'), ENT_QUOTES, 'UTF-8');
								}
								?>
							</section>
							<footer>
								<a href="<?php echo getRootDirectory(wire('pages')->get('/')->localUrl($user->language), $subDirectory); ?>"><?php echo __('Back to the homepage'); ?></a>
							</footer>
						</div>
					</article>
				</main>
			</div>
		</div>
	</div>
</div>

<?php $content = ob_get_clean(); ?>