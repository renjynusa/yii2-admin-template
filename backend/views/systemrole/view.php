<?php

use backend\models\Userrole;
use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model backend\models\Systemrole */

if (Yii::$app->user->isGuest) {
	header("Location: index.php");
	exit;
}
$this->title = "Detail Hak Akses: " . $model->nama_role;
// $this->params['breadcrumbs'][] = ['label' => 'Data Hak Akses', 'url' => ['index']];
// $this->params['breadcrumbs'][] = $this->title;
?>
<div class="systemrole-view">


	<p>
		<?= Html::a('<span class="glyphicon glyphicon-trash"></span> Hapus', ['delete', 'id' => $model->id_system_role], [
			'class' => 'tombol-hapus btn btn-danger ',
			'hidden' => !Utils::role('SYSTEM ADMINISTRATOR'),
			'data' => [
				'method' => 'post',
			],
		]) ?>
	</p>
	<div class="box">
		<div class="box-header">
			<div class="col-md-12" style="padding: 0;">
				<div class="box-body">
					<?= DetailView::widget([
						'model' => $model,
						'attributes' => [
							// 'id_system_role',
							'nama_role',
						],
					]) ?>

					<br>
					<label>Daftar User:</label><br>
					<table class="table">
						<tr>
							<th>No.</th>
							<th>Nama</th>
						</tr>
						<?php
						$i = 0;
						foreach ($userrole as $data) {
							$i++;
							$nama = Yii::$app->db->createCommand("SELECT nama FROM login WHERE id_login = '$data[id_login]'")->queryScalar();
						?>
							<tr>
								<td align='left'><?= $i ?>.</td>
								
								<td><?= $nama ?></td>
								
							</tr>

						<?php
						}
						?>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>