<?php


namespace App\Controller;

use App\Model\StudentModel;
class StudentController
{
 protected $studentModel;

 public function __construct()
 {
     $this->studentModel = new StudentModel();
 }

}
