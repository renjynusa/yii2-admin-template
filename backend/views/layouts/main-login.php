<?php

/* @var $this \yii\web\View */
/* @var $content string */

\backend\assets\AppAsset::register($this);
\hail812\adminlte3\assets\AdminLteAsset::register($this);
$this->registerCssFile('https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700');
$this->registerCssFile('https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css');
\hail812\adminlte3\assets\PluginAsset::register($this)->add(['fontawesome', 'icheck-bootstrap']);
\hail812\adminlte3\assets\PluginAsset::register($this)->add(['sweetalert2', 'toastr']);
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="<?= Yii::$app->charset ?>">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>AdminLTE 3 | Log in</title>
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
    background-image: url('image/login-bg.jpg');
    background-size: cover;
    background-position: center;
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

</style>