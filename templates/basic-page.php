<?php namespace ProcessWire;

// basic-page.php template file 
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
                                <?php echo $page->body; ?>
                            </section>
                        </div>
                     </article>
                </main>
            </div>
        </div>
    </div>
</div>

<?php $content = ob_get_clean(); ?>