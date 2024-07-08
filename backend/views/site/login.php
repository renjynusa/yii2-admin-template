

<div class="container-fluid ps-md-0">
  <div class="row g-0">
    <div class="d-none d-md-flex col-md-4 col-lg-6 bg-image"></div>
    <div class="col-md-8 col-lg-6">
      <div class="login d-flex align-items-center py-5">
        <div class="container">
          <div class="row">
            <div class="col-md-9 col-lg-8 mx-auto">

              <div class="auth" data-flashdata="<?= Yii::$app->session->getFlash('auth') ?>"></div>

              <img src="<?= Yii::$app->request->baseUrl.'/image/logo-cito.jpg' ?>" alt="logo">
              <h1 class="login-heading mb-4">Selamat Datang, <br> <b>CDU LABKESMAS</b></h1>

              

                <?php

                

                use yii\helpers\Html;

                $form = \yii\bootstrap4\ActiveForm::begin(['id' => 'login-form']) ?>

                <?= $form->field($model,'username', [
                    'options' => ['class' => 'form-group has-feedback'],
                    'inputTemplate' => '{input}<div class="input-group-append"><div class="input-group-text"><span class="fas fa-user"></span></div></div>',
                    'template' => '{beginWrapper}{input}{error}{endWrapper}',
                    'wrapperOptions' => ['class' => 'input-group mb-3']
                ])
                    ->label(false)
                    ->textInput(['placeholder' => $model->getAttributeLabel('username'), 'class' => 'form-control form-control-lg']) ?>

                <?= $form->field($model, 'password', [
                    'options' => ['class' => 'form-group has-feedback'],
                    'inputTemplate' => '{input}<div class="input-group-append"><div class="input-group-text"><span class="fas fa-lock"></span></div></div>',
                    'template' => '{beginWrapper}{input}{error}{endWrapper}',
                    'wrapperOptions' => ['class' => 'input-group mb-3']
                ])
                    ->label(false)
                    ->passwordInput(['placeholder' => $model->getAttributeLabel('password'), 'class' => 'form-control form-control-lg']) ?>

                <div class="row">
                    
                    <div class="col-4">
                        <?= Html::submitButton('Sign In', ['class' => 'btn btn-primary btn-block']) ?>
                    </div>
                </div>

                <?php \yii\bootstrap4\ActiveForm::end(); ?>
            
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
