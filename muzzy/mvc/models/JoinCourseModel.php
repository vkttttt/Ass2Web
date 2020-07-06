<?php
class JoinCourseModel extends Db
{
    private $table;
    public function __construct() {
        parent::__construct();
        $this->table = 'joincourse';
    }
    public function GetListStudentByInstructor($idUser)
    {
        $query = "SELECT " . $this->table . ".id as idJoinCourse, user.fullname as fullname, user.phonenumber as phonenumber, course.content as course FROM " . $this->table . ",user,course WHERE user.id=joincourse.idjoinuser and course.id=joincourse.idcourse and joincourse.status=1 and joincourse.idinstructor=".$idUser;
        return $this->ExecuteQuery($query);
    }
    
    public function update($idJoinCourse, $data = ['keys' => 'values']) {
        $sets = [];
        foreach ($data as $key => $value) {
            array_push($sets, $key . "=" . $value);
        }

        if (!empty($sets)) {
            $query = "UPDATE ".$this->table." SET " . join(",", $sets) . " WHERE id = " . $idJoinCourse;
            return $this->ExecuteQuery($query);
        }

        return 0;
    }

}
