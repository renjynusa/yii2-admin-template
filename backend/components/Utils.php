<?php

namespace yii\helpers;

use backend\models\Cabang;
use backend\models\ContohujiMetode;
use backend\models\JenisCustomer;
use backend\models\MenuNavigasi;
use backend\models\Login;
use backend\models\MenuNavigasiRole;
use backend\models\ParameterPaket;
use backend\models\Setting;
use InvalidArgumentException;
use Yii;

class Utils

{
    public static function getDsnAttribute($name, $dsn)
    {
        if (preg_match('/' . $name . '=([^;]*)/', $dsn, $match)) {
            return $match[1];
        } else {
            return null;
        }
    }

    public static function RoleAccess()
    {
        // bahan
        $role = Yii::$app->db->createCommand("SELECT system_role.id_system_role FROM user_role INNER JOIN system_role ON system_role.id_system_role = user_role.id_system_role WHERE user_role.id_login = " . Yii::$app->user->id)->query();

        $id_role = '';
        foreach ($role as $role) {
            $id_role .= $role['id_system_role'] . ',';
        }
        $in_id_role = substr($id_role, 0, -1);
        $menu = Yii::$app->controller->id;

        $menu_navigasi = MenuNavigasi::find()->where(["url" => $menu])->one();

        $userAccess = MenuNavigasiRole::find()->where(["in", "id_system_role", $in_id_role])->andWhere(['id_menu' => $menu_navigasi->id_menu])->count();

        if ($userAccess < 1) {
            return Yii::$app->response->redirect(Url::to(['site/blocked']));
        }
    }

    public static function role($role)
    {
        return in_array($role, Yii::$app->session->get('user_role'));
    }

    public static function getNomorRm($model, $kode, $select, $order)
    {

        $no_transaksi = '';
        $fromTable = $model::find()->select([$select])->orderBy(" $order DESC")->limit(1)->one();
        if (!empty($fromTable->$select)) {
            # code...
            $today = substr($fromTable->$select, 2, 8);
            // echo var_dump($today); die;
            if ($today == date('Ymd')) {
                # code...
                $noUrut = substr($fromTable->$select, -3);
                $noUrut++;
                $noUrut_2 = sprintf("%03s", $noUrut);
                $no_transaksi = $kode . date('Ymd') . $noUrut_2;
            } else {
                # code...
                $no_transaksi = $kode . date('Ymd') . '001';
            }
        } else {
            # code...
            $no_transaksi = $kode . date('Ymd') . '001';
            // echo var_dump($no_transaksi); die;
        }

        return $no_transaksi;
    }

    public static function UniqueRandomNumbers($string, $min, $max) {
        $numbers = random_int($min, $max);
        // shuffle($numbers);
        $generate = $string . $numbers;
        return $generate;
    }

    public static function setConfirmationStatus($model, $selectStatus) {
        // Validasi parameter
        if (!is_object($model) || !is_string($selectStatus)) {
            throw new InvalidArgumentException('Invalid parameters.');
        }

        // Penggunaan operator ternary
        $buttonLabel = ($model->$selectStatus == 0) ? '<i class="fas fa-check"></i> Aktifkan' : '<i class="fas fa-times"></i> Nonaktifkan';
        $buttonClass = ($model->$selectStatus == 0) ? 'tombol-aktif btn btn-success' : 'tombol-nonaktif btn btn-danger';

        return Html::a($buttonLabel, ($model->$selectStatus == 0) ? ['aktif', 'id' => $model->primaryKey] : ['nonaktif', 'id' => $model->primaryKey], [
            'class' => $buttonClass,
            'hidden' => !Utils::role('SYSTEM ADMINISTRATOR'),
            'data' => [
                'method' => 'post',
            ],
        ]);
    }

    public static function getSettings($nama) {

        return Setting::find()->select(['konten'])->where(['nama' => $nama])->scalar();
    }

    public static function arrayCabang()
    {
        $arr = ArrayHelper::map(Cabang::find()->orderBy("id_cabang")->all(), "id_cabang","nama");
        return $arr; 
    }

    public static function arrayJenisCustomer()
    {
        $arr = ArrayHelper::map(JenisCustomer::find()->orderBy("id_jenis_customer")->all(), "id_jenis_customer","nama");
        return $arr; 
    }

