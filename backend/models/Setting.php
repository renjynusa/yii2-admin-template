<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "setting".
 *
 * @property int $id_setting
 * @property string $nama
 * @property string $email
 * @property string $alamat
 * @property string $telepon
 * @property string $npwp
 * @property string $direktur
 */
class Setting extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'setting';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['nama', 'konten'], 'required'],
            [['nama', 'konten'], 'string', 'max' => 200],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_setting' => 'Id Setting',
            'nama' => 'Nama',
            'konten' => 'Konten'
        ];
    }

}
