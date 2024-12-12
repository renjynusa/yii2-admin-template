

<div class="container-fluid">
<div class="row">
            <!-- Left section -->
            
            <div class="auth" data-flashdata="<?= Yii::$app->session->getFlash('auth') ?>"></div>

            <div class="col-md-8 d-none d-md-flex align-items-center justify-content-center text-center text-white left-section">
                <div>
                    <div class="logo">
                        <img src="image/logo.webp" alt="Logo">
                    </div>
                    <h5 class="text-brand">PEMERINTAH PROVINSI JAWA TENGAH</h5>
                    <h2 class="text-brand">Sistem Informasi Pemungutan Pajak Alat Berat (PAB)</h2>
                </div>
            </div>

            <!-- Right section -->
            <div class="col-md-4 login-container">
                <div class="login-form">
                    
                    <h1>Login</h1>
                    <p class="text-center">masukan username dan password anda untuk login</p>
                    
                    <?php

                

                      use yii\helpers\Html;

                      $form = \yii\bootstrap4\ActiveForm::begin(['id' => 'login-form']) ?>

                      <?= $form->field($model,'username', [
                          'options' => ['class' => 'form-group has-feedback']
                      ])
                          ->textInput(['placeholder' => $model->getAttributeLabel('username'), 'class' => 'form-control form-control']) ?>

                      <?= $form->field($model, 'password', [
                          'options' => ['class' => 'form-group has-feedback'],
                      ])
                          ->passwordInput(['placeholder' => $model->getAttributeLabel('password'), 'class' => 'form-control form-control']) ?>

                      <?= Html::submitButton('Login <i class="fas fa-sign-in-alt"></i>', ['class' => 'btn btn-dark btn-block']) ?>
                          

                <?php \yii\bootstrap4\ActiveForm::end(); ?>
                </div>
            </div>

        <p class="text-brand footer-text">Berdasarkan Peraturan Daerah Jawa Tengah No. 12/2023 Tentang Pajak Dan Retribusi Daerah</p>
        <button class="info-button">Info NJAB</button>
        </div>
</div>
