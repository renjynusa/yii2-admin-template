<?php
use yii\helpers\Html;
use kartik\form\ActiveForm;
use kartik\switchinput\SwitchInput;

/* @var $this yii\web\View */
/* @var $model backend\models\MenuNavigasi */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="menu-navigasi-form">
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

                    <?= $form->field($model, 'nama_menu')->textInput(['maxlength' => true]) ?>

                    <?= $form->field($model, 'url')->textInput(['maxlength' => true]) ?>

                    <?= $form->field($model, 'id_parent')->dropDownlist($menuParent, ['prompt' => 'Pilih Parent Menu']) ?>

                    <?php
                    if (!$model->isNewRecord) {
                        echo $form->field($model, 'no_urut')->textInput();
                    }
                    ?>

                    <?= $form->field($model, 'icon')->textInput(['maxlength' => true]) ?>

                    <?php $model->isNewRecord ? $model->status = true : $model->status; ?>
                    <?= $form->field($model, 'status')->widget(SwitchInput::classname(), [
                        'pluginOptions' => [
                            'onText' => 'Aktif',
                            'offText' => 'Tidak Aktif',
                        ]
                    ]); ?>

                    <div class="form-group">
                        <!-- <?= Html::a('<span class="glyphicon glyphicon-circle-arrow-left"></span> Kembali', ['index'], ['class' => 'btn btn-warning']) ?> -->
                        <?= Html::submitButton('<span class="glyphicon glyphicon-floppy-disk"></span> Simpan', ['class' => 'btn btn-success float-end']) ?>
                    </div>

                    <?php ActiveForm::end(); ?>

                </div>
            </div>
        </div>
    </div>
</div>