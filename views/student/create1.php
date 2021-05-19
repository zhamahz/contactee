<?php


use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\StudentRegistration */

$this->title = 'Подать заявление';
$this->params['breadcrumbs'][] = ['label' => 'Student Registrations', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="student-registration-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form1', [
        'model' => $model,
    ]) ?>

</div>
