<?php

class bookShopModel extends Db {

    const USED = 1;
    const USING = 2;
    const NOT_USED_YET = 3;
    
    private $table;

    public function __construct() {
        parent::__construct();
        $this->table = 'bookshop';
    }

    public function isLogged() {
        /*
         * Return id of current user if logged, or false if didn't login
         * Depend on loggin module, must change below code 
         */
        if (isset($_SESSION['idUser'])) {
            return $_SESSION['idUser'];
        }
        return false;
    }

    public function getStatus() {
        return [
            self::USED => 'Đã được sử dụng',
            self::USING => 'Đang được sử dụng',
            self::NOT_USED_YET => 'Chưa được sử dụng',
        ];
    }
    
            
    function GetListTable($idUser) {

        $query = "SELECT user.fullname as fullname, bookshop.timestart as timestart, bookshop.timeend as timeend, bookshop.status as status, bookshop.description as description, shop.name as shopname FROM user, bookshop, shop where bookshop.idshop = shop.id AND bookshop.iduser = user.id AND shop.idowner = " .$idUser;
        return $this->ExecuteQuery($query);
    }
}