<?php
/* @var $content string */

use yii\bootstrap4\Breadcrumbs;
use hail812\adminlte3\widgets\FlashAlert;
?>
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0">
                        <?php
                        if (!is_null($this->title)) {
                            echo \yii\helpers\Html::encode($this->title);
                        } else {
                            echo \yii\helpers\Inflector::camelize($this->context->id);
                        }
                        ?>
                    </h1>
                </div><!-- /.col -->
                <div class="col-sm-6">
                    <?php
                    echo Breadcrumbs::widget([
                        'links' => isset($this->params['breadcrumbs']) ? $this->params['breadcrumbs'] : [],
                        'options' => [
                            'class' => 'breadcrumb float-sm-right'
                        ]
                    ]);
                    ?>
                </div><!-- /.col -->
            </div><!-- /.row -->
        </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    

    <!-- Main content -->
    <div class="content">
        <div class="col-lg-12 pb-3">

        <?= $content ?>

        </div>
        <div class="login-success" data-flashdata="<?= Yii::$app->session->getFlash('login-success') ?>"></div>
        <div class="success" data-flashdata="<?= Yii::$app->session->getFlash('success') ?>"></div>
        <div class="error" data-flashdata="<?= Yii::$app->session->getFlash('error') ?>"></div>
        <!-- /.container-fluid -->

    </div>
    <!-- /.content -->
</div>