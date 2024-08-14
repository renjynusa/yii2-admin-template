<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
use kartik\grid\GridView;
use backend\models\MenuNavigasiRole;
use backend\models\Userrole;
use kartik\switchinput\SwitchInput;
use yii\bootstrap4\Modal;
use yii\helpers\Url;
use yii\helpers\Utils;

/* @var $this yii\web\View */
/* @var $model backend\models\MenuNavigasi */

$this->title = "Detail Menu Navigasi: " . $model->nama_menu;
$this->params['breadcrumbs'][] = ['label' => 'Menu Navigasi', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="menu-navigasi-view">

    <p>
        <!-- <?= Html::a('<span class="glyphicon glyphicon-circle-arrow-left"></span> Kembali', ['index'], ['class' => 'btn btn-warning']) ?> -->
        <!-- <?= Html::a('<span class="glyphicon glyphicon-edit"></span> Ubah', ['update', 'id' => $model->id_menu], ['class' => 'btn btn-primary']) ?> -->
        <?= Html::a('<i class="fas fa-trash"></i> Hapus', ['delete', 'id' => $model->id_menu], [
            'class' => 'btn tombol-hapus btn-danger',
            'hidden' => !Utils::role('SYSTEM ADMINISTRATOR'),
            'data' => [
                'method' => 'post',
            ],
        ]) ?>
        <?php Modal::begin([
            'title' => 'Hak Akses Menu',
            'size' => 'modal-xl',
            'toggleButton' => [
                'label'=>'<i class="fas fa-user-cog"></i>&nbsp;Hak Akses', 'class'=>'btn btn-success'
            ],
        ]); ?>

        
            <div class="box box-success">
                <div class="box-body">
                    <?= Html::beginForm(['menu-navigasi/view', 'id' => $model->id_menu], 'post') ?>
                    <?= Html::hiddenInput("id", $model->id_menu) ?>
                    
                    <div class="row">
                        <?php
                        $count = 0; // Inisialisasi variabel hitung untuk melacak jumlah data pada setiap baris
                        foreach ($hakakses as $data) {
                            $cek = MenuNavigasiRole::find()->where(["id_system_role" => $data->id_system_role, "id_menu" => $model->id_menu])->count();
                            $value = "0";
                            if ($cek > 0) $value = "1";
                            ?>
                            <div class="col-md-4">
                                <div class="row">
                                    <div class="col-md-2" style="padding: 0;">
                                        <?= SwitchInput::widget([
                                            'name' => 'data[' . $data->id_system_role . ']',
                                            'value' => $value,
                                            'pluginOptions' => [
                                                'onText' => '<i class="fas fa-check"></i>',
                                                'offText' => '<i class="fas fa-times"></i>',
                                                'onColor' => 'success',
                                                'offColor' => 'danger',
                                            ]
                                        ]); ?>
                                    </div>
                                    <div class="col-md-10">
                                        <label class="control-label"><?= $data->nama_role ?></label>
                                    </div>
                                </div>
                            </div>
                            <?php
                            $count++;
                            // Jika sudah mencapai 5 data, tutup baris dan buat baris baru
                            if ($count % 6 === 0) {
                                echo '</div><div class="row">';
                            }
                        }
                        ?>
                    </div>

                    <?= Html::submitButton('Simpan Hak Akses', ['class' => 'btn btn-success float-right']) ?>
                    <?= Html::endForm() ?>

                </div>
            </div>
        
        <?php Modal::end(); ?> 
    </p>

    <div class="box box-success">
        <div class="box-header">
            <div class="col-md-12" style="padding: 0;">
                <div class="box-body">

                    <?= DetailView::widget([
                        'model' => $model,
                        'attributes' => [
                            // 'id_menu',
                            'nama_menu',
                            // 'url:url',
                            // 'id_parent',
                            // 'no_urut',
                            // 'icon',
                            [
                                'attribute' => 'status',
                                'format'    => 'raw',
                                'filter'    => array(0 => "Aktif", 1 => "Tidak Aktif"),
                                'value'     => function ($model) {
                                    return $model->status == 0 ? "<span class='label label-warning'>Tidak Aktif</span>" : "<span class='label label-success'>Aktif</span>";
                                }
                            ],
                        ],
                    ]) ?>

                    <?php if ($jumlahSubmenu > 0) { ?>

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
                                    'template' => "{view} {update} {delete}",
                                    'buttons' => [
                                        'view' => function ($url, $model) {
                                            return Html::a('<i class="fa fa-eye"></i>', $url, [
                                                'title' => Yii::t('app', 'View'),
                                                'class' => 'btn btn-sm btn-outline-primary'
                                            ]);
                                        },
                    
                                        'update' => function ($url, $model) {
                                            return Html::button(
                                                '<i class="fa fa-pencil-alt"></i>',
                                                [
                                                    'value' => Url::to(['update', 'id' => $model->id_menu, 'submenu' => $_GET['id']]),
                                                    'title' => 'Update Data',
                                                    'class' => 'showModalButton btn btn-sm btn-outline-primary',
                                                ]
                                            );
                                        },
                                        'delete' => function ($url, $model) {
                                            return Html::a('<button class = "btn btn-sm btn-outline-primary"><i class="fa fa-trash"></i></button>', $url, [
                                                'title' => Yii::t('app', 'Delete'),
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
                                            $url = 'index.php?r=menu-navigasi/delete&id=' . $model->id_menu;
                                            return $url;
                                        }
                                        if ($action === 'view') {
                                            $url = 'index.php?r=menu-navigasi/view&id=' . $model->id_menu;
                                            return $url;
                                        }
                                        // if ($action === 'update') {
                                        //     $url = 'index.php?r=menu-navigasi/update&id=' . $model->id_menu;
                                        //     return $url;
                                        // }
                                    }
                                ],
                                'nama_menu',
                                [
                                    'attribute' => 'parent',
                                    'visible'   => Utils::role('DEVELOPER') ? true : false,
                                    'value'     => function ($model) {
                                        return $model->parent == "" ? "" : $model->parent;
                                    }
                                ],
                                [
                                    'attribute' => 'parent',
                                    'label'     => 'Menu Utama',
                                    'value'     => function ($model) {
                                        return $model->parent == "" ? "" : $model->parent;
                                    }
                                ],
                                // 'no_urut',
                                // 'icon',
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
                    
                            // parameters from the demo form
                            'responsive' => false,
                            'bordered' => false,
                            'striped' => false,
                            'condensed' => false,
                            'hover' => true,
                            // 'showPageSummary' => true,   
                            // set your toolbar
                            'toolbar' =>  [
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
                                'heading' => 'Daftar ' . $this->title ,        
                                // 'before' => '<div style="padding-top: 7px;"><em>* Resize table columns just like a spreadsheet by dragging the column edges.</em></div>',
                                // 'after' => '<div style="padding-top: 7px;"><em>* Resize table columns just like a spreadsheet by dragging the column edges.</em></div>',
                                
                            ],
                            'persistResize' => false,
                            'exportConfig' => [
                                GridView::EXCEL =>  [
                                    'filename' => 'Data' . date("Y-m-d H.i"),
                                    'showPageSummary' => true,
                                ]
                            ],
                        ]); ?>

                    <?php } ?>

                </div>
            </div>
        </div>
    </div>
</div>