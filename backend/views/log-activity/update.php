<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\LogActivity */

$this->title = 'Update Log Activity: ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Log Activities', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="log-activity-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
