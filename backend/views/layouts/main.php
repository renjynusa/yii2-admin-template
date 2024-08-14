<?php

/* @var $this \yii\web\View */
/* @var $content string */

use yii\helpers\Html;
use yii\web\View;

if (Yii::$app->user->isGuest) {

    echo $this->render('main-login', ['content' => $content]);

} else {

    \backend\assets\AppAsset::register($this);
    \hail812\adminlte3\assets\FontAwesomeAsset::register($this);
    \hail812\adminlte3\assets\AdminLteAsset::register($this);

    \hail812\adminlte3\assets\PluginAsset::register($this)->add(['sweetalert2', 'toastr']);
    \hail812\adminlte3\assets\PluginAsset::register($this)->add(['datatables']);
    \hail812\adminlte3\assets\PluginAsset::register($this)->add(['bs-stepper']);
    \hail812\adminlte3\assets\PluginAsset::register($this)->add(['fullcalendar']);
    \hail812\adminlte3\assets\PluginAsset::register($this)->add(['summernote']);
    $this->registerCssFile('https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback');

    $assetDir = Yii::$app->assetManager->getPublishedUrl('@vendor/almasaeed2010/adminlte/dist');

?>

    <?php $this->beginPage() ?>
    <!DOCTYPE html>
    <html lang="<?= Yii::$app->language ?>">
    <head>
        <meta charset="<?= Yii::$app->charset ?>">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        
        <?php $this->registerCsrfMetaTags() ?>
            <title><?= Html::encode($this->title) ?></title>
        <?php $this->head() ?>
    </head>

    <!-- <body class="hold-transition sidebar-mini sidebar-collapse"> -->
    <body class="sidebar-mini layout-fixed">
        
        
        <?php $this->beginBody() ?>
        
    <div class="wrapper">
            
            
        <!-- PRELOADER -->
        <div></div>

        <!-- Navbar -->
        <?= $this->render('navbar', ['assetDir' => $assetDir]) ?>
        <!-- /.navbar -->

        <!-- Main Sidebar Container -->
        <?= $this->render('sidebar', ['assetDir' => $assetDir]) ?>

        <!-- Content Wrapper. Contains page content -->
        <?= $this->render('content', ['content' => $content, 'assetDir' => $assetDir]) ?>
        <!-- /.content-wrapper -->

        <!-- Control Sidebar -->
        <?= $this->render('control-sidebar') ?>
        <!-- /.control-sidebar -->

        <!-- Main Footer -->
        <?= $this->render('footer') ?>
        
        <!-- Modal -->
        <?php
            yii\bootstrap4\Modal::begin([
                'headerOptions' => ['id' => 'modalHeader'],
                'options' => ['tabindex' => false],
                'id' => 'modal',
                'size' => 'modal-xl',
                // 'clientOptions' => ['backdrop' => 'static', 'keyboard' => true],
                // 'closeButton' => ['id' => 'close-button'],    


            ]);

            echo '<div id="modalContent"></div>';

            yii\bootstrap4\Modal::end();
        ?>

        <button id="scrollToTopBtn" class="scroll-to-top-btn"><i class="fas fa-arrow-up fa-lg" style="color: #ffffff;"></i></button>

    </div>

    <?php $this->registerJsFile('https://cdn.jsdelivr.net/npm/signature_pad@4.0.0/dist/signature_pad.umd.min.js', ['position' => \yii\web\View::POS_HEAD]); ?>
    <?php $this->endBody() ?>
    </body>
    </html>
    <?php $this->endPage() ?>

<?php } ?>

<style>
    .scroll-to-top-btn {
        position: fixed;
        bottom: 50px;
        right: 13px;
        display: none;
        background-color: #20c997;
        color: #fff;
        border: none;
        border-radius: 5px;
        padding: 10px 20px;
        cursor: pointer;
    }

    .scroll-to-top-btn:hover {
        background-color: #0056b3;
    }

</style>


