<?php 


class Student {

    public $id;
    public $firstName;
    public $lastName;
    public $schoolBoard;
    public $physicsGrade;
    public $algorithmsGrade;
    public $mathGrade;
    public $historyGrade;

    function __construct($id, $firstName, $lastName, $schoolBoard){
        $this->id = $id;
        $this->firstName = $firstName;
        $this->lastName= $lastName;
        $this->schoolBoard = $schoolBoard;

    }



    function studentGrade($physicsGrade, $algorithmsGrade, $mathGrade, $historyGrade){
        $this->physicsGrade = $physicsGrade;
        $this->algorithmsGrade = $algorithmsGrade;
        $this->mathGrade = $mathGrade;
        $this->historyGrade = $historyGrade;

        $this->numberofGrades = array(); //array which takes grades

        if(!is_null($this->physicsGrade)){
            array_push($this->numberofGrades, $this->physicsGrade); //if grade exists, put it in array 
        }
        if(!is_null($this->algorithmsGrade)){
            array_push($this->numberofGrades, $this->algorithmsGrade);
        }
        if(!is_null($this->mathGrade)){
            array_push($this->numberofGrades, $this->mathGrade);
        }
        if(!is_null($this->historyGrade)){
            array_push($this->numberofGrades, $this->historyGrade);
        }

        $this->averageGrade = ($this->physicsGrade + $this->algorithmsGrade + $this->mathGrade + $this->historyGrade) / count($this->numberofGrades); //average grade

        
    }

    function isPassed(){


        if($this->schoolBoard == "CSMB" && max($this->numberofGrades) >= 8 && count($this->numberofGrades)>2){
            $this->isPassed = "PASSED";
            return $this->isPassed;
        }else if($this->schoolBoard == "CSM" && $this->averageGrade >= 7){
            $this->isPassed = "PASSED";
            return $this->isPassed;
        }else{
            $this->isPassed = "Failed";
            return $this->isPassed;
        }

        echo $this->isPassed;
    }

}





?>