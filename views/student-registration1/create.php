<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\StudentRegistration1 */

$this->title = 'Create Student Registration1';
$this->params['breadcrumbs'][] = ['label' => 'Student Registration1s', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="student-registration1-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
