<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "log_activity".
 *
 * @property int $id
 * @property int $daftar_id
 * @property string $note
 * @property int $login_id
 * @property string $datetime
 */
class LogActivity extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'log_activity';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['daftar_id', 'note', 'login_id', 'datetime'], 'required'],
            [['daftar_id', 'login_id'], 'integer'],
            [['note'], 'string'],
            [['datetime'], 'safe'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'daftar_id' => 'Daftar ID',
            'note' => 'Note',
            'login_id' => 'Login ID',
            'datetime' => 'Datetime',
        ];
    }
}
