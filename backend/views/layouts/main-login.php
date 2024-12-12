<?php

/* @var $this \yii\web\View */
/* @var $content string */

\backend\assets\AppAsset::register($this);
\hail812\adminlte3\assets\AdminLteAsset::register($this);
$this->registerCssFile('https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700');
$this->registerCssFile('https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css');
\hail812\adminlte3\assets\PluginAsset::register($this)->add(['fontawesome', 'icheck-bootstrap']);
\hail812\adminlte3\assets\PluginAsset::register($this)->add(['sweetalert2', 'toastr']);
\hail812\adminlte3\assets\PluginAsset::register($this)->add(['summernote']);
\hail812\adminlte3\assets\PluginAsset::register($this)->add(['datatables']);
\hail812\adminlte3\assets\PluginAsset::register($this)->add(['bs-stepper']);
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="<?= Yii::$app->charset ?>">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title><?=\yii\helpers\Url::home()?> | Log in</title>
    <!-- <link rel="stylesheet" href="sweetalert2/dist/sweetalert2.min.css"> -->
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <?php $this->registerCsrfMetaTags() ?>
    <?php $this->head() ?>
</head>
<body class="hold-transition login-page" style="background-color:white;">
    
<?php  $this->beginBody() ?>

    <!-- /.login-logo -->

    <?= $content ?>



<!-- /.login-box -->


<?php $this->endBody() ?>

<!-- <script src="sweetalert2/dist/sweetalert2.all.min.js"></script> -->
</body>
</html>
<?php $this->endPage() ?>

<style>
    body {
        margin: 0;
    }

    .left-section {
        background: url('image/bg.jpg') no-repeat;
        background-size: cover;
        position: relative;
    }

    .left-section::before {
        content: '';
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;

        background: linear-gradient(to bottom, #161d4a, #222a57);
        opacity: 0.6;
        z-index: 1;
    }

    .left-section > div {
        position: relative;
        z-index: 2;
    }

    .login-container {
        min-height: 100vh;
        display: flex;
        align-items: center;
        justify-content: center;
        position: relative;
        z-index: 2;
    }

    .login-form {
        background-color: white;
        padding: 2rem;
        max-width: 500px;
        width: 100%;
    }

    .login-form h1 {
        font-size: 1.5rem;
        font-weight: bold;
        margin-bottom: 1.5rem;
        text-align: center;
    }

    .logo {
        text-align: center;
        margin-bottom: 1rem;
    }

    .logo img {
        max-width: 150px;
    }

    .text-brand {
        color: #ffffff;
        text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.7);
    }

    .footer-text {
        position: absolute;
        bottom: 10px;
        left: 10px;
        font-size: 18px;
        color: #ffffff;
        text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.7);
        font-weight: bold;
        z-index: 3; /* Tambahkan z-index lebih tinggi */
    }

    .info-button {
        position: absolute;
        top: 20px;
        right: 20px;
        z-index: 4;
        background: transparent;
        border: 1px solid white;
        color: black;
        padding: 5px 10px;
        border-radius: 5px;
        font-size: 18px;
        cursor: pointer;
    }

    .info-button:hover {
        background: rgba(255, 255, 255, 0.2);
    }
</style>