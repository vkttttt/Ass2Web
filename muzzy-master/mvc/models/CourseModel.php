<?php
class CourseModel extends Db
{
    public function GetListCourse()
    {
        $query = "SELECT course.* , user.fullname
        FROM course, user
        WHERE course.idinstructor = user.id";
        return $this->ExecuteQuery($query);
    }
    
    public function GetListCourseByInstructor($id) {
        $query = "SELECT * FROM course WHERE status = 1 and idinstructor = " . $id;
        return $this->ExecuteQuery($query);
    }


    public function GetDetailCourse($id)
    {
        $query = "SELECT course.* , user.fullname 
        FROM course, user 
        WHERE course.idinstructor=user.id AND course.id = '$id'";

        
        return $this->ExecuteQuery($query);
    }

    public function DeleteCourseByInstructor($idInstructor, $idCourse) {
        $query = "DELETE FROM course WHERE id = " . $idCourse . " AND idinstructor=" . $idInstructor;
        return $this->ExecuteQuery($query);
    }

    public function update($idCourse, $data = ['keys' => 'values']) {
        $sets = [];
        foreach ($data as $key => $value) {
            array_push($sets, $key . "=" . $value);
        }

        if (!empty($sets)) {
            $query = "UPDATE course SET " . join(",", $sets) . " WHERE id = " . $idCourse;

            return $this->ExecuteQuery($query);
        }

        return 0;
    }

    public function insert($data = ['keys' => 'values']) {
        $data['rate'] = 0;
        $query = "INSERT INTO course(" . join(",", array_keys($data)) . ") VALUES(" . join(",", array_values($data)) . ")";

        return $this->ExecuteQuery($query);
    }

    public function reserve($userID, $courseID, $startTime, $endTime) {

        $query = "INSERT INTO reserve(type, roomID, userID, startTime, endTime) VALUES('course', $courseID, $userID, '$startTime', '$endTime')";

        $result = $this->ExecuteQuery($query);

        if($result){
            $_SESSION['reserveSuccess'] = "Thành công";
        }else{
            $_SESSION['reserveFail'] = "Số lượng đạt tối da";
        }
    }

}

?>
