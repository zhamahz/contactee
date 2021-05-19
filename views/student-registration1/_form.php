<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\StudentRegistration1 */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="student-registration1-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'id_user')->textInput() ?>

    <?= $form->field($model, 'fullname')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'gender')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'birthday')->textInput() ?>

    <?= $form->field($model, 'id_country')->textInput() ?>

    <?= $form->field($model, 'email')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'photo_passport')->textInput() ?>

    <?= $form->field($model, 'pdf_attestat')->textInput() ?>

    <?= $form->field($model, 'pdf_motivation')->textInput() ?>

    <?= $form->field($model, 'id_uni_1')->textInput() ?>

    <?= $form->field($model, 'id_program_1')->textInput() ?>

    <?= $form->field($model, 'datetime_reg_1')->textInput() ?>

    <?= $form->field($model, 'id_uni_2')->textInput() ?>

    <?= $form->field($model, 'id_program_2')->textInput() ?>

    <?= $form->field($model, 'datetime_reg_2')->textInput() ?>

    <?= $form->field($model, 'id_uni_3')->textInput() ?>

    <?= $form->field($model, 'id_program_3')->textInput() ?>

    <?= $form->field($model, 'datetime_reg_3')->textInput() ?>

    <?= $form->field($model, 'id_uni_4')->textInput() ?>

    <?= $form->field($model, 'id_program_4')->textInput() ?>

    <?= $form->field($model, 'datetime_reg_4')->textInput() ?>

    <?= $form->field($model, 'id_uni_5')->textInput() ?>

    <?= $form->field($model, 'id_program_5')->textInput() ?>

    <?= $form->field($model, 'datetime_reg_5')->textInput() ?>

    <?= $form->field($model, 'id_uni_accepted_1')->textInput() ?>

    <?= $form->field($model, 'id_uni_accepted_2')->textInput() ?>

    <?= $form->field($model, 'id_uni_accepted_3')->textInput() ?>

    <?= $form->field($model, 'id_uni_accepted_4')->textInput() ?>

    <?= $form->field($model, 'id_uni_accepted_5')->textInput() ?>

    <?= $form->field($model, 'visa')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'datetime_visa')->textInput() ?>

    <?= $form->field($model, 'status_visa')->textarea(['rows' => 6]) ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
