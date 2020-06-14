<?php
class Instructor extends Controller
{
    protected $InstructorModel;
    protected $CourseModel;
    protected $CommentModel;
    protected $Type = 3;
    function __construct() {
        $this->InstructorModel = $this->model("InstructorModel");
        $this->CourseModel = $this->model("CourseModel");
        $this->CommentModel = $this->model("CommentModel");
    }

    function Default()
    {
        $data = [
            "Controller" => "Instructor",
            "Action" => "ListInstructor",
            "listInstructor" => $this->InstructorModel->GetListIntructor()
        ];
        $this->view("masterprimary", $data);
    }

    function IntructorDetail($id)
    {
        if (isset($_POST['sendComment'])) {
            if (!isset($_SESSION['idUser'])) {
                header("Location: /muzzy/User/Login");
                return;
            }
            else {
                $iduser = $_SESSION['idUser'];
                $rate = 4;
                $content = $_POST['commentContent'];
                $this->CommentModel->AddNewComment($iduser, $this->Type, $id, $rate, $content);
                header("Location: /muzzy/Instructor/IntructorDetail/$id");
            }
        }
        $data = [
            "Controller" => "Instructor",
            "Action" => "InstructorDetail",
            "detailInstructor" => $this->InstructorModel->GetIntructorById($id),
            "listComment" => $this->CommentModel->GetListCommentByIdComment($id, $this->Type)
        ];
        $this->view("masterprimary", $data);
    }

}
?>