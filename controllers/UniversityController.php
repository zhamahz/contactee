<?php

namespace app\controllers;

use app\models\StudentRegistration;
use app\models\User2;
use Yii;
use app\models\University;
use app\models\UniversitySearch;
use yii\base\BaseObject;
use yii\data\ActiveDataProvider;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

use yii2mod\query\ArrayQuery;
use yii\db\ActiveQuery;

/**
 * UniversityController implements the CRUD actions for University model.
 */
class UniversityController extends Controller
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
     * Lists all University models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new UniversitySearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('indexmon', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single University model.
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
     * Creates a new University model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new University();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        }

        return $this->render('create', [
            'model' => $model,
        ]);
    }

    /**
     * Updates an existing University model.
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
     * Deletes an existing University model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['indexmon']);
    }

    /**
     * Finds the University model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return University the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = University::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
    // МОН раздел списки всех вузов:  view-> university/indexmon
    public function actionIndexmon()
    {
        $dataProvider=new ActiveDataProvider(['query' => University::find()]);
        return $this->render('indexmon',[
            'dataProvider'=>$dataProvider,
        ]);
    }

   //МОН списки приемной комиссии вузов:  view-> user2/indexmoncommitet
    public function actionIndexmoncommitet()
    {
        $q = Yii::$app->user->identity->id;

        $dataProvider=new ActiveDataProvider(['query' => User2::find()]);

        if ($q == 12)
        {
            $dataProvider=new ActiveDataProvider(['query' => User2::find()->where(['status' => 2])]);
        }

        return $this->render('user2/indexmoncommitet',[
            'dataProvider'=>$dataProvider,
        ]);

    }

    //МОН списки всех поданных заялений:  view-> student-registration/indexmonlistapplic
    public function actionIndexmonlistapplic()
    {
//        $q = Yii::$app->user->identity->id;
//
//        $dataProvider=new ActiveDataProvider(['query' => StudentRegistration::find()]);
//
//        if ($q == 12)
//        {
//            $dataProvider=new ActiveDataProvider(['query' => StudentRegistration::find()->where('or',['id_uni_accepted_1' => 1],
//                ['id_uni_accepted_2' => 1], ['id_uni_accepted_3' => 1], ['id_uni_accepted_4' => 1], ['id_uni_accepted_5' => 1])]);
//        }
//
//        return $this->render('student-registration/indexmonlistapplic',[
//            'dataProvider'=>$dataProvider,
//        ]);

        $dataProvider=new ActiveDataProvider(['query' => StudentRegistration::find()]);
        return $this->render('student-registration/indexmonlistapplic',[
            'dataProvider'=>$dataProvider,
        ]);
    }

    //МОН списки отчетов :  view->student-registration/indexmonreport
    // вывод списка университетов сколько принятых и полученных заявок в количестве
    public function actionIndexmonreport()
    {
        $dataProvider=new ActiveDataProvider(['query' => StudentRegistration::find()]);
        return $this->render('student-registration/indexmonreport',[
            'dataProvider'=>$dataProvider,
        ]);
    }

    //МОН диаграммы :  view->university/diagrammsmon
    public function actionDiagrammsmon()
    {
        return $this->render('diagrammsmon');
    }

    //МИД списки заявлений на визу:   view->student-registration/indexmidvisalist
    public function actionIndexmidvisalist()
    {
        $dataProvider=new ActiveDataProvider(['query' => StudentRegistration::find()]);
        return $this->render('student-registration/indexmidvisalist',[
            'dataProvider'=>$dataProvider,
        ]);
    }

    //MID диаграммы  view->university/diagrammsmid
    public function actionDiagrammsmid()
    {
        return $this->render('diagrammsmid');
    }
	
	// тест 
	public function actionIndex3()
    {
		$q = University::find()->where(['name' => 'КГТУ'])->all();
		$query = new ArrayQuery();
		$query->from($q);
		$query1 = $query->count();
		
        return $this->render('index3', [
			'query' => $q,
			'query1' => $query1,
        ]);
    }
	
	// тест3 
	public function actionIndex4()
    {
		$q22 = Yii::$app->user->identity->id;	
		
		//список StudentRegistration
		$q = StudentRegistration::find()->where(['id_user' => $q22]);

		
        return $this->render('index4', [
			'query' => $q22,

        ]);
    }
	
	//тест2
	public function actionIndexmon2()
    {
		$q = Yii::$app->user->identity->id;	
		
		$dataProvider=new ActiveDataProvider(['query' => University::find()]);

		if ($q == 12)
		{
			$dataProvider=new ActiveDataProvider(['query' => University::find()->where(['name' => 'КРСУ'])]);
		}

        return $this->render('indexmon2',[
            'dataProvider'=>$dataProvider,
        ]);
    }
//test5
    public function actionIndexmon5()
    {
        $q = Yii::$app->user->identity->id;

        $dataProvider=new ActiveDataProvider(['query' => User2::find()]);

        if ($q == 12)
        {
            $dataProvider=new ActiveDataProvider(['query' => User2::find()->where(['status' => 2])]);
        }

        return $this->render('indexmon5',[
            'dataProvider'=>$dataProvider,
        ]);
    }
}
