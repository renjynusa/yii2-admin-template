<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\Setting */

$this->title = 'Ubah Data : ' . $model->nama;
// $this->params['breadcrumbs'][] = ['label' => 'Settings', 'url' => ['index']];
// $this->params['breadcrumbs'][] = ['label' => $model->id_setting, 'url' => ['view', 'id' => $model->id_setting]];
// $this->params['breadcrumbs'][] = 'Update';
?>
<div class="setting-update">



    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>