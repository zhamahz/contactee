<?php

/* @var $this \yii\web\View */
/* @var $content string */

use app\widgets\Alert;
use yii\helpers\Html;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\widgets\Breadcrumbs;
use app\assets\AppAsset;

use webvimark\modules\UserManagement\components\GhostNav;
use webvimark\modules\UserManagement\UserManagementModule;
use webvimark\modules\UserManagement\models\User;

AppAsset::register($this);
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">
<head>
    <meta charset="<?= Yii::$app->charset ?>">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="shortcut icon" href="/images/stat2.png?v=4" type="image/x-icon" />
    <?php $this->registerCsrfMetaTags() ?>
    <title>Министерство образования и науки Кыргызской Республики</title>
    <?php $this->head() ?>
</head>
<body>
<?php $this->beginBody() ?>

<style>
/* navbar */
.navbar-custom {
    background-color: #F8F8F8;
    border-color: #E7E7E7;
}
/* Title */
.navbar-custom .navbar-brand {
    color: #777;
}
.navbar-custom .navbar-brand:hover,
.navbar-custom .navbar-brand:focus {
    color: #5E5E5E;
}
/* Link */
.navbar-custom .navbar-nav > li > a {
    color: #777;
}
.navbar-custom .navbar-nav > li > a:hover,
.navbar-custom .navbar-nav > li > a:focus {
    color: #333;
}
.navbar-custom .navbar-nav > .active > a,
.navbar-custom .navbar-nav > .active > a:hover,
.navbar-custom .navbar-nav > .active > a:focus {
    color: #555;
    background-color: #E7E7E7;
}
.navbar-custom .navbar-nav > .open > a,
.navbar-custom .navbar-nav > .open > a:hover,
.navbar-custom .navbar-nav > .open > a:focus {
    color: #555;
    background-color: #D5D5D5;
}
/* Caret */
.navbar-custom .navbar-nav > .dropdown > a .caret {
    border-top-color: #777;
    border-bottom-color: #777;
}
.navbar-custom .navbar-nav > .dropdown > a:hover .caret,
.navbar-custom .navbar-nav > .dropdown > a:focus .caret {
    border-top-color: #333;
    border-bottom-color: #333;
}
.navbar-custom .navbar-nav > .open > a .caret,
.navbar-custom .navbar-nav > .open > a:hover .caret,
.navbar-custom .navbar-nav > .open > a:focus .caret {
    border-top-color: #555;
    border-bottom-color: #555;
}
/* Mobile version */
.navbar-custom .navbar-toggle {
    border-color: #DDD;
}
.navbar-custom .navbar-toggle:hover,
.navbar-custom .navbar-toggle:focus {
    background-color: #DDD;
}
.navbar-custom .navbar-toggle .icon-bar {
    background-color: #CCC;
}
@media (max-width: 767px) {
    .navbar-custom .navbar-nav .open .dropdown-menu > li > a {
        color: #777;
    }
    .navbar-custom .navbar-nav .open .dropdown-menu > li > a:hover,
    .navbar-custom .navbar-nav .open .dropdown-menu > li > a:focus {
          color: #333;
    }
}
</style>

