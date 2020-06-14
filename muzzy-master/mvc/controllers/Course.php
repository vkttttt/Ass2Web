<?php
class Course extends Controller
{
    protected $CourseModel;
    protected $InstructorModel;
    protected $CommentModel;
    protected $Type = 2;

    function __construct() {
        $this->CourseModel = $this->model("CourseModel");
        $this->InstructorModel = $this->model("InstructorModel");
        $this->CommentModel = $this->model("CommentModel");    
    }

    function Default()
    {
        $data = [
            "Controller" => "Course",
            "Action" => "ListCourse",
            "listCourse" => $this->CourseModel->GetListCourse(),
            "listInstructor" => $this->InstructorModel->GetListIntructor()
        ];
        $this->view("masterprimary", $data);
    }

    function CourseDetail($id)
    {
        $_SESSION['reserveSuccess'] = "";
        $_SESSION['reserveFail'] = "";

        if (isset($_POST['sendComment'])) {
            if (!isset($_SESSION['idUser'])) {
                header("Location: /muzzy/User/Login");
                return;
            }
            else {
                $iduser = $_SESSION['idUser'];
                $rate = 3;
                $content = $_POST['commentContent'];
                $this->CommentModel->AddNewComment($iduser, $this->Type, $id, $rate, $content);
                header("Location: /muzzy/Course/CourseDetail/$id");
            }
        }

        if(isset($_POST['submitReserve'])) {
            if(!isset($_SESSION['idUser'])) {
                header("Location: /muzzy/User/Login");
                return;
            } else {
                $idUser = $_SESSION['idUser'];
                $startTime = $_POST['reserve'];
                $this->CourseModel->reserve($idUser, $id, $startTime, date( "H:i:s", strtotime("+2 hour", strtotime($startTime))));
            }
        };

        $data = [
            "Controller" => "Course",
            "Action" => "CourseDetail",
            "detailCourse" => $this->CourseModel->GetDetailCourse($id),
            "listComment" => $this->CommentModel->GetListCommentByIdComment($id, $this->Type)
        ];
        $this->view("masterprimary", $data);
    }
}
?>