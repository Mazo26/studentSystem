<?php
include "include/database.php";
include "calculation.php";

$studentId = $_GET["s"];


//getting query of id 

$studentQuery = array();
$query = "SELECT * FROM students INNER JOIN students_grades ON students.id = students_grades.studentid WHERE students.id='".$studentId."' ";
$ticket = mysqli_query($connect, $query);
while($row = mysqli_fetch_assoc($ticket)){
    $studentQuery[] = $row;
}



$student = new Student($studentId, $studentQuery[0]["students_name"], $studentQuery[0]["students_lastname"], $studentQuery[0]["school_board"]);
$student->studentGrade($studentQuery[0]["physics_grade"], $studentQuery[0]["algorithms_grade"], $studentQuery[0]["math_grade"], $studentQuery[0]["history_grade"]);
$student->isPassed();

$new = $student; //turning object in array

echo json_encode($new); //encoding a object into a json 
?>