    public static function konversiTanggal($tanggal)
    {
        // Array nama hari dalam bahasa Indonesia
        $nama_hari = array("Minggu", "Senin", "Selasa", "Rabu", "Kamis", "Jumat", "Sabtu");

        // Array nama bulan dalam bahasa Indonesia
        $nama_bulan = array(
            "Januari", "Februari", "Maret", "April", "Mei", "Juni",
            "Juli", "Agustus", "September", "Oktober", "November", "Desember"
        );

        // Mengonversi format tanggal ke timestamp
        $timestamp = strtotime($tanggal);

        // Mengambil hari dalam format angka (0 untuk Minggu, 1 untuk Senin, dst.)
        $hari_angka = date("w", $timestamp);

        // Mengambil nama hari dalam bahasa Indonesia berdasarkan indeks dari array $nama_hari
        $nama_hari_indo = $nama_hari[$hari_angka];

        // Mengambil bulan dalam format angka (1 untuk Januari, 2 untuk Februari, dst.)
        $bulan_angka = date("n", $timestamp);

        // Mengambil nama bulan dalam bahasa Indonesia berdasarkan indeks dari array $nama_bulan
        $nama_bulan_indo = $nama_bulan[$bulan_angka - 1]; // dikurangi 1 karena array dimulai dari indeks 0

        // Mengambil tahun
        $tahun = date("Y", $timestamp);

        // Mengambil tanggal
        $tanggal_angka = date("j", $timestamp);

        // Mengembalikan tanggal dalam format yang diinginkan
        return [
            'hari' => "$nama_hari_indo",
            'data_lengkap' => "$nama_hari_indo, $tanggal_angka $nama_bulan_indo $tahun",
        ];
    }

    public static function getCurrentMonthName()
    {
        $currentMonth = date("n");
        $bulan = "";

        switch ($currentMonth) {
            case '1':
                $bulan = "I";
                break;
            case '2':
                $bulan = "II";
                break;
            case '3':
                $bulan = "III";
                break;
            case '4':
                $bulan = "IV";
                break;
            case '5':
                $bulan = "V";
                break;
            case '6':
                $bulan = "VI";
                break;
            case '7':
                $bulan = "VII";
                break;
            case '8':
                $bulan = "VIII";
                break;
            case '9':
                $bulan = "IX";
                break;
            case '10':
                $bulan = "X";
                break;
            case '11':
                $bulan = "XI";
                break;
            case '12':
                $bulan = "XII";
                break;
        }

        return $bulan;
    }

    public static function displayAlert($sppc, $modelPendaftaran, $kondisiRequestDeputi)
    {
        // Inisialisasi variabel untuk menyimpan pesan alert
        $alertMessage = '';

        // Logika untuk menambahkan pesan alert ke variabel sesuai dengan kondisi
        if (!empty($sppc)) {
            switch ($sppc->status) {
                case 8:
                    switch ($modelPendaftaran->request_deputi) {
                        case 1:
                            $alertMessage = self::getAlert('warning', 'Menunggu approval request revisi !', 'Data permintaan telah dikirimkan ke bagian Deputi.');
                            break;
                        case 2:
                            $alertMessage = self::getAlert('success', 'Request Revisi Berhasil Disetujui !', 'Silahkan revisi data pendaftaran. Harap simpan dan submit kembali data anda !');
                            break;
                        case 0:
                            $alertMessage = self::getAlert('info', 'Data Sedang Diproses / Direvisi !', 'Harap simpan dan submit kembali data anda !');
                            break;
                    }
                    break;
                case 1:
                    $alertMessage = self::getAlert('success', 'Berhasil diproses!', 'Sedang meminta penjadwalan ke penyelia PPC.');
                    break;
                case 2:
                    if ($kondisiRequestDeputi !== null) {
                        switch ($modelPendaftaran->request_deputi) {
                            case 3:
                                $alertMessage = self::getAlert('danger', 'Request Revisi Ditolak !', 'Dengan Catatan : ' . strip_tags($modelPendaftaran->catatan_deputi));
                                break;
                            default:
                                $alertMessage = self::getAlert('info', 'Data ini sudah diterima di Laboratorium !', 'Untuk merevisi data pendaftaran ini diperlukan proses approve Bagian Deputi terlebih dahulu.');
                                break;
                        }
                    } else {
                        $alertMessage = self::getAlert('primary', 'Data sudah dijadwalkan.', 'Data pendaftaran telah dilakukan penjadwalan oleh penyelia PPC.');
                    }
                    break;
                case 3:
                    $alertMessage = self::getAlert('warning', 'Request ke Penyelia PPC !', ' Meminta data untuk di Reschedule.');
                    break;
            }
        }

        // Menampilkan pesan alert hanya jika variabel $alertMessage tidak kosong
        if (!empty($alertMessage)) {
            echo $alertMessage;
        }
    }

    public static function getAlert($type, $title, $message)
    {
        return '<div class="alert alert-' . $type . ' alert-dismissible mt-2 pb-2">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                    <h4><i class="icon fas ' . self::getIcon($type) . '"></i> ' . $title . '</h4>
                    '.$message.'
                </div>';
    }

