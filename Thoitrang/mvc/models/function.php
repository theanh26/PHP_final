<?php
define("IMAGE","../public/img/");
define("CONETROLLER_USER", "../controllers/user.php");
define("CONETROLLER_ADMIN", "../controllers/admin.php");

include_once "../models/database.php";

class handle extends database
{
    public function delete($table, $name_id, $id, $nameid_2 = '', $id_2 = '')
    {
        $sql = "DELETE FROM `$table` WHERE `$name_id` = $id";
        if ($nameid_2 != '' && $id_2 !=''){
            $sql .= " OR `$nameid_2` = $id_2";
        }
        $this->excute($sql);
    }
    public function select_product()
    {
        $sql = "SELECT * FROM 'products' WHERE 'quatity_pro' > 0 ORDER BY 'date_pro' DESC LIMIT 0,8" ;
        $gan = $this->select($sql);
        return $gan;
    }

    public function new_product($id)
    {
        $sql = "SELECT * FROM 'products' WHERE NOT 'id_pro' = $id ORDER BY 'date_pro' DESC LIMIT 0,8" ;
        $gan = $this->select($sql);
        return $gan;
    }
    
    public function get_val($table)
    {
        $sql = "SELECT * FROM `$table` WHERE 1" ;
        $gan = $this->select($sql);
        return $gan;
    }
    
    public function get_val_id($table, $name_id, $id)
    {
        $sql = "SELECT * FROM `$table` WHERE $name_id = $id" ;
        $gan = $this->select($sql);
        return $gan;
    }
    
    public function get_val_join($table1, $table2, $join1, $join2)
    {
        $sql = "SELECT * FROM `$table1` JOIN $table2 ON $join1 = $join2 WHERE 1";
        $gan = $this->select($sql);
        return $gan;
    }
    
    public function get_val_id_join($id_name, $id, $table1, $table2, $join1, $join2)
    {
        $sql = "SELECT * FROM `$table1` JOIN $table2 ON $join1 = $join2 WHERE $id_name = $id";
        $gan = $this->select($sql);
        return $gan;
    }

}
?>