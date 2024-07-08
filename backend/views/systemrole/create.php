<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model backend\models\Systemrole */

if (Yii::$app->user->isGuest) {
    header("Location: index.php");
    exit;
}
$this->title = 'Tambah Hak Akses';
// $this->params['breadcrumbs'][] = ['label' => 'Data Hak Akses', 'url' => ['index']];
// $this->params['breadcrumbs'][] = $this->title;
?>
<div class="systemrole-create">


    <div class="box">
        <div class="box-header">
            <div class="col-md-12" style="padding: 0;">
                <div class="box-body">
                    <?= $this->render('_form', [
                        'model' => $model,
                    ]) ?>
                </div>
            </div>
        </div>
    </div>
</div>