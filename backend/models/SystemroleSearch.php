<?php

namespace backend\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\Systemrole;
use yii\helpers\Utils;

/**
 * SystemroleSearch represents the model behind the search form of `backend\models\Systemrole`.
 */
class SystemroleSearch extends Systemrole
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id_system_role'], 'integer'],
            [['nama_role'], 'safe'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = Systemrole::find();
        if (Utils::role('DEVELOPER')) {
            $query->orderBy('id_system_role DESC');
        } else {
            $query->where(['!=', 'nama_role', 'DEVELOPER']);
            $query->orderBy('id_system_role DESC');
        }

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'id_system_role' => $this->id_system_role,
        ]);

        $query->andFilterWhere(['like', 'nama_role', $this->nama_role]);

        return $dataProvider;
    }
}
