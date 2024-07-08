<?php

use backend\models\Login;
use yii\helpers\Html;
use kartik\form\ActiveForm;
use yii\widgets\DetailView;
use backend\models\Userrole;
use kartik\password\PasswordInput;
use kartik\switchinput\SwitchInput;
use yii\bootstrap4\Modal;
use yii\helpers\Url;
use yii\helpers\Utils;
/* @var $this yii\web\View */
/* @var $model backend\models\Login */

if (Yii::$app->user->isGuest) {
    header("Location: index.php");
    exit;
}


$script = <<< JS

console.log(123)
// document.addEventListener('DOMContentLoaded', function() {
        // Mengambil referensi ke elemen <td> dengan kelas 'kv-meter-container'
        var tdElement = document.querySelector('td.kv-meter-container');

        // Jika elemen ditemukan, hapus kelas 'kv-meter-container'
        if (tdElement) {
            tdElement.classList.remove('kv-meter-container');
        }
    // });

JS;
$this->registerJs($script);
$this->title = "Detail Login";
// $this->params['breadcrumbs'][] = ['label' => 'Data Login', 'url' => ['index']];
// $this->params['breadcrumbs'][] = $this->title;
?>
<div class="login-view">
    <div class="col-12 col-sm-6 col-md-4 d-flex align-items-stretch flex-column">
        <div class="card bg-light d-flex flex-fill">
            <div class="card-header text-muted border-bottom-0">
                Staff Laboratorium Lingkungan <br>
                PT. Cito Diagnostika Utama
            </div>
            <div class="card-body pt-0">
                <div class="row">
                    <div class="col-7">
                        <h1 class="lead"><b><?= $model->nama ?></b></h1>
                        <p class="text-muted text-sm"><b>Email : </b> <?= $model->email ?> </p>
                        <p class="text-muted text-sm"><b>Status : </b> <?= $model->is_active == 1 ? 'Aktif' : 'Nonaktif'; ?> </p>
                        <!-- <ul class="ml-4 mb-0 fa-ul text-muted">
                            <li class="small"><span class="fa-li"><i class="fas fa-lg fa-building"></i></span> Address: Demo Street 123, Demo City 04312, NJ</li>
                            <li class="small"><span class="fa-li"><i class="fas fa-lg fa-phone"></i></span> Phone #: + 800 - 12 12 23 52</li>
                        </ul> -->
                    </div>
                    <div class="col-5 text-center">
                        <img src="<?=Login::getFotoUser() ?>" alt="user-avatar" class="img-circle img-fluid">
                    </div>
                </div>
            </div>
                <div class="card-footer">
                    <div class="text-right">
                        <?= Html::button(
                                '<i class="fa fa-pencil-alt"></i>',
                                [
                                    'value' => Url::to(['update', 'id' => $model->id_login]),
                                    'title' => 'Form',
                                    'class' => 'showModalButton btn btn-primary',
                                ]
                            );
                        ?>
                        <?= Utils::setConfirmationStatus($model, 'is_active')
                        ?>
                        <?php Modal::begin([
                                'title'=>'Hak Akses',
                                'size' => 'modal-xl',
                                'toggleButton' => [
                                    'label'=>'<i class="fas fa-user-cog"></i>&nbsp;Hak Akses', 'class'=>'btn btn-success'
                                ],
                            ]); ?>

                            <div class="box box-success">
                                <div class="box-body">

                                    <?= Html::beginForm(['login/hakakses', 'id' => $model->id_login], 'post') ?>
                                    <?= Html::hiddenInput("id", $model->id_login) ?>

                                    <div class="row">
                                        <?php
                                            $count = 0; // Inisialisasi variabel hitung untuk melacak jumlah data pada setiap baris
                                            foreach ($hakakses as $data) { 
                                                $cek = Userrole::find()->where(["id_system_role" => $data->id_system_role, "id_login" => $model->id_login])->count();
                                                $value = "0";
                                                if ($cek > 0) $value = "1"; ?>

                                                <div class="col-md-4">
                                                    <div class="row">
                                                        <div class="col-md-2" style="padding: 0;">
                                                            <?= SwitchInput::widget([
                                                                'name' => 'data[' . $data->id_system_role . ']',
                                                                // 'inlineLabel' => true,
                                                                'value'=> $value,
                                                                'pluginOptions' => [
                                                                    // 'label' => $data->nama_role,
                                                                    'onText' => '<i class="fas fa-check"></i>',
                                                                    'offText' => '<i class="fas fa-times"></i>',
                                                                    'onColor' => 'success',
                                                                    'offColor' => 'danger',
                                                                ]
                                                            ]); ?>
                                                        </div>
                                                        <div class="col-md-10" style="text-align: left;">
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
            
                            <?php Modal::end(); 
                        ?>
                        <?php Modal::begin([
                                'title'=>'Ubah Password',
                                'toggleButton' => [
                                    'label'=>'<i class="fas fa-lock"></i> Ubah Password', 'class'=>'btn btn-primary '
                                ],
                            ]); ?>

                            <div class="box box-success">
                                <div class="box-body" style="text-align: left;">

                                    <?= Html::beginForm(['login/change-password', 'id' => $model->id_login], 'post') ?>
                                    <?= Html::hiddenInput("id", $model->id_login) ?>

                                    <label for="password1">Masukan Password Baru</label>
                                    <!-- <input type="password" name="password1" class="form-control mb-3"> -->
                                    <?php echo PasswordInput::widget([
                                            'name' => 'password1',
                                            // 'options' => ['class' => 'form-control'],
                                            'pluginOptions' => ['showMeter' => false]
                                        ]); 
                                    ?>

                                    <br>
                                    
                                    <label for="password2">Ulangi Password Baru</label>
                                    <!-- <input type="password" name="password2" class="form-control mb-3"> -->
                                    <?php echo PasswordInput::widget([
                                            'name' => 'password2',
                                            // 'options' => ['class' => 'form-control'],
                                            'pluginOptions' => ['showMeter' => false]
                                        ]); 
                                    ?>

                                    <?= Html::submitButton('Simpan', ['class' => 'btn btn-success float-right']) ?>
                                    <?= Html::endForm() ?>


                                </div>
                            </div>
        
                            <?php Modal::end(); 
                        ?> 
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<style>
    .img-circle {
        border-radius: 50%;
        width: 150px; /* Sesuaikan ukuran yang diinginkan */
        height:  150px; /* Sesuaikan ukuran yang diinginkan */
        object-fit: cover;
        border: 1px solid black; /* Tambahkan border hitam */
    }
</style>
