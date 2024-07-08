<?php

namespace backend\components;

use yii\base\Component;

class Wrapper extends Component
{
  public $content;

  public function init()
  {
    parent::init();
  }

  public function box($content = null, $class = "primary")
  {
    if ($content != null) {
      $this->content = $content;
    }
    return '
      <div class="box box-'.$class.'">
        <div class="box-header">
            <div class="col-md-12" style="padding: 0;">
                <div class="box-body">' . $this->content .
                '</div>
            </div>
          </div>
      </div>';
  }

  public function boxStart($title = null, $tools = null) {
    return '<div class="box box-primary box-solid">
              <div class="box-header with-border">
                <h3 class="box-title">' . $title . '</h3>
                <div class="box-tools pull-right">
                '. $tools  .'
                
                </div>
              </div>
              <div class="box-body">';
  }

  public function boxEnd() {
    return '</div></div>';
  }
}
