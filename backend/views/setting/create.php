<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\Setting */

$this->title = 'Tambah Setting';
// $this->params['breadcrumbs'][] = ['label' => 'Settings', 'url' => ['index']];
// $this->params['breadcrumbs'][] = $this->title;
?>
<div class="setting-create">


    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>