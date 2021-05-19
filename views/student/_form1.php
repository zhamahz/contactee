<?php

use yii\helpers\ArrayHelper;
use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\StudentRegistration */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="student-registration-form">

    <?php $form = ActiveForm::begin(); ?>


    <div class="col-lg-6">
        <?= $form->field($model, 'id_uni_1',
            ['options' => ['tag' => false]])->dropDownList(ArrayHelper::map(\app\models\University::find()->all(), 'id', 'name')) ?>
    </div>
    <div class="col-lg-6">
        <?= $form->field($model, 'id_program_1',
            ['options' => ['tag' => false]])->dropDownList(ArrayHelper::map(\app\models\Programs::find()->all(), 'id', 'speciality')) ?>
    </div>
    <div class="col-lg-6">
        <?= $form->field($model, 'id_uni_2',
            ['options' => ['tag' => false]])->dropDownList(ArrayHelper::map(\app\models\University::find()->all(), 'id', 'name')) ?>
    </div>
    <div class="col-lg-6">
        <?= $form->field($model, 'id_program_2',
            ['options' => ['tag' => false]])->dropDownList(ArrayHelper::map(\app\models\Programs::find()->all(), 'id', 'speciality')) ?>
    </div>
    <div class="col-lg-6">
        <?= $form->field($model, 'id_uni_3',
            ['options' => ['tag' => false]])->dropDownList(ArrayHelper::map(\app\models\University::find()->all(), 'id', 'name')) ?>
    </div>
    <div class="col-lg-6">
        <?= $form->field($model, 'id_program_3',
            ['options' => ['tag' => false]])->dropDownList(ArrayHelper::map(\app\models\Programs::find()->all(), 'id', 'speciality')) ?>
    </div>
    <div class="col-lg-6">
        <?= $form->field($model, 'id_uni_4',
            ['options' => ['tag' => false]])->dropDownList(ArrayHelper::map(\app\models\University::find()->all(), 'id', 'name')) ?>
    </div>
    <div class="col-lg-6">
        <?= $form->field($model, 'id_program_4',
            ['options' => ['tag' => false]])->dropDownList(ArrayHelper::map(\app\models\Programs::find()->all(), 'id', 'speciality')) ?>
    </div>
    <div class="col-lg-6">
        <?= $form->field($model, 'id_uni_5',
            ['options' => ['tag' => false]])->dropDownList(ArrayHelper::map(\app\models\University::find()->all(), 'id', 'name')) ?>
    </div>
    <div class="col-lg-6">
        <?= $form->field($model, 'id_program_5',
            ['options' => ['tag' => false]])->dropDownList(ArrayHelper::map(\app\models\Programs::find()->all(), 'id', 'speciality')) ?>
    </div>
    <div class="col-lg-6">
        <div class="form-group">
            <?= Html::submitButton('Отправить', ['class' => 'btn btn-success']) ?>
        </div>
    </div>
    <?php ActiveForm::end(); ?>

</div>