    public static function getIcon($type)
    {
        switch ($type) {
            case 'success':
                return 'fa-check';
            case 'info':
                return 'fa-info';
            case 'warning':
                return 'fa-exclamation-triangle';
            case 'danger':
                return 'fa-ban';
            default:
                return 'fa-info';
        }
    }

    public static function inputPengujianByHakAkses($model)
    {
        
        $parameter = ContohujiMetode::getParameterFromContohuji($model->id_contohuji);
        $detailParameter = ContohujiMetode::getParameterByHakAkses($model->id_contohuji);

        if ($model->id_pengujian != NULL) {
            $listParameter = ParameterPaket::getDetailParameter($model->id_pendaftaran_detail);
            
            // var_dump($listParameter['arrayFisika']);

            $anyIklimKerja = $listParameter['arrayIklimKerja'] ? 'IKLIM KERJA : ' . $listParameter['arrayIklimKerja'] . '<br><hr>' : '';

            $showParameterAdmin = $anyIklimKerja . 'FISIKA : ' . $listParameter['arrayFisika'] .'<br><hr>KIMIA : '. $listParameter['arrayKimia'] .'<br><hr>MIKROBIOLOGI : '. $listParameter['arrayMikro'];
            $showParameterFiskim = $anyIklimKerja . 'FISIKA : ' . $listParameter['arrayFisika'] .'<br><hr>KIMIA : '. $listParameter['arrayKimia'] ;
            $showParameterMikro = 'MIKROBIOLOGI : '.$listParameter['arrayMikro'];
        } else {
            $showParameterAdmin = '';
            $showParameterFiskim = '';
            $showParameterMikro = '';
        }

        $tglTerimaLabFiskim = self::konversiTanggal($model->tanggal_terima_lab);
        $tglTerimaLabMikro = self::konversiTanggal($model->tanggal_terima_lab_mikro);


        if (self::role('SYSTEM ADMINISTRATOR')) {
            $detail = self::generateDetail($model, $parameter, $detailParameter['arrayFiskim'], $detailParameter['arrayMikro']);
            $detailKonfirmasi = ($model->id_pengujian != null) ? 
                self::statusDataHasilPaketPengujian($model, $listParameter['arrayFisika'], $listParameter['arrayKimia'], $listParameter['arrayIklimKerja'], $listParameter['arrayMikro'])
                : self::statusDataHasilParameterMandiri($model, $detailParameter['arrayFiskim'], $detailParameter['arrayMikro']);
            $dataParameter = $showParameterAdmin;
            $tglTerimaLabDeskripsi = $tglTerimaLabFiskim['data_lengkap'] .' (Fiskim) <br>'. $tglTerimaLabMikro['data_lengkap'] . ' (Mikro)';
        } elseif (self::role('PENYELIA FISKIM')) {
            $detail = self::generateDetail($model, $parameter, $detailParameter['arrayFiskim'], null);
            $detailKonfirmasi = ($model->id_pengujian != null) ? 
                self::statusDataHasilPaketPengujian($model, $listParameter['arrayFisika'], $listParameter['arrayKimia'], $listParameter['arrayIklimKerja'], null)
                : self::statusDataHasilParameterMandiri($model, $detailParameter['arrayFiskim'], null);
            $dataParameter = $showParameterFiskim;
            $tglTerimaLabDeskripsi = $tglTerimaLabFiskim['data_lengkap'];
        } elseif (self::role('PENYELIA MIKRO')) {
            $detail = self::generateDetail($model, $parameter, null, $detailParameter['arrayMikro']);
            $detailKonfirmasi = ($model->id_pengujian != null) ? 
                self::statusDataHasilPaketPengujian($model, null, null, null, $listParameter['arrayMikro'])
                : self::statusDataHasilParameterMandiri($model, null, $detailParameter['arrayMikro']);
            $dataParameter = $showParameterMikro;
            $tglTerimaLabDeskripsi = $tglTerimaLabMikro['data_lengkap'];
        }

        return [
            'detail' => $detail,
            'dataParameter' => $dataParameter,
            'detailKonfirmasi' =>$detailKonfirmasi,
            'tglTerimaLabDeskripsi' =>$tglTerimaLabDeskripsi,
        ];
    }

    public static function generateDetail($model, $parameter, $fiskim = null, $mikro = null) {
        if ($model->id_pengujian == NULL) {
            if ($fiskim != null && $mikro != null) {
                $detail = $fiskim. ', ' .$mikro;
            } else {
                $detail = ($fiskim != null) ? $fiskim : $mikro;
            }
            
        } else {
            if (empty($parameter)) {
                $detail = replace($model->bakumutu->pengujian) . ' ' . $model->bakumutu->keterangan;
            } else {
                $add = ($fiskim || $mikro) ? "<br><br><i> Tambahan Parameter : <br>" . str_replace(', ', '<br>', $fiskim ?? '') .'<br>'. str_replace(', ', '<br>', $mikro ?? '') . "</i>" : '';
                $detail = replace($model->bakumutu->pengujian) . ' ' . $model->bakumutu->keterangan . $add;
            }
        }

        return $detail;
    } 

