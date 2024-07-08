<?php

use backend\models\Login;
use backend\models\Systemrole;
use backend\models\Userrole;
use backend\models\MenuNavigasi;
use backend\models\MenuNavigasiRole;
?>
<aside class="main-sidebar elevation-4 sidebar-light-teal">
    <!-- Brand Logo -->
    <a href="index3.html" class="brand-link bg-teal" style="line-height: 2.5">
        <img src="image/logo-cito.jpg" alt="<?=  Yii::$app->name ?>" class="brand-image img-circle elevation-3" style="opacity: .8; margin-top: 3px; max-height: 40px">
        <span class="brand-text font-weight-dark text-dark"><?= Yii::$app->name ?></span>

    </a>


    <!-- Sidebar -->
    <div class="sidebar">
        <!-- Sidebar user panel (optional) -->
        <div class="user-panel mt-3 pb-3 mb-3 d-flex">
            <div class="image">
                
                <img src="<?= Login::getFotoLogin() ?>" class="img-circle elevation-2" alt="User Image" style="border-radius: 50%; width: 40px; height:  40px; object-fit: cover;">
                
            </div>
            <div class="info">
                <a href="#" class="d-block"><?= Yii::$app->user->identity->nama ?></a>
            </div>
        </div>

        <!-- SidebarSearch Form -->
        <!-- href be escaped -->
        <!-- <div class="form-inline">
            <div class="input-group" data-widget="sidebar-search">
                <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
                <div class="input-group-append">
                    <button class="btn btn-sidebar">
                        <i class="fas fa-search fa-fw"></i>
                    </button>
                </div>
            </div>
        </div> -->

        <?php 

            $hakakses = MenuNavigasiRole::find()->where(["in", "id_system_role", Yii::$app->session->get('user_role_id')])->asArray()->all();
          // mengambil data akses dari login admin id menu = 1, 3, 117 dst


            $menu = MenuNavigasi::find()->where(["id_parent" => 0, "status" => 1])
            ->andWhere(["in", "id_menu", $hakakses]) // mengambil data JUDUL menu contoh MASTER DATA, LOG , DATA LAINYA
            ->orderBy("no_urut")->all();

            $strMenu = array();

            $array_menu = array();
            foreach ($menu as $key => $data) {
                # code...
                $menu2 = MenuNavigasi::find()->where(["id_parent" => $data->id_menu, "status" => 1])
                ->andWhere(["in", "id_menu", $hakakses]) // mengambil data sub menu, data login, data pegAWAI DLL
                ->orderBy("no_urut")->all();

                $c = 0;
                $items = array();
                foreach ($menu2 as $data2) {

                    array_push($items, array(
                        'label' => $data2->nama_menu,
                        'icon' => $data2->icon,
                        'url' => "index.php?r=" . $data2->url,
                        'active' => $a = (Yii::$app->controller->id == $data2->url) ? 'active' : '',
                    ));

                    $b = ($a == 'active') ? 1 : 0;
                    $c += $b;
                }

                if ($menu2) {

                    $show = ($c > 0) ? 'show' : '';

                    // $array_menu = array();
                    array_push($strMenu, array(
                        'label' => $data->nama_menu,
                        'icon' => $data->icon,
                        'items' => $items,
                        'active' => ($c > 0) ? 'active' : '',
                    ));


                } else {

                    array_push($strMenu, array(
                        'label' => $data->nama_menu,
                        'icon' => $data->icon,
                        'url' => "index.php?r=" . $data->url,
                        'active' => (Yii::$app->controller->id == $data->url) ? 'active' : '',
                    ));

                    // echo var_dump(Yii::$app->controller->id );

                }
            }

            $template = '{label}';

            // Buat item-menu dengan menggunakan template
            $strMenu[] = [
                'label' => 'CITO LABKESMAS',
                // 'icon' => 'nav-icon fas fa-circle',
                // 'url' => '#',
                'options' => ['class' => 'nav-header'],
                'template' => $template,
            ];


        ?>



        <!-- Sidebar Menu -->
        <nav class="mt-2">
            <?php
            echo \hail812\adminlte\widgets\Menu::widget([
                'items' => $strMenu,

              // 'submenuTemplate' => "\n<ul class='nav'>\n{items}\n</ul>\n</div>\n",
              // 'activateParents'=>true,
              // 'encodeLabels' => false,
              // 'activeCssClass'=>'active',

                'options' => [
                    'class' => 'nav nav-pills nav-sidebar flex-column nav-flat nav-child-indent', // Tambahkan kelas ke elemen <ul>
                    'data-widget' => 'treeview', // Tambahkan atribut data-widget
                    'role' => 'menu', // Tambahkan atribut role
                    'data-accordion' => 'false', // Tambahkan atribut data-accordion
                ],
            ]);
            
            ?>

        </nav>
        <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>

