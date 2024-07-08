<?php

use backend\models\Userrole;
use yii\helpers\Html;
//use yii\grid\GridView;
use kartik\grid\GridView;
use yii\helpers\Url;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\LoginSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

// ACCESS CONTROL
// if (Yii::$app->user->isGuest) {
//     header("Location: index.php");
//     exit;
// }

$this->title = 'Data Login';
// $this->params['breadcrumbs'][] = $this->title;
?>

<div class="login-index">

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            [
                'class'=>'kartik\grid\SerialColumn',
                'contentOptions'=>['class'=>'kartik-sheet-style'],
                'width'=>'36px',
                'pageSummary'=>'Total',
                'pageSummaryOptions' => ['colspan' => 6],
                'header'=>'',
                'headerOptions'=>['class'=>'kartik-sheet-style']
            ],
            [
                'class' => 'kartik\grid\ActionColumn',
                'header' => 'Actions',
                'headerOptions' => ['style' => 'color:#337ab7'],
                'template' => "{view} {update}",
                'buttons' => [
                    'view' => function ($url, $model) {
                        return Html::a(
                            '<i class="fa fa-eye"></i>',
                            [ 'view', 'id' => $model->id_login] ,
                            [ 'class' => 'btn btn-sm btn-outline-primary']
                        );
                    },

                    'update' => function ($url, $model) {
                        return Html::button(
                            '<i class="fa fa-pencil-alt"></i>',
                            [
                                'value' => Url::to(['update', 'id' => $model->id_login]),
                                'title' => 'Form',
                                'class' => 'showModalButton btn btn-sm btn-outline-primary',
                            ]
                        );
                    },
                    'delete' => function ($url, $model) {
                        
                        return Html::a('<button class = "btn btn-danger"><span class="glyphicon glyphicon-trash"></span> Hapus</button>', $url, [
                            'title' => Yii::t('app', 'lead-delete'),
                            'hidden' => !Utils::role('SYSTEM ADMINISTRATOR'),
                            'data' => [
                                'method' => 'post',
                            ],
                            'class' => 'tombol-hapus'
                        ]);
                    },

                ],
                'urlCreator' => function ($action, $model, $key, $index) {
                    if ($action === 'delete') {
                        $url = 'index.php?r=login/delete&id=' . $model->id_login;
                        return $url;
                    }
                    if ($action === 'view') {
                        $url = 'index.php?r=login/view&id=' . $model->id_login;
                        return $url;
                    }
                    // if ($action === 'update') {
                    //     $url = 'index.php?r=menu-navigasi/update&id=' . $model->id_menu;
                    //     return $url;
                    // }
                }
            ],
            'username',
            'nama',
            [
                'class' => 'kartik\grid\BooleanColumn',
                'attribute' => 'is_active',
                'format'    => 'raw',
                'vAlign' => 'middle',
                'value'     => function ($model) {
                    return $model->is_active ;
                }
            ],
        ],
        'headerContainer' => ['style' => 'top:0px', 'class' => 'kv-table-header'], // offset from top
        'floatHeader' => true, // table header floats when you scroll
        'floatPageSummary' => true, // table page summary floats when you scroll
        'floatFooter' => false, // disable floating of table footer
        'pjax' => true, // pjax is set to always false for this demo

        // parameters from the demo form
        'responsive' => false,
        'bordered' => false,
        'striped' => false,
        'condensed' => false,
        'hover' => true,
        // 'showPageSummary' => true,   
        // set your toolbar
        'toolbar' =>  [
                [
                    'content' =>
                        Html::button(
                            '<i class="fas fa-plus"></i> Tambah Data',
                                [
                                    'value' => Url::to(['create']),
                                    'title' => 'Tambah Data',
                                    'class' => 'showModalButton btn btn-primary',
                                ]
                            ),
                            'options' => ['class' => 'btn-group mr-2 me-2'],
                ],
                '{export}',
                '{toggleData}'
        ],
        'toggleDataContainer' => ['class' => 'btn-group mr-2'],
        'toggleDataOptions' => ['minCount' => 100],
        // set export properties
        'export' => [
            'fontAwesome' => true,
            'options' => ['class' => 'btn btn-outline-secondary btn dropdown-toggle btn mr-2 me-2'],
            'icon' => 'fas fa-download',
            
        ],
        'panel' => [
            'type' => GridView::TYPE_PRIMARY,
            'heading' => $this->title ,        
            // 'before' => '<div style="padding-top: 7px;"><em>* Resize table columns just like a spreadsheet by dragging the column edges.</em></div>',
            // 'after' => '<div style="padding-top: 7px;"><em>* Resize table columns just like a spreadsheet by dragging the column edges.</em></div>',
            
        ],
        'persistResize' => false,
        'exportConfig' => [
            GridView::EXCEL =>  [
                'filename' => $this->title . date("Y-m-d"),
                'showPageSummary' => true,
            ]
        ],
    ]); ?>
</div>