    public static function statusDataHasilPaketPengujian($model, $fisika = null, $kimia = null, $iklimKerja = null, $mikro = null)
    {
        if ($fisika != null && $kimia != null && $mikro != null){
            $detail = self::getStatusKonfimasiFiskim($model) .'<br>'. self::getStatusKonfimasiMikro($model);
        } else if ($fisika != null && $kimia != null && $mikro == null) {
            $detail = self::getStatusKonfimasiFiskim($model);
        } else if ($fisika == null && $kimia == null && $mikro != null) {
            $detail = self::getStatusKonfimasiMikro($model);
        } else {
            $detail = self::getStatusKonfimasiFiskim($model) ;
        }

        return $detail;
    }

    public static function statusDataHasilParameterMandiri($model, $fiskim = null, $mikro = null)
    {
        if ($fiskim != null && $mikro != null) {
            $detail = self::getStatusKonfimasiFiskim($model) . self::getStatusKonfimasiMikro($model);
        } else {
            $detail = ($fiskim != null) ? self::getStatusKonfimasiFiskim($model) : self::getStatusKonfimasiMikro($model);
        }

        return $detail;
    }

    public static function getStatusKonfimasiFiskim($model)
    {
        $tglVerifFiskim = Yii::$app->formatter->asDate($model->approve_date_fiskim, 'd-m-Y H:i:s');

        if ($model->approve_fiskim == 0 || $model->approve_fiskim == 1 && $model->status_uji_fiskim == 0) {
            $status = self::getAlertHasilPengujian('primary', 'Data Sedang Diproses Penyelia & Analis Fiskim');
        } elseif ($model->approve_fiskim == 1 && $model->status_uji_fiskim == 1) {
            $status = self::getAlertHasilPengujian('success', 'Terverifikasi Fiskim Tgl. '.$tglVerifFiskim.' oleh '.$model->penanggungjawabFiskim->nama);
        }  else if ($model->approve_fiskim == 2 && $model->status_uji_fiskim != 2 ){
            $status = self::getAlertHasilPengujian('primary', 'Sedang Direvisi Penyelia & Analis Fiskim !');
        } else if ( $model->status_uji_fiskim == 2){
            $status = self::getAlertHasilPengujian('danger', 'Terdapar Revisi dari PJ Teknis Untuk Penyelia Fiskim !');
        }
        
        return $status;
    }

    public static function getStatusKonfimasiMikro($model)
    {
        $tglVerifMikro = Yii::$app->formatter->asDate($model->approve_date_mikro, 'd-m-Y H:i:s');

        if ($model->approve_mikro == 0 || $model->approve_mikro == 1 && $model->status_uji_mikro == 0) {
            $status = self::getAlertHasilPengujian('primary', 'Data Sedang Diproses Penyelia & Analis Mikro');
        } elseif ($model->approve_mikro == 1 && $model->status_uji_mikro == 1) {
            $status = self::getAlertHasilPengujian('success', 'Terverifikasi Mikro Tgl. '.$tglVerifMikro.' oleh '.$model->penanggungjawabMikro->nama);
        } else if ($model->approve_mikro == 2 && $model->status_uji_mikro != 2 ){
            $status = self::getAlertHasilPengujian('primary', 'Sedang Direvisi Penyelia & Analis Mikro !');
        } else if ( $model->status_uji_mikro == 2){
            $status = self::getAlertHasilPengujian('danger', 'Terdapar Revisi dari PJ Teknis Untuk Penyelia Mikro !');
        }
        
        return $status;
    }

    public static function getAlertHasilPengujian($type, $message)
    {
        return '<div class="col-md-6 col-sm-6 col-12">
                    <div class="info-box">
                        <span class="info-box-icon bg-'.$type.'" style="color: #ffffff !important;">
                            <i class="icon fas ' . self::getIconHasilPengujian($type) . '"></i>
                        </span>
                        <div class="info-box-content">
                            <span class="info-box-text">' . $message . '</span>
                        </div>
                    </div>
                </div>';
    }

    public static function getIconHasilPengujian($type)
    {
        switch ($type) {
            case 'success':
                return 'fa-check-circle fa-lg"';
            case 'primary':
                return 'fa-sync-alt fa-spin';
            case 'warning':
                return 'fa-ban';
            case 'danger':
                return 'fa-exclamation-circle fa-lg';
            default:
                return 'fa-sync-alt fa-spin';
        }
    }

}
