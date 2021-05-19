<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\StudentRegistration1Search */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="student-registration1-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id') ?>

    <?= $form->field($model, 'id_user') ?>

    <?= $form->field($model, 'fullname') ?>

    <?= $form->field($model, 'gender') ?>

    <?= $form->field($model, 'birthday') ?>

    <?php // echo $form->field($model, 'id_country') ?>

    <?php // echo $form->field($model, 'email') ?>

    <?php // echo $form->field($model, 'photo_passport') ?>

    <?php // echo $form->field($model, 'pdf_attestat') ?>

    <?php // echo $form->field($model, 'pdf_motivation') ?>

    <?php // echo $form->field($model, 'id_uni_1') ?>

    <?php // echo $form->field($model, 'id_program_1') ?>

    <?php // echo $form->field($model, 'datetime_reg_1') ?>

    <?php // echo $form->field($model, 'id_uni_2') ?>

    <?php // echo $form->field($model, 'id_program_2') ?>

    <?php // echo $form->field($model, 'datetime_reg_2') ?>

    <?php // echo $form->field($model, 'id_uni_3') ?>

    <?php // echo $form->field($model, 'id_program_3') ?>

    <?php // echo $form->field($model, 'datetime_reg_3') ?>

    <?php // echo $form->field($model, 'id_uni_4') ?>

    <?php // echo $form->field($model, 'id_program_4') ?>

    <?php // echo $form->field($model, 'datetime_reg_4') ?>

    <?php // echo $form->field($model, 'id_uni_5') ?>

    <?php // echo $form->field($model, 'id_program_5') ?>

    <?php // echo $form->field($model, 'datetime_reg_5') ?>

    <?php // echo $form->field($model, 'id_uni_accepted_1') ?>

    <?php // echo $form->field($model, 'id_uni_accepted_2') ?>

    <?php // echo $form->field($model, 'id_uni_accepted_3') ?>

    <?php // echo $form->field($model, 'id_uni_accepted_4') ?>

    <?php // echo $form->field($model, 'id_uni_accepted_5') ?>

    <?php // echo $form->field($model, 'visa') ?>

    <?php // echo $form->field($model, 'datetime_visa') ?>

    <?php // echo $form->field($model, 'status_visa') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
