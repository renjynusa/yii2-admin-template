<?php

/** @var yii\web\View $this */

use yii\helpers\Html;

$this->title = '';
?>
<div class="site-index">
    <div class="body-content">
        <!-- <div class="col-md-12">
            <div class="card">
                <h2>Welcome to <br> <b> <span class="text-primary" style="font-size: 48px;">CITO LABKESMAS</span></b></h2>
                <img class="img1" src="<?= Yii::$app->request->baseUrl.'/image/lab.jpeg' ?>" alt="lab">
                <img class="img2" src="<?= Yii::$app->request->baseUrl.'/image/lab_2.jpg' ?>" alt="lab">
            </div>
        </div> -->

        <section id="hero" class="d-flex align-items-center">
            <div class="container" data-aos="zoom-out" data-aos-delay="100">
            <h1>Selamat Datang di <span>CDU LABKESMAS</span></h1>
            <h2>Let's getting started with dasboard .</h2>
            <div class="d-flex">
                <?= Html::a('<i class="fas fa-home"></i> Go to Dashboard', ['/bakumutu'], ['class' => 'btn-get-started scrollto']) ?>
                <a href="https://www.youtube.com/watch?v=jDDaplaOz7Q" class="glightbox btn-watch-video">
                    <i class="bi bi-play-circle"></i>
                    <span>Watch Video</span></a>
            </div>
            </div>
        </section><!-- End Hero -->
        

    </div>
</div>

<style>
    #hero {
        width: 100%;
        height: 75vh;
        background: url("image/hero-bg.jpg") top left;
        background-size: cover;
        position: relative;
    }
</style>
