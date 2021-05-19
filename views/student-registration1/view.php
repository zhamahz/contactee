<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\StudentRegistration1 */

$this->title = $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Student Registration1s', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="student-registration1-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'id_user',
            'fullname',
            'gender',
            'birthday',
            'id_country',
            'email:email',
            'photo_passport',
            'pdf_attestat',
            'pdf_motivation',
            'id_uni_1',
            'id_program_1',
            'datetime_reg_1',
            'id_uni_2',
            'id_program_2',
            'datetime_reg_2',
            'id_uni_3',
            'id_program_3',
            'datetime_reg_3',
            'id_uni_4',
            'id_program_4',
            'datetime_reg_4',
            'id_uni_5',
            'id_program_5',
            'datetime_reg_5',
            'id_uni_accepted_1',
            'id_uni_accepted_2',
            'id_uni_accepted_3',
            'id_uni_accepted_4',
            'id_uni_accepted_5',
            'visa',
            'datetime_visa',
            'status_visa:ntext',
        ],
    ]) ?>

</div>
