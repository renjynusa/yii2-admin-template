<?php

/* @var $this yii\web\View */
/* @var $name string */
/* @var $message string */
/* @var $exception Exception */

use yii\helpers\Html;

// $this->title = $name;
// $this->params['breadcrumbs'] = [['label' => $this->title]];
?>

<div class="error-page">
    <h2 class="headline text-danger">500</h2>

    <div class="error-content">
        <h3><i class="fas fa-exclamation-triangle text-danger"></i> Oops! Something went wrong.</h3>

        <p>
        We will work on fixing that right away.
        Meanwhile, you may <?= Html::a('return to dashboard', Yii::$app->homeUrl); ?> or try using the search form.
        </p>

        <form class="search-form">
        <div class="input-group">
            <input type="text" name="search" class="form-control" placeholder="Search">

            <div class="input-group-append">
            <button type="submit" name="submit" class="btn btn-danger"><i class="fas fa-search"></i>
            </button>
            </div>
        </div>
        <!-- /.input-group -->
        </form>
    </div>
</div>

