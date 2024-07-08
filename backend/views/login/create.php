<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model backend\models\Login */

if (Yii::$app->user->isGuest) {
    header("Location: index.php");
    exit;
}
$this->title = 'Tambah Login';
// $this->params['breadcrumbs'][] = ['label' => 'Data Login', 'url' => ['index']];
// $this->params['breadcrumbs'][] = $this->title;
?>
<div class="login-create">


    <?= $this->render('_form', [
        'model' => $model,

    ]) ?>

</div>