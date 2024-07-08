<?php

use yii\helpers\Html;
use kartik\grid\GridView;
use yii\helpers\Url;
use yii\helpers\Utils;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\SettingSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Data Perusahaan';
// $this->params['breadcrumbs'][] = $this->title;
?>
<div class="setting-index">


    <div class="container-fluid">
        <div class="row">
            <div class="col-md-3">

                <div class="card card-primary card-outline">
                    <div class="card-body box-profile">
                        <div class="text-center">
                            <img class="profile-user-img img-fluid img-circle" src="image/logo-cito.jpg" alt="User profile picture">
                        </div>
                        <h3 class="profile-username text-center"><?= Utils::getSettings('nama_perusahaan') ?></h3>
                        <p class="text-muted text-center">Laboratorium Kesehatan Masyarakat</p>
                        <ul class="list-group list-group-unbordered mb-3">
                            <li class="list-group-item">
                                <b>Direktur</b> <a class="float-right"><?= Utils::getSettings('direktur') ?></a>
                            </li>
                            <li class="list-group-item">
                                <b>Telp.</b> <a class="float-right"><?= Utils::getSettings('telepon') ?></a>
                            </li>
                            <li class="list-group-item">
                                <b>Email</b> <a class="float-right"><?= Utils::getSettings('email') ?></a>
                            </li>
                        </ul>
                        <!-- <a href="#" class="btn btn-primary btn-block"><b>Follow</b></a> -->
                    </div>
                </div>
            </div>

            <div class="col-md-9">
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
                            'template' => "{update}",
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
                                            'value' => Url::to(['update', 'id' => $model->id_setting]),
                                            'title' => 'Update Data',
                                            'class' => 'showModalButton btn btn-sm btn-outline-primary',
                                        ]
                                    );
                                },
                            ],
                            'urlCreator' => function ($action, $model, $key, $index) {
                                if ($action === 'view') {
                                    $url = 'index.php?r=setting/view&id=' . $model->id_setting;
                                    return $url;
                                }
                            }
                        ],

                        'nama',
                        'konten',

                        
                        
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
        </div>
    </div>
</div>