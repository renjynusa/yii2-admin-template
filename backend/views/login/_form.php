<?php

use yii\helpers\Html;
use kartik\form\ActiveForm;
use kartik\switchinput\SwitchInput;
use kartik\file\FileInput;

/* @var $this yii\web\View */
/* @var $model backend\models\Login */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="box">
    <div class="box-body">

        <?php $form = ActiveForm::begin([
            'enableClientValidation' => true,
            'options' => [
                'data-pjax' => 1,
                'id' => 'create-data',
                'tabindex' => false,
                'enctype' => 'multipart/form-data'
            ]
        ]); ?>

        <div class="row">
            <div class="col-md-6">

                <?= $form->field($model, 'foto')->widget(FileInput::classname(), [
                    'pluginOptions' => [
                        'showCaption' => false,
                        'showRemove' => false,
                        'showUpload' => false,
                        'browseClass' => 'btn btn-primary btn-block',
                        'browseIcon' => '<i class="fas fa-camera"></i> ',
                        'browseLabel' =>  'Select Photo'
                    ],
                    'options' => ['accept' => 'image/*']
                ]); ?>

            </div>
            <div class="col-md-6">
                
            <?= $form->field($model, 'username')->textInput(['maxlength' => true]) ?>
            
            <?php if ($model->isNewRecord) { ?>
                <?= $form->field($model, 'password')->passwordInput(['maxlength' => true]) ?>
            <?php } ?>
                
            <?= $form->field($model, 'nama')->textInput(['maxlength' => true]) ?>

            <?= $form->field($model, 'email', [
                    'addon' => ['prepend' => ['content'=>'@']]
                ]); ?>
                

            <?php $model->isNewRecord ? $model->is_active = true : $model->is_active; ?>
            <?= $form->field($model, 'is_active')->widget(SwitchInput::classname(), [
                'pluginOptions' => [
                    'onText' => 'Yes',
                    'offText' => 'No',
                ]
            ]); ?>
            </div>
        </div>

        <div class="form-group"><br>
            <?= Html::submitButton($model->isNewRecord ? '<span class="glyphicon glyphicon-floppy-disk"></span> Simpan' : '<span class="glyphicon glyphicon-floppy-disk"></span> Simpan', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
        </div>

        <?php ActiveForm::end(); ?>

    </div>
</div>