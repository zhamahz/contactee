<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\StudentRegistration1Search */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Student Registration1s';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="student-registration1-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Student Registration1', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            'id_user',
            'fullname',
            'gender',
            'birthday',
            //'id_country',
            //'email:email',
            //'photo_passport',
            //'pdf_attestat',
            //'pdf_motivation',
            //'id_uni_1',
            //'id_program_1',
            //'datetime_reg_1',
            //'id_uni_2',
            //'id_program_2',
            //'datetime_reg_2',
            //'id_uni_3',
            //'id_program_3',
            //'datetime_reg_3',
            //'id_uni_4',
            //'id_program_4',
            //'datetime_reg_4',
            //'id_uni_5',
            //'id_program_5',
            //'datetime_reg_5',
            //'id_uni_accepted_1',
            //'id_uni_accepted_2',
            //'id_uni_accepted_3',
            //'id_uni_accepted_4',
            //'id_uni_accepted_5',
            //'visa',
            //'datetime_visa',
            //'status_visa:ntext',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
