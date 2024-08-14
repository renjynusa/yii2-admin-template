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
    .login {
    min-height: 100vh;
    }

    .bg-image {
    background-image: url('image/bg-login.jpg');
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
    width: 100%; /* Menyesuaikan lebar dengan monitor */
    height: 100vh; /* Menyesuaikan tinggi dengan tinggi viewport */
    }

    .login-heading {
    font-weight: 300;
    }

    .btn-login {
    font-size: 0.9rem;
    letter-spacing: 0.05rem;
    padding: 0.75rem 1rem;
    }

    img {
    border-radius: 50%;
    width: 200px;
    display: block;
    margin-left: auto;
    margin-right: auto;
    }

    img {
    /* border-radius: 50%; */
    width: 200px;
    display: block;
    margin-left: auto;
    margin-right: auto;
    }

    .logo-container {
        display: flex;
        justify-content: space-between;
        align-items: center;
    }

    .logo-left,
    .logo-right {
        max-width: 45%; /* Sesuaikan ukuran sesuai kebutuhan */
        height: auto; /* Memastikan gambar tetap responsif */
    }

</style>