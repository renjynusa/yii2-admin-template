<?php

namespace backend\controllers;

use backend\models\AuthAssignment;
use Yii;
use backend\models\Login;
use backend\models\LoginSearch;
use backend\models\Systemrole;
use backend\models\Userrole;
use backend\models\DataDesa;


use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\helpers\Utils;
use yii\web\UploadedFile;

/**
 * LoginController implements the CRUD actions for Login model.
 */
class LoginController extends Controller
{
    /**
     * {@inheritdoc}
     */
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['POST', 'GET'],
                ],
            ],
        ];
    }

    /**
     * Lists all Login models.
     * @return mixed
     */
    public function actionIndex()
    {
        if (Yii::$app->user->isGuest) {
            header("Location: index.php");
            exit;
        }

        $searchModel = new LoginSearch();
        
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        $dataProvider->pagination->pageSize = 50;

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Login model.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionView($id)
    {

        if (Utils::role('DEVELOPER')) {
            $hakakses = Systemrole::find()->orderBy("nama_role")->all();
        } else {
            $hakakses = Systemrole::find()->orderBy("nama_role")->where(['!=', 'nama_role', 'DEVELOPER'])->all();
        }

        return $this->render('view', [
            'model' => $this->findModel($id),
            'hakakses' => $hakakses,
        ]);
    }

    public function actionProfile($id)
    {
        if (Yii::$app->user->isGuest) {
            header("Location: index.php");
            exit;
        }

        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post())) {

            $model->foto = UploadedFile::getInstance($model, 'foto');
            if ($model->password == "") {
                $data = Login::findOne($id);
                $model->password = $data->password;
            } else {
                $model->password = md5($model->password);
            }
            $model->save(false);

            Yii::$app->user->logout();
            return $this->goHome();

            Yii::$app->session->setFlash('success', [['Berhasil!', '
                <p>Data Profil Di Ubah.</p>
                <p>Silahkan Login Dengan Username dan Password Yang Baru Diubah</p>
            ']]);
        }

        return $this->render('view_profile', [
            'model' => $this->findModel($id),
        ]);
    }

    public function actionHakakses($id)
    {
        if (Yii::$app->user->isGuest) { 
            header("Location: index.php");
            exit;
        }


        if (is_array(Yii::$app->request->post('data')))
        {
            Userrole::deleteAll(["id_login"=>$id]);
            AuthAssignment::deleteAll(["user_id"=>$id]);
            //echo var_dump(Yii::$app->request->post('data'))."<br>"; exit;
            foreach (Yii::$app->request->post('data') as $key => $data)
            {
                $cek = Userrole::find()->where(["id_system_role"=>$key, "id_login"=>$id])->count();
                if ($cek < 1)
                {
                    $simpan = new Userrole();
                    $simpan->id_system_role = $key;
                    $simpan->id_login = $id;
                    $simpan->save(false);
                    
                    $systemrole = SystemRole::findOne($key);
                    
                    $simpan = new AuthAssignment();
                    $simpan->item_name = $systemrole->nama_role;
                    $simpan->user_id = $id;
                    $simpan->save(false);
                    
                }
                
                
            }

            Yii::$app->session->setFlash("success","Data hak akses berhasil disimpan.");
        }
        else
        {
            Userrole::deleteAll(["id_login"=>$id]);
        }

        $hakakses = Systemrole::find()->orderBy("nama_role")->all();

        return $this->render('view', [
            'model' => $this->findModel($id),
            'hakakses' => $hakakses,
        ]);
    }

    /**
     * Creates a new Login model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        if (Yii::$app->user->isGuest) {
            header("Location: index.php");
            exit;
        }

        $model = new Login();

        if ($model->load(Yii::$app->request->post())) {

            // echo var_dump($_POST); exit;

            $model->foto = UploadedFile::getInstance($model, 'foto');

            if ($model->password != "") {
                $model->password = md5($model->password);
            }

            $model->created_at = Yii::$app->formatter->asDate(time(), 'php: Y-m-d');

            $model->save(false);

            if (empty($model->id_login)) {
                # code...
                Yii::$app->session->setFlash('danger', [['Perhatian!', 'Username yang di inputkan sudah di gunakan.']]);
                return $this->redirect(['create']);
            } else {
                # code...
                Yii::$app->session->setFlash('success', 'Disimpan');
                return $this->redirect(['view', 'id' => $model->id_login]);
            }
        }

        return $this->renderAjax('create', [
            'model' => $model,
        ]);
    }

    /**
     * Updates an existing Login model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {
        if (Yii::$app->user->isGuest) {
            header("Location: index.php");
            exit;
        }


        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post())) {

            
            // echo var_dump($_POST); exit;

            $model->foto = UploadedFile::getInstance($model, 'foto');
            // if ($model->password == "") {
            //     $data = Login::findOne($id);
            //     $model->password = $data->password;
            // } else {
            //     $model->password = md5($model->password);
            // }
            $model->save();


            Yii::$app->session->setFlash('success', 'Disimpan');
            return $this->redirect(['view', 'id' => $model->id_login]);
        }

        return $this->renderAjax('update', [
            'model' => $model,
        ]);
    }

    public function actionChangePassword($id) 
    {
        $model = Login::findOne($id);


        if ( $_POST['password1'] != $_POST['password2'] ) {
            
            Yii::$app->session->setFlash('error', 'Pastikan Inputan Password Sama');
            return $this->redirect(['view', 'id' => $id]);

        } else {

            $model->foto = UploadedFile::getInstance($model, 'foto');
            
            $model->password = md5($_POST['password1']);
            
            // var_dump(md5($_POST['password1'])); exit;
            $model->save(false);

            Yii::$app->session->setFlash('success', 'Diubah');
            return $this->redirect(['view', 'id' => $id]);
        }
        
    }

    /**
     * Deletes an existing Login model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionNonaktif($id)
    {
        if (Yii::$app->user->isGuest) {
            header("Location: index.php");
            exit;
        }

        Login::updateAll(['is_active' => 0], ['id_login' => $id]);

        Yii::$app->session->setFlash('success', 'Dinonaktifkan');
        return $this->redirect(['view', 'id' => $id]);
    }

    public function actionAktif($id)
    {
        if (Yii::$app->user->isGuest) {
            header("Location: index.php");
            exit;
        }

        Login::updateAll(['is_active' => 1], ['id_login' => $id]);

        Yii::$app->session->setFlash('success', 'Diaktifkan');
        return $this->redirect(['view', 'id' => $id]);
    }

    /**
     * Finds the Login model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Login the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Login::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}
