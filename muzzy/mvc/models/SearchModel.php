<?php
class SearchModel extends Db
{
    public function GetResult($key)
    {
        $queryShop = "SELECT * FROM shop
        WHERE
        shop.name LIKE '%$key%' OR
        shop.address LIKE '%$key%'";
        
        $queryCourse = "SELECT * FROM course
        WHERE
        course.content LIKE '%$key%' OR
        course.address LIKE '%$key%'";
        
        $queryInstructor = "SELECT * FROM user
        WHERE user.role = '2' AND
        (
        user.fullname LIKE '%$key%' OR
        user.address LIKE '%$key%'
        )";

        $result = [
            "listShop" => $this->ExecuteQuery($queryShop),
            "listCourse" => $this->ExecuteQuery($queryCourse),
            "listInstructor" => $this->ExecuteQuery($queryInstructor)
        ];
        return $result;
        
    }    
}
?>