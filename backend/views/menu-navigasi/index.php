<?php

use backend\models\Userrole;
use yii\helpers\Html;
//use yii\grid\GridView;
use kartik\grid\GridView;
use yii\helpers\Url;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\MenuNavigasiSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Menu Navigasi';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="menu-navigasi-index">


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
                        return Html::a('<i class="fa fa-eye"></i>', $url, [
                            'title' => 'View Detail',
                            'class' => 'btn btn-sm btn-outline-primary'
                        ]);
                    },
                    'update' => function ($url, $model) {
                        return Html::button(
                            '<i class="fa fa-pencil-alt"></i>',
                            [
                                'value' => Url::to(['update', 'id' => $model->id_menu]),
                                'title' => 'Update Data',
                                'class' => 'showModalButton btn btn-sm btn-outline-primary',
                            ]
                        );
                    },
                ],
                'urlCreator' => function ($action, $model, $key, $index) {
                    if ($action === 'view') {
                        $url = 'index.php?r=menu-navigasi/view&id=' . $model->id_menu;
                        return $url;
                    }
                }
            ],

            'nama_menu',
            'url',

            'no_urut',
            'icon',
            
            [
                'class' => 'kartik\grid\BooleanColumn',
                'attribute' => 'status',
                'format'    => 'raw',
                'vAlign' => 'middle',
                'value'     => function ($model) {
                    return $model->status ;
                }
            ],
            
        ],
        'headerContainer' => ['style' => 'top:0px', 'class' => 'kv-table-header'], // offset from top
        'floatHeader' => true, // table header floats when you scroll
        'floatPageSummary' => true, // table page summary floats when you scroll
        'floatFooter' => false, // disable floating of table footer
        'pjax' => true, // pjax is set to always false for this demo
        // 'responsiveWrap' => false,
        // parameters from the demo form
        'responsive' => false,
        'bordered' => false,
        'striped' => false,
        'condensed' => false,
        'hover' => true,
        // 'showPageSummary' => true,   
        // set your toolbar
        // 'options' => ['class' => 'table-responsive'],
        'toolbar' =>  [
                [
                    'content' =>
                        Html::button(
                            '<i class="fas fa-plus"></i> Tambah Data',
                                [
                                    'value' => Url::to(['create']),
                                    'title' => 'Form',
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
        //     'before' => '<div class="card border-primary table-responsive">',
        // 'after' => '</div>',
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