<div class="wrap">
    <?php
    NavBar::begin([
        'brandLabel' => Html::img('@web/images/stat2.png', ['alt'=>Yii::$app->name, 'style' => 'width:46px;height: 46px']),
        'brandUrl' => Yii::$app->homeUrl,
        'options' => [
            'class' => 'navbar-custom navbar-fixed-top',
        ],
    ]);

	
	echo GhostNav::widget([
	'options' => ['class' => 'navbar-nav navbar-right'],
		'encodeLabels'=>false,
		'activateParents'=>true,
		'items' => [

		    ['label' => 'Главная', 'url' => ['/site/index'], 'visible' => !Yii::$app->user->isGuest],
			[
			'label' => 'МОиН',
			'items'=>[
				['label' => 'Список приемных комиссий', 'url' => ['/university/indexmoncommitet'], 'visible' => !Yii::$app->user->isGuest and User::hasRole('Mon')],
				['label' => 'Список заявок от студентов1', 'url' => ['/university/indexmonlistapplic'], 'visible' => !Yii::$app->user->isGuest and User::hasRole('Mon')],
				['label' => 'Отчеты', 'url' => ['/university/indexmonreport'], 'visible' => !Yii::$app->user->isGuest and User::hasRole('Mon')],				
			],],
			[
			'label' => 'Справочники',
			'items'=>[
				['label' => 'Список ВУЗов', 'url' => ['/university/indexmon'], 'visible' => !Yii::$app->user->isGuest and User::hasRole('Mon')],
				['label' => 'Дисциплины', 'url' => ['#'], 'visible' => !Yii::$app->user->isGuest and User::hasRole('Mon')],		
				['label' => 'Страны', 'url' => ['#'], 'visible' => !Yii::$app->user->isGuest and User::hasRole('Mon')],				
			],],
			[
			'label' => 'Мид',
			'items'=>[
				['label' => 'Список заявлений на визу в МИД', 'url' => ['/university/indexmidvisalist'], 'visible' => !Yii::$app->user->isGuest and User::hasRole('Mid')],
			],],
			[
			'label' => 'Приемная комиссия',
			'items'=>[
				['label' => 'Список заявок от студентов2', 'url' => ['/site/applicationlist'], 'visible' => !Yii::$app->user->isGuest and User::hasRole('University')],
				['label' => 'Отчеты', 'url' => ['/site/universityreport'], 'visible' => !Yii::$app->user->isGuest and User::hasRole('University')],
				['label' => 'Экзамены ПК', 'url' => ['/site/universityexam'], 'visible' => !Yii::$app->user->isGuest and User::hasRole('University')],
			],],
			[
			'label' => 'Разделы АБ',
			'items'=>[
				['label' => 'Профиль', 'url' => ['/student/create'], 'visible' => !Yii::$app->user->isGuest and User::hasRole('Student')],
				['label' => 'Форма подачи заявления', 'url' => ['/student/create1'], 'visible' => !Yii::$app->user->isGuest and User::hasRole('Student')],
				['label' => 'Поданные заявления', 'url' => ['/student/myapplications'], 'visible' => !Yii::$app->user->isGuest and User::hasRole('Student')],
				['label' => 'Экзамены АБ', 'url' => ['/student/universityexams'], 'visible' => !Yii::$app->user->isGuest and User::hasRole('Student')],
			],],
			//['label' => 'Поиск', 'url' => ['/site/search'], 'visible' => !Yii::$app->user->isGuest],
            //['label' => 'Контакты', 'url' => ['/site/contact'], 'visible' => !Yii::$app->user->isGuest],
			[
			'label' => 'Тест',
			'items'=>[
				['label' => 'Тест1', 'url' => ['/university/index3'], 'visible' => !Yii::$app->user->isGuest],
				['label' => 'Тест2', 'url' => ['/university/indexmon2'], 'visible' => !Yii::$app->user->isGuest],
				['label' => 'Тест3', 'url' => ['/university/index4'], 'visible' => !Yii::$app->user->isGuest],
			],],
			[
				'label' => 'Пользователи',
				'items'=>UserManagementModule::menuItems()
			],
			//[
				['label' =>'Сменить пароль', 'url'=>['/user-management/auth/change-own-password'], 'visible' => !Yii::$app->user->isGuest],
				['label' => 'Выйти (' . Yii::$app->user->identity->username . ')', 'url' => ['/user-management/auth/logout']],
				/*'items'=>[
					['label'=>'Login', 'url'=>['/user-management/auth/login']],
					['label'=>'Registration', 'url'=>['/user-management/auth/registration']],
					['label'=>'Change own password', 'url'=>['/user-management/auth/change-own-password']],
					['label'=>'Password recovery', 'url'=>['/user-management/auth/password-recovery']],
					['label'=>'E-mail confirmation', 'url'=>['/user-management/auth/confirm-email']],
				],*/
			//],
		],
	]);

    NavBar::end();
    ?>

    <div class="container">

        <?= Alert::widget() ?>
        <?= $content ?>
    </div>
</div>

<footer class="footer">
    <div class="container">
        <p class="pull-right">Министерство образования и науки Кыргызской Республики &copy; <?= date('Y') ?></p>
    </div>
</footer>

<?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>