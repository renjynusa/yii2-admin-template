<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\Systemrole */

if (Yii::$app->user->isGuest) {
    header("Location: index.php");
    exit;
}
$this->title = 'Update Data Hak Akses: ' . $model->id_system_role;
// $this->params['breadcrumbs'][] = ['label' => 'Data Hak Akses', 'url' => ['index']];
// $this->params['breadcrumbs'][] = ['label' => $model->id_system_role, 'url' => ['view', 'id' => $model->id_system_role]];
// $this->params['breadcrumbs'][] = 'Update';
?>
<div class="systemrole-update">


    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>