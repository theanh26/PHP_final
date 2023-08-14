<?php

if (isset($_COOKIE['id_admin'])) {
    $id = $_COOKIE['id_admin'];
}
if (isset($_COOKIE['id_user'])) {
    $id = $_COOKIE['id_user'];
}

define("IMAGE","../public/img/");
define("CONETROLLER_USER", "../controllers/user.php");
define("CONETROLLER_ADMIN", "../controllers/admin.php");
define("GET", "../controllers/get.php");

include_once "../models/database.php";


class handle extends database
{
    public function delete($table, $name_id, $id, $nameid_2 = '', $id_2 = '')
    {
        $sql = "DELETE FROM `$table` WHERE `$name_id` = $id";
        if ($nameid_2 != '' && $id_2 !=''){
            $sql .= " OR `$nameid_2` = $id_2";
        }
        $this->execute($sql);
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

    public function insert_user($email, $phone, $name, $adress, $pass, $avatar)
    {
        $sql = "INSERT INTO `users`(`email`, `phone`, `name`, `adress`, `pass`, `avatar`) VALUES
         ('$email','$phone','$name','$adress','$pass','$avatar')";
        $this->execute($sql);
    }

    public function insert_cate($name, $parent)
    {
        $sql = "INSERT INTO `cates`(`name_cate`, `parent_cate`) VALUES ('$name','$parent')";
        $this->execute($sql);
    }
  

    public function insert_product($title, $content, $thongtin, $image, $quantity, $price, $sale, $special, $cate_id)
    {
        date_default_timezone_set('Asia/Ho_Chi_Minh');
        $date = date('Y-m-d H:i:s');
        $sql = "INSERT INTO `products`( `title_pro`, `content_pro`, `thongtin`, `image_pro`, `quantity_pro`,
         `price_pro`, `sale_pro`, `date_pro`, `special_pro`, `cate_id`) VALUES ('$title','$content','$thongtin','$image','$quantity',
         '$price','$sale','$date','$special','$cate_id')";
        $this->execute($sql);
    }
    

    public function insert_comment($content, $id_pro, $id_user, $parent)
    {
        date_default_timezone_set('Asia/Ho_Chi_Minh');
        $date = date('Y-m-d H:i:s');
        $sql = "INSERT INTO `comments`( `content_cm`, `product_id`, `user_id`, `date`, `parent_cm`) 
        VALUES ('$content','$id_pro','$id_user','$date','$parent')";
        $this->execute($sql);
    }

    public function insert_loves($id_pro, $id_user)
    {
        $sql = "INSERT INTO `loves`(`pro_id`, `user_id`) VALUES ('$id_pro','$id_user')";
        $this->execute($sql);
    }


    public function insert_banner($image, $title, $id_pro)
    {
        $sql = "INSERT INTO `banners`(`image_banner`, `title_banner`, `id_product`) VALUES ('$image','$title','$id_pro')";
        $this->execute($sql);
    }
    public function insert_album($image, $id_pro)
    {
        $sql = "INSERT INTO `albums`( `image_album`, `id_product`) VALUES ('$image','$id_pro')";
        $this->execute($sql);
    }
    public function insert_info($email, $logo, $phone, $adress, $content)
    {
        $sql = "INSERT INTO `info`(`email_info`, `logo`, `phone_info`, `adress_info`, `thongtin`) VALUES ('$email','$logo','$phone','$adress','$content')";
        $this->execute($sql);
    }

    public function update_cate($name_cate, $parent, $id_cate)
    {
        $sql = "UPDATE `cates` SET `name_cate`='$name_cate',`parent_cate`='$parent' WHERE `id_cate` = $id_cate";
        $this->execute($sql);
    }

    public function update_product($id_name, $id, $title, $content, $thongtin, $image, $quantity, $price, $sale, $special, $hiden, $cate_id)
    {
        $sql = "UPDATE `products` SET `title_pro`='$title',`content_pro`='$content',`thongtin`='$thongtin',`image_pro`='$image',
        `quantity_pro`='$quantity',`price_pro`='$price',`sale_pro`='$sale',`special_pro`='$special',`hiden_pro`='$hiden',
        `cate_id`='$cate_id' WHERE $id_name = $id";
        $this->execute($sql);
    }

    public function update_view($view, $id_pro)
    {
        $sql = "UPDATE `products` SET `view_pro`='$view' WHERE `id_pro` = $id_pro";
        $this->execute($sql);
    }

    public function update_user($phone, $name, $adress, $avatar, $id)
    {
        $sql = "UPDATE `users` SET `phone`='$phone',`name`='$name',`adress`='$adress',`avatar`='$avatar' WHERE `id_user` = $id";
        $this->execute($sql);
    }
    public function update_ma_code($id, $code)
    {
        $sql = "UPDATE `users` SET `code_mk`='$code' WHERE `id_user` = $id";
        $this->execute($sql);
    }
    public function update_mk($pass, $id, $code_mk = '', $code = '')
    {
        $sql = "UPDATE `users` SET `pass`='$pass' WHERE `id_user` = $id";
        if (!empty($code_mk) && !empty($code)) {
            $sql .= " AND `$code_mk` = '$code'";
        }
        $this->execute($sql);
    }

    public function update_nhanvien($email, $phone, $name, $address, $pass, $avatar, $role, $look, $id)
    {
        $sql = "UPDATE `users` SET `email`='$email',`phone`='$phone',`name`='$name',`adress`='$address',`pass`='$pass',`avatar`='$avatar',`role`='$role',`look`='$look' WHERE `id_user` = $id";
        $this->execute($sql);
    }

    public function check_loves($id_pro, $id_user)
    {
        $sql = "SELECT * FROM `loves` 
        JOIN users ON users.id_user = loves.user_id
        JOIN products ON products.id_pro = loves.pro_id
        WHERE users.id_user = $id_user AND products.id_pro = $id_pro ";
        $gan = $this->select($sql);
        return $gan;
    }
}
?>