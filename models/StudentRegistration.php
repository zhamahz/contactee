<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "student_registration".
 *
 * @property int $id
 * @property int $id_user
 * @property string $fullname
 * @property string $gender
 * @property string $birthday
 * @property int $id_country
 * @property string $email
 * @property resource $photo_passport
 * @property resource $pdf_attestat
 * @property resource $pdf_motivation
 * @property int $id_uni_1
 * @property int $id_program_1
 * @property string $datetime_reg_1
 * @property int $id_uni_2
 * @property int $id_program_2
 * @property string $datetime_reg_2
 * @property int $id_uni_3
 * @property int $id_program_3
 * @property string $datetime_reg_3
 * @property int $id_uni_4
 * @property int $id_program_4
 * @property string $datetime_reg_4
 * @property int $id_uni_5
 * @property int $id_program_5
 * @property string $datetime_reg_5
 * @property int $id_uni_accepted_1
 * @property int $id_uni_accepted_2
 * @property int $id_uni_accepted_3
 * @property int $id_uni_accepted_4
 * @property int $id_uni_accepted_5
 * @property int $id_visa
 *
 * @property User $user
 * @property Country $country
 * @property Programs $program1
 * @property University $uni1
 */
class StudentRegistration extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'student_registration';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id_user', 'fullname', 'gender', 'birthday', 'id_country', 'email', 'photo_passport', 'pdf_attestat', 'pdf_motivation', 'id_uni_1', 'id_program_1', 'datetime_reg_1', 'id_uni_2', 'id_program_2', 'datetime_reg_2', 'id_uni_3', 'id_program_3', 'datetime_reg_3', 'id_uni_4', 'id_program_4', 'datetime_reg_4', 'id_uni_5', 'id_program_5', 'datetime_reg_5', 'id_uni_accepted_1', 'id_uni_accepted_2', 'id_uni_accepted_3', 'id_uni_accepted_4', 'id_uni_accepted_5', 'id_visa'], 'required'],
            [['id_user', 'id_country', 'id_uni_1', 'id_program_1', 'id_uni_2', 'id_program_2', 'id_uni_3', 'id_program_3', 'id_uni_4', 'id_program_4', 'id_uni_5', 'id_program_5', 'id_uni_accepted_1', 'id_uni_accepted_2', 'id_uni_accepted_3', 'id_uni_accepted_4', 'id_uni_accepted_5', 'id_visa'], 'integer'],
            [['birthday', 'datetime_reg_1', 'datetime_reg_2', 'datetime_reg_3', 'datetime_reg_4', 'datetime_reg_5'], 'safe'],
            [['photo_passport', 'pdf_attestat', 'pdf_motivation'], 'string'],
            [['fullname', 'gender', 'email'], 'string', 'max' => 255],
            [['id_user'], 'exist', 'skipOnError' => true, 'targetClass' => User::className(), 'targetAttribute' => ['id_user' => 'id']],
            [['id_country'], 'exist', 'skipOnError' => true, 'targetClass' => Country::className(), 'targetAttribute' => ['id_country' => 'id']],
            [['id_program_1'], 'exist', 'skipOnError' => true, 'targetClass' => Programs::className(), 'targetAttribute' => ['id_program_1' => 'id']],
            [['id_uni_1'], 'exist', 'skipOnError' => true, 'targetClass' => University::className(), 'targetAttribute' => ['id_uni_1' => 'id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'id_user' => 'Id User',
            'fullname' => 'Fullname',
            'gender' => 'Gender',
            'birthday' => 'Birthday',
            'id_country' => 'Id Country',
            'email' => 'Email',
            'photo_passport' => 'Photo Passport',
            'pdf_attestat' => 'Pdf Attestat',
            'pdf_motivation' => 'Pdf Motivation',
            'id_uni_1' => 'Id Uni 1',
            'id_program_1' => 'Id Program 1',
            'datetime_reg_1' => 'Datetime Reg 1',
            'id_uni_2' => 'Id Uni 2',
            'id_program_2' => 'Id Program 2',
            'datetime_reg_2' => 'Datetime Reg 2',
            'id_uni_3' => 'Id Uni 3',
            'id_program_3' => 'Id Program 3',
            'datetime_reg_3' => 'Datetime Reg 3',
            'id_uni_4' => 'Id Uni 4',
            'id_program_4' => 'Id Program 4',
            'datetime_reg_4' => 'Datetime Reg 4',
            'id_uni_5' => 'Id Uni 5',
            'id_program_5' => 'Id Program 5',
            'datetime_reg_5' => 'Datetime Reg 5',
            'id_uni_accepted_1' => 'Id Uni Accepted 1',
            'id_uni_accepted_2' => 'Id Uni Accepted 2',
            'id_uni_accepted_3' => 'Id Uni Accepted 3',
            'id_uni_accepted_4' => 'Id Uni Accepted 4',
            'id_uni_accepted_5' => 'Id Uni Accepted 5',
            'id_visa' => 'Id Visa',
        ];
    }

    /**
     * Gets query for [[User]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getUser()
    {
        return $this->hasOne(User::className(), ['id' => 'id_user']);
    }

    /**
     * Gets query for [[Country]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getCountry()
    {
        return $this->hasOne(Country::className(), ['id' => 'id_country']);
    }

    /**
     * Gets query for [[Program1]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getProgram1()
    {
        return $this->hasOne(Programs::className(), ['id' => 'id_program_1']);
    }

    /**
     * Gets query for [[Uni1]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getUni1()
    {
        return $this->hasOne(University::className(), ['id' => 'id_uni_1']);
    }
}