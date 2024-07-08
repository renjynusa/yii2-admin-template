<?php

use backend\models\Contohuji;
use backend\models\ContohujiMetode;
use backend\models\Customer;
use backend\models\ParameterPaket;
use backend\models\Pendaftaran;
use backend\models\PendaftaranParameter;
use backend\models\PendaftaranPengujian;
use backend\models\SignaturePad;
use yii\helpers\Html;
use yii\widgets\ActiveForm;

// $url = $_SERVER['REQUEST_URI'];

// // Parsir URL
// $parsedUrl = parse_url($url);

// // Mendapatkan bagian query string (parameter) dari URL
// $queryString = $parsedUrl['query'];

// // Mendapatkan nilai parameter 'r'
// parse_str($queryString, $params);
// $route = isset($params['r']) ? $params['r'] : '';

// // Jika 'r' ditemukan, ambil bagian setelah karakter terakhir '/'
// if ($route) {
//     // Membagi string dengan '/' dan mengambil bagian terakhir
//     $parts = explode('/', $route);
//     $controllerAction = end($parts);
//     // echo "Nama controller: " . $controllerAction;
// } else {
//     // echo "Tidak ada parameter 'r' yang ditemukan.";
// } 
$idDecode = base64_decode($_GET['id']);
// var_dump($idDecode);die;
$modelSign = new SignaturePad();
$model = Pendaftaran::findOne($idDecode);
// var_dump($model);die;
// $model = Pendaftaran::findOne($_GET['id']);
$dataPengujian = PendaftaranPengujian::findAll(['id_pendaftaran' => $model->id_daftar]);
$dataParameter = PendaftaranParameter::findAll(['id_pendaftaran' => $model->id_daftar, 'is_single' => 1]);
$detailCustomer = Customer::getDetailCustomer($model->id_daftar);
$detailPembayaran = Pendaftaran::getStatusPembayaran($model->id_daftar);
$detailParamaterMandiri = Contohuji::findAll(['id_daftar' => $model->id_daftar, 'id_pendaftaran_detail' => 0]);



\backend\assets\AppAsset::register($this);
\hail812\adminlte3\assets\FontAwesomeAsset::register($this);
\hail812\adminlte3\assets\AdminLteAsset::register($this);

$this->registerCssFile('https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback');

?>

<?php $this->beginPage() ?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="<?= Yii::$app->charset ?>">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>CDU Lab | Form TTD</title>
    <!-- <link rel="stylesheet" href="sweetalert2/dist/sweetalert2.min.css"> -->
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://cdn.jsdelivr.net/npm/signature_pad@4.0.0/dist/signature_pad.umd.min.js"></script>
    <?php $this->registerCsrfMetaTags() ?>
    <?php $this->head() ?>
