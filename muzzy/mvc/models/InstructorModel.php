<?php
class InstructorModel extends Db
{
    
    public function GetListIntructor()
    {
        $query = "SELECT * FROM user WHERE role = '2'";
        return $this->ExecuteQuery($query);
    }
    public function GetIntructorById($id)
    {
        $query = "SELECT * FROM user WHERE id = '$id'";
        return $this->ExecuteQuery($query);
    }
    
}

?>