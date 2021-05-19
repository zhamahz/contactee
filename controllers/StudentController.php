<?php

namespace app\controllers;

use app\models\StudentRegistrationSearch;
use Yii;
use app\models\StudentRegistration;
use yii\base\BaseObject;
use yii\data\ActiveDataProvider;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * StudentController implements the CRUD actions for StudentRegistration model.
 */
class StudentController extends Controller
{
    /**
     * {@inheritdoc}
     */
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['POST'],
                ],
            ],
        ];
    }

    /**
     * Lists all StudentRegistration models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new StudentRegistrationSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single StudentRegistration model.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new StudentRegistration model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new StudentRegistration();
        $model->id_user=16/*Yii::$app->user->identity->id*/;
        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        }
		
        return $this->render('create', [
            'model' => $model,
        ]);
    }
    public function actionCreate1()
    {
        $model = new StudentRegistration();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        }

        return $this->render('create1', [
            'model' => $model,
        ]);
    }

    /**
     * Updates an existing StudentRegistration model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        }

        return $this->render('update', [
            'model' => $model,
        ]);
    }

    /**
     * Deletes an existing StudentRegistration model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the StudentRegistration model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return StudentRegistration the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = StudentRegistration::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
    //АБ списки всех поданных заялений:  view-> student/studentsapplication
    public function actionStudentsapplication()
    {
        $dataProvider = new ActiveDataProvider(['query' => StudentRegistration::find()]);
        return $this->render('studentsapplication', [
            'dataProvider' => $dataProvider,
        ]);
    }
    //ВУЗ аналитика :  view->site/applicationlist/analitikavuz
    public function actionAnalitikavuz()
    {
        $dataProvider = new ActiveDataProvider(['query' => StudentRegistration::find()]);
        return $this->render('analitikavuz', [
            'dataProvider' => $dataProvider,
        ]);
    }
    //ВУЗ списки отчетов :  view->site/applicationlist/universityreport
    public function actionUniversityreport()
    {
        $dataProvider = new ActiveDataProvider(['query' => StudentRegistration::find()]);
        return $this->render('universityreport', [
            'dataProvider' => $dataProvider,
        ]);
    }
    //ВУЗ экзамены :  view->site/applicationlist/universityexams
    public function actionUniversityexams()
    {
        $dataProvider = new ActiveDataProvider(['query' => StudentRegistration::find()]);
        return $this->render('universityexams', [
            'dataProvider' => $dataProvider,
        ]);
    }

    //ВУЗ новости с МОН :  view->site/applicationlist/universitynews
    public function actionUniversitynews()
    {
        $dataProvider = new ActiveDataProvider(['query' => StudentRegistration::find()]);
        return $this->render('universitynews', [
            'dataProvider' => $dataProvider,
        ]);
    }

    //АБ анкета абитуриента:  view-> student/profile
    public function actionProfile()
    {
        $dataProvider = new ActiveDataProvider(['query' => StudentRegistration::find()]);
        return $this->render('profile', [
            'dataProvider' => $dataProvider,
        ]);
    }

    //АБ список ВУЗов поданных заявлений:  view-> student/myapplications
    public function actionMyapplications()
    {
        $dataProvider = new ActiveDataProvider(['query' => StudentRegistration::find()]);
        return $this->render('myapplications', [
            'dataProvider' => $dataProvider,
        ]);
    }
}
