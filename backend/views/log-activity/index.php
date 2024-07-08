<?php

use yii\helpers\Html;
use yii\helpers\Url;
use yii\grid\ActionColumn;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\LogActivitySearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Log Activities';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="log-activity-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Create Log Activity', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            'daftar_id',
            'note:ntext',
            'login_id',
            'datetime',
            [
                'class' => ActionColumn::className(),
                'urlCreator' => function ($action, LogActivity $model, $key, $index, $column) {
                    return Url::toRoute([$action, 'id' => $model->id]);
                 }
            ],
        ],
    ]); ?>


</div>
