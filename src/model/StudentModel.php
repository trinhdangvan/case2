<?php


namespace App\Model;


class StudentModel
{
    protected $database;

    public function __construct()
    {
        $db = new DBConnect();
        $this->database = $db->connect();
        $this->database->setAttribute(\PDO::ATTR_ERRMODE, \PDO::ERRMODE_EXCEPTION);
    }

    public function getAll()
    {
//        var_dump(1);die;
        $sql = "SELECT * FROM students LIMIT 15";
        $stmt = $this->database->query($sql);
        return $stmt->fetchAll();
    }

    public function getStudentsByID($id)
    {
        $sql = "SELECT * FROM students WHERE studentNumber =:student_Number ";
        $stmt = $this->database->prepare($sql);
        $stmt->bindParam(':student_Number', $id);
        $stmt->execute();
        return $stmt->fetchAll();
    }

    public function addStudent($studentname, $class, $mail, $phone, $address,$gender)
    {
        $sql = "INSERT INTO `students`( `studentName`, `class`, `mail`, `phone`, `address`,`gender`) VALUES (?,?,?,?,?,?)";
        $stmt = $this->database->prepare($sql);
        $stmt->bindParam(1, $studentname);
        $stmt->bindParam(2, $class);
        $stmt->bindParam(3, $mail);
        $stmt->bindParam(4, $phone);
        $stmt->bindParam(5, $address);
        $stmt->bindParam(6, $gender);
        $stmt->execute();
    }
}
