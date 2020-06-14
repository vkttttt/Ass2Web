<?php
class Home extends Controller
{
    protected $ShopModel;
    protected $InstructorModel;
    protected $CourseModel;
    
    function __construct() {
        $this->ShopModel = $this->model("ShopModel");
        $this->InstructorModel = $this->model("InstructorModel");
        $this->CourseModel = $this->model("CourseModel");
    }

    function Default()
    {
        $data = [
            "Controller" => "HomePage",
            "Action" => "Default",
            "listShop" => $this->ShopModel->GetListShop(),
            "listShopDiscount" =>  $this->ShopModel->GetListShopDiscount(),
            "listCourse" => $this->CourseModel->GetListCourse(),
            "listInstructor" => $this->InstructorModel->GetListIntructor()
        ];
        $this->view("masterprimary", $data);
    }

}
?>