</head>
<body class="hold-transition" style="background-color:#dee2e6;">

    <?php  $this->beginBody() ?>

    <div class="signature-pad-form">
        <div class="container pt-3">
            <section class="card p-3">
                <div class="card-body">
                    <!-- Invoice Company Details -->
                    <div id="invoice-company-details" class="row">
                        <div class="col-md-4 col-sm-12 text-center text-md-left">
                            <div class="media">
                                <img src="image/logo-cito.jpg" alt="cdu" width="100px" class="brand-image img-circle elevation-3">
                                <div class="media-body ">
                                    <ul class="ml-2 px-0 list-unstyled">
                                        <li class="text-bold">CDU Lab</li>
                                        <li>PT. CITO DIAGNOSTIKA UTAMA</li>
                                        <li style="font-size: small;">Jalan Abdulrahman Saleh Blok ABC No.226</li>
                                        <li style="font-size: small;">Manyaran, Kec. Semarang Barat</li>
                                        <li style="font-size: small;">Kota Semarang, Jawa Tengah 50147</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-8 col-sm-12 text-center text-md-right">
                            <h2 class="text-bold">Form Detail Pemesanan & Tanda Tangan Customer</h2>
                            <p><?= Yii::$app->formatter->asDate($model->tanggal, 'php:d/m/Y') ?></p>
                            <ul class="px-0 list-unstyled">
                                <li style="font-size: 25px; text-style:bold;"><?= $detailPembayaran['status'] ?></li>
                                <li class="lead text-bold"><?= $detailPembayaran['pembayaran'] ?></li>
                                <li><?= $detailPembayaran['tanggal_bayar'] ?></li>
                            </ul>
                        </div>
                    </div>
                    <!--/ Invoice Company Details -->
                    <!-- Invoice Customer Details -->
                    <div id="invoice-customer-details" class="row">
                        <div class="col-md-6 col-sm-12 text-center text-md-left">
                            <p class="text-bold">Kepada Yth.</p>
                            <ul class="px-0 list-unstyled">
                                <li class="text-bold-800"><?= $detailCustomer['nama_customer'] ?></li>
                                <li><?= $detailCustomer['alamat_customer'] ?></li>
                                <li><?= $detailCustomer['cp_customer'] ?></li>
                                <li>Telp. (<?= $detailCustomer['telp_customer'] ?>)</li>
                            </ul>
                        </div>
                        <div class="col-md-6 col-sm-12 text-center text-md-right">
                            <ul class="px-0 list-unstyled">
                                <li class="text-bold">Estimasi hasil jadi.</li>
                                <li> 
                                <?php echo Yii::$app->formatter->asDate($model->estimasi_hasil_jadi, 'php:d/m/Y'); ?>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!--/ Invoice Customer Details -->
                    <!-- Invoice Items Details -->
                    <div id="invoice-items-details" class="pt-2">
                        <div class="row">
                            <?php foreach ($dataPengujian as $value) : ?>
                            <div class="table-responsive col-sm-12 pt-5">
                                <table class="table table-striped">
                                    <thead>
                                        <tr class="bg-teal">
                                            <th colspan="3" class="text-center">LAMPIRAN DATA PENGUJIAN</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <th colspan="2">Jenis Contoh Uji</th>
                                            <td><?= $value->bakumutu->kategori ?></td>
                                        </tr>
                                        <tr>
                                            <th colspan="2">Pengujian</th>
                                            <td><?= $value->bakumutu->pengujian ?></td>
                                        </tr>
                                        <tr>
                                            <th colspan="2">Keterangan</th>
                                            <td><?= $value->bakumutu->keterangan ?></td>
                                        </tr>
                                        <tr>
                                            <th colspan="2">Nama Bakumutu</th>
                                            <td><?= $value->bakumutu->nama ?></td>
                                        </tr>
                                        <tr>
                                            <th colspan="2">Prosedur Pengambilan Contoh Uji</th>
                                            <td><?= $value->bakumutu->prosedur ?></td>
                                        </tr>
                                        <tr class="bg-teal">
                                            <th class="text-center">No.</th>
                                            <th>Nama Parameter</th>
                                            <th>Metode</th>
                                        </tr>
                                        <?php 
                                            $checkDataTambahanParameter = PendaftaranParameter::findAll($value->id_pendaftaran_detail);
                                        
                                            $listParameter = ParameterPaket::findAll(['id_pendaftaran_pengujian' => $value->id_pendaftaran_detail, 'status' => 1]);
                                            foreach ($listParameter as $key => $data) { ?>
                                            <tr>
                                                <td class="text-center"><?= $key +1 ?></td>
                                                <td><?= replace($data->bakudetail->parameter->parameter) ?></td>
                                                <td><?= replace($data->bakudetail->parameter->nama_metode) ?></td>
                                            </tr>
                                            <?php }
                                            if ($checkDataTambahanParameter) {
                                        ?>
                                            <tr class="bg-teal text-center">
                                                <th colspan="3">Tambahan Parameter</th>
                                            </tr>
                                            <?php foreach ($checkDataTambahanParameter as $adds) { ?>
                                            
                                                <tr>
                                                    <td class="text-center"><?= $key++ ?></td>
                                                    <td><?= replace($adds->parameter->parameter) ?></td>
                                                    <td><?= replace($adds->parameter->nama_metode) ?></td>
                                                </tr>
                                        
                                            <?php }
                                        } ?>
                                    </tbody>
                                </table>
                            </div>
                            <?php endforeach ?>

                            <?php 
                                if ($detailParamaterMandiri) {
                                    foreach ($detailParamaterMandiri as $value) { ?>

                                        <div class="table-responsive col-sm-12 pt-5">
                                            <table class="table table-striped">
                                                <thead>
                                                    <tr class="bg-teal">
                                                        <th colspan="3" class="text-center">LAMPIRAN DATA PENGUJIAN (PARAMETER MANDIRI)</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <th colspan="2">Jenis Contoh Uji</th>
                                                        <td><?= $value->bakumutu_parameter == 0 ? '-' : $value->oneMetode->parameter->keterangan ?></td>
                                                    </tr>
                                                    <tr>
                                                        <th colspan="2">Nama Bakumutu</th>
                                                        <td><?= $value->bakumutu_parameter == 0 ? '-' : $value->bakumutuParameter->nama ?>  </td>
                                                    </tr>
                                                    <tr>
                                                        <th colspan="2">Prosedur Pengambilan Contoh Uji</th>
                                                        <td><?= $value->bakumutu_parameter == 0 ? '-' : $value->bakumutuParameter->prosedur ?>  </td>
                                                    </tr>
                                                    <tr class="bg-teal">
                                                        <th class="text-center" width='5%'>No.</th>
                                                        <th width='30%'>Nama Parameter</th>
                                                        <th>Metode</th>
                                                    </tr>
                                                    <?php 
                                                        $detParameter = ContohujiMetode::findAll(['id_contohuji' => $value->id_contohuji]);
                                                        $no = 0;
                                                        foreach ($detParameter as $data) { $no++ ?>
                                                        <tr>
                                                            <td class="text-center" width='5%'><?= $no ?></td>
                                                            <td width='30%'><?= replace($data->parameter->parameter) ?></td>
                                                            <td><?= replace($data->parameter->nama_metode) ?></td>
                                                        </tr>
                                                    <?php } ?>
                                                </tbody>
                                            </table>
                                        </div>

                                        <?php 
                                    }
                                } 
                            ?>
                        </div>
                    </div>

                    
                    <!-- Invoice Footer -->
                    <div id="invoice-footer">
                        <?php $form =  ActiveForm::begin([
                                'action' => ['signature-pad/form-ttd' , 'id' => base64_encode($model->id_daftar)],
                                'method' => 'post', // Menetapkan metode pengiriman form menjadi POST
                            ]); ?>
                            <div class="row pt-5">
                                <div class="col-md-7 col-sm-12">
                                    <label for="signatureCanvas">Tanda Tangan Disini.</label>
                                    <div class="form-group">
                                        <canvas id="signatureCanvas" width="400" height="200"></canvas>
                                        <br>
                                        <button class="btn btn-outline-danger" onclick="clearSignature()">Hapus Tanda Tangan</button>
                                    </div>
                                    <div class="form-group" hidden>
                                        <input type="text" name="img_ttd" id="img_ttd" class="form-control"'>
                                    </div>
                                </div>
                                <div class="col-md-5 col-sm-12">

                                    <?= $form->field($modelSign, 'atas_nama')->textInput(['maxlength' => true]) ?>
                                    
                                    <?= $form->field($modelSign, 'jabatan')->textInput(['maxlength' => true]) ?>
                                    
                                    <div class="form-group">
                                        <input type="submit" value="Simpan" class="btn btn-success" onclick="javascript: getDataImage();">
                                    </div>
                                    
                                    
                                </div>
                            </div>
                        <?php ActiveForm::end(); ?>
                    </div>
                    <!--/ Invoice Footer -->
                </div>
            </section>
        </div>
    </div>


    <?php $this->endBody() ?>

<!-- <script src="sweetalert2/dist/sweetalert2.all.min.js"></script> -->
</body>
</html>
<?php $this->endPage() ?>

<style>
    .table th, .table td {
        vertical-align: middle !important;
    }

    #signatureCanvas {
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.5); /* Bayangan */
        border-radius: 10px; /* Radius border */
    }
</style>

<script>

    var canvas = document.getElementById('signatureCanvas');
        

    var signaturePad = new SignaturePad(canvas, {
        backgroundColor: 'rgba(255, 255, 255)',
        penColor: 'rgb(0, 0, 0)'
    });

    function clearSignature() {
        signaturePad.clear();
    }

    function getDataImage() {
        var dataURL = signaturePad.toDataURL();
        var dataImg = document.getElementById('img_ttd');
        dataImg.value = dataURL;
    }


    function getSignatureData() {
        var dataURL = signaturePad.toDataURL();
        console.log(dataURL)

        getDataImage();

        var imgElement = document.getElementById('signatureImage');
        imgElement.src = dataURL;  
        imgElement.style.display = 'block';  

    }
    
    // var sig = canvas.signature({syncField: '#signature64', syncFormat: 'PNG'});
</script>
