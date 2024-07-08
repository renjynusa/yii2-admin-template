<?php

namespace backend\models;

use Yii;
use yii\web\UploadedFile;
use backend\models\DataKecamatan;
use yii\helpers\ArrayHelper;
use yii\helpers\FileHelper;

/**
 * This is the model class for table "login".
 *
 * @property integer $id_login
 * @property string $username
 * @property string $password
 * @property string $nama
 */
class Login extends \yii\db\ActiveRecord implements \yii\web\IdentityInterface
{

    const STATUS_ACTIVE = 1;
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'login';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['username',  'nama', 'password'], 'required'],
            [['username'], 'string', 'max' => 200],
            [['username'], 'unique'],
            [['is_active'], 'integer'],
            [['password'], 'string', 'max' => 200],
            [['nama', 'email'], 'string', 'max' => 200],
            [['foto'], 'file', 'skipOnEmpty' => true, 'extensions' => 'png, jpg, jpeg'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id_login' => 'Id Login',
            'username' => 'Username',
            'password' => 'Password',
            'nama' => 'Nama',
            'foto' => 'Foto',
        ];
    }

    public static function findByUsername($username)
    {
        return self::findOne(['username' => $username, 'is_active' => self::STATUS_ACTIVE ]);
    }

    public function validatePassword($password)
    {

        return $this->password === md5($password);
    }

    public static function findIdentity($id)
    {
        return static::findOne(['id_login' => $id, 'is_active' => self::STATUS_ACTIVE]);
    }

    public static function findIdentityByAccessToken($token, $type = null)
    {
        // throw new NotSupportedException(); //I don't implement this method because I don't have any access token column in my database
    }

    public function getId()
    {
        return $this->id_login;
    }

    public function getAuthKey()
    {
        // throw new NotSupportedException();
        //return $this->authKey;//Here I return a value of my authKey column
    }

    public function validateAuthKey($authKey)
    {
        // throw new NotSupportedException();
        //return $this->authKey === $authKey;
    }

    public function beforeSave($insert)
    {
        if (parent::beforeSave($insert)) {
            

            if ($this->foto) {
                $filename = time() . "_" . str_replace(" ", "_", $this->foto->baseName) . '.' . $this->foto->extension;
                $this->foto->saveAs('upload/' . $filename);
                $this->foto = $filename;
            } else {
                if (Yii::$app->request->get('id')) {
                    $foto = Login::findOne(Yii::$app->request->get('id'));
                    $this->foto = $foto->foto;
                } else {
                    $this->foto = "img_avatar.png";
                }

            }
            return true;
        }
    }

    public static function getFotoLogin()
    {
        $dataLogin = Login::findOne(Yii::$app->user->identity->id);

        $filename = $dataLogin->foto;

        // Path lengkap file
        $file_path = 'upload/';

        if ($dataLogin->foto != '') {
            
            // Jika tidak ada file di direktori
            if (!file_exists($file_path . $filename)) {
                $images = $file_path . "image-not-found.jpg";
            } else {
                $images = $file_path . $filename;
            }

        } else {
            $images = $file_path . "no_image.jpg";
            // var_dump("aa"); die;
        }

        return $images;
    }

    public static function getFotoUser()
    {
        $dataLogin = Login::findOne(Yii::$app->request->get('id'));

        // Nama file yang ingin Anda periksa keberadaannya
        $filename = $dataLogin->foto;

        // Path lengkap file
        $file_path = 'upload/';

        if ($dataLogin->foto != '') {
            
            // Jika tidak ada file di direktori
            if (!file_exists($file_path . $filename)) {
                $images = $file_path . "image-not-found.jpg";
            } else {
                $images = $file_path . $filename;
            }

        } else {
            $images = $file_path . "no_image.jpg";
            // var_dump("aa"); die;
        }

        return $images;
    }

    public static function getSelect2Marketing()
    {
        $var = ArrayHelper::map(
            Login::find()
                // ->select(['user_role.id_login', 'login.nama as nama'])
                ->leftJoin("user_role", "user_role.id_login = login.id_login")
                ->leftJoin("system_role", "system_role.id_system_role = user_role.id_system_role")
                ->where(['login.is_active' => 1])
                ->andWhere([
                    'or',
                    ['system_role.nama_role' => 'MARKETING'],
                    ['system_role.nama_role' => 'MARKETING SEMARANG'],
                    ['system_role.nama_role' => 'MARKETING CIREBON']
                ])
                ->orderBy("nama")
                ->all(),
            'id_login',
            function ($model) {
                return $model['nama'];
            }
        );

        return $var;
    }

    public static function getSelect2Cs()
    {
        $var = ArrayHelper::map(
            Login::find()
                // ->select(['user_role.id_login', 'login.nama as nama'])
                ->leftJoin("user_role", "user_role.id_login = login.id_login")
                ->leftJoin("system_role", "system_role.id_system_role = user_role.id_system_role")
                ->where(['login.is_active' => 1])
                ->andWhere([
                    'or',
                    ['system_role.nama_role' => 'CUSTOMER SERVICE'],
                    ['system_role.nama_role' => 'CUSTOMER SERVICE SEMARANG'],
                    ['system_role.nama_role' => 'CUSTOMER SERVICE CIREBON']
                ])
                ->orderBy("nama")
                ->all(),
            'id_login',
            function ($model) {
                return $model['nama'];
            }
        );

        return $var;
    }

    public static function getSelect2Petugas()
    {
        $var = ArrayHelper::map(
            Login::find()
                // ->select(['user_role.id_login', 'login.nama as nama'])
                ->leftJoin("user_role", "user_role.id_login = login.id_login")
                ->leftJoin("system_role", "system_role.id_system_role = user_role.id_system_role")
                ->where(['login.is_active' => 1])
                ->andWhere([
                    'or',
                    ['system_role.nama_role' => 'PETUGAS PENGAMBIL CONTOH']
                ])
                ->orderBy("nama")
                ->all(),
            'id_login',
            function ($model) {
                return $model['nama'];
            }
        );

        return $var;
    }

    public static function getSelect2Pendamping()
    {
        $var = ArrayHelper::map(
            Login::find()
                // ->select(['user_role.id_login', 'login.nama as nama'])
                ->leftJoin("user_role", "user_role.id_login = login.id_login")
                ->leftJoin("system_role", "system_role.id_system_role = user_role.id_system_role")
                ->where(['login.is_active' => 1])
                ->andWhere([
                    'or',
                    ['system_role.nama_role' => 'PENDAMPING PPC'],
                ])
                ->orderBy("nama")
                ->all(),
            'id_login',
            function ($model) {
                return $model['nama'];
            }
        );

        return $var;
    }

    public static function getSelect2AnalisFiskim()
    {
        $var = ArrayHelper::map(
            Login::find()
                // ->select(['user_role.id_login', 'login.nama as nama'])
                ->leftJoin("user_role", "user_role.id_login = login.id_login")
                ->leftJoin("system_role", "system_role.id_system_role = user_role.id_system_role")
                ->where(['login.is_active' => 1])
                ->andWhere([
                    'or',
                    ['system_role.nama_role' => 'ANALISIS FISKIM'],
                ])
                ->orderBy("nama")
                ->all(),
            'id_login',
            function ($model) {
                return $model['nama'];
            }
        );

        return $var;
    }

    public static function getSelect2AnalisMikro()
    {
        $var = ArrayHelper::map(
            Login::find()
                // ->select(['user_role.id_login', 'login.nama as nama'])
                ->leftJoin("user_role", "user_role.id_login = login.id_login")
                ->leftJoin("system_role", "system_role.id_system_role = user_role.id_system_role")
                ->where(['login.is_active' => 1])
                ->andWhere([
                    'or',
                    ['system_role.nama_role' => 'ANALISIS MIKRO'],
                ])
                ->orderBy("nama")
                ->all(),
            'id_login',
            function ($model) {
                return $model['nama'];
            }
        );

        return $var;
    }

    public static function getSelect2Analis()
    {
        $var = ArrayHelper::map(
            Login::find()
                ->select(['user_role.id_login', 'login.nama', 'system_role.nama_role'])
                ->leftJoin("user_role", "user_role.id_login = login.id_login")
                ->leftJoin("system_role", "system_role.id_system_role = user_role.id_system_role")
                ->where(['login.is_active' => 1])
                ->andWhere([
                    'or',
                    ['system_role.nama_role' => 'ANALISIS FISKIM'],
                    ['system_role.nama_role' => 'ANALISIS MIKRO'],
                ])
                ->orderBy("nama")
                ->asArray()
                ->all(),
            'id_login', 'nama', 'nama_role'
        );

        return $var;
    }

    public static function getSelect2Penyelia()
    {
        $var = ArrayHelper::map(
            Login::find()
                ->select(['user_role.id_login', 'login.nama', 'system_role.nama_role'])
                ->leftJoin("user_role", "user_role.id_login = login.id_login")
                ->leftJoin("system_role", "system_role.id_system_role = user_role.id_system_role")
                ->where(['login.is_active' => 1])
                ->andWhere([
                    'or',
                    ['system_role.nama_role' => 'PENYELIA FISKIM'],
                    ['system_role.nama_role' => 'PENYELIA MIKRO'],
                ])
                ->orderBy("nama")
                ->all(),
            'id_login', 'nama', 'nama_role'
        );

        return $var;
    }

    public static function getSelect2PenyeliaMikro()
    {
        $var = ArrayHelper::map(
            Login::find()
                // ->select(['user_role.id_login', 'login.nama as nama'])
                ->leftJoin("user_role", "user_role.id_login = login.id_login")
                ->leftJoin("system_role", "system_role.id_system_role = user_role.id_system_role")
                ->where(['login.is_active' => 1])
                ->andWhere([
                    'or',
                    ['system_role.nama_role' => 'PENYELIA MIKRO'],
                ])
                ->orderBy("nama")
                ->all(),
            'id_login',
            function ($model) {
                return $model['nama'];
            }
        );

        return $var;
    }

    public static function getSelect2PenyeliaFiskim()
    {
        $var = ArrayHelper::map(
            Login::find()
                // ->select(['user_role.id_login', 'login.nama as nama'])
                ->leftJoin("user_role", "user_role.id_login = login.id_login")
                ->leftJoin("system_role", "system_role.id_system_role = user_role.id_system_role")
                ->where(['login.is_active' => 1])
                ->andWhere([
                    'or',
                    ['system_role.nama_role' => 'PENYELIA FISKIM'],
                ])
                ->orderBy("nama")
                ->all(),
            'id_login',
            function ($model) {
                return $model['nama'];
            }
        );

        return $var;
    }

    public static function getDataNama($id)
    {
        $dataLogin = Login::findOne($id);

        $namaLogin = $dataLogin->nama ?? 'Data Belum Terinput';

        return $namaLogin ;
    }

}
