<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use kartik\select2\Select2;

/* @var $this yii\web\View */
/* @var $model backend\models\Setting */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="box">
    <div class="box-header">
        <div class="col-md-12" style="padding: 0;">
            <div class="box-body">

                <?php $form = ActiveForm::begin([
                    'enableClientValidation' => true,
                    'options' => [
                        'data-pjax' => 1,
                        'id' => 'create-data',
                        'tabindex' => false,
                    ]
                ]); ?>


                <?= $form->field($model, 'nama')->textInput(['maxlength' => true]) ?>

                <?= $form->field($model, 'konten')->textInput(['maxlength' => true]) ?>

                <div class="form-group">
                    <?= Html::submitButton('Simpan', ['class' => 'btn btn-success']) ?>
                </div>

                <?php ActiveForm::end(); ?>

            </div>
        </div>
    </div>
</div>