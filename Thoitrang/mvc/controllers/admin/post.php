<?php

if (isset($_POST['them_dm'])) {
    $name = $_POST['name'];
    $parent = $_POST['parent'];
    if (empty($name)) {
        $error['one'] = "<script>alert('Bạn nhập thông tin chưa đầy đủ');</script>";
    }
    if (empty($error)) {
        $post->insert_cate($name, $parent);
    }
}

if (isset($_POST['sua_dm'])) {
    $name = $_POST['name'];
    $parent = $_POST['parent'];
    if (empty($name)) {
        $error['one'] = "<script>alert('Bạn nhập thông tin chưa đầy đủ');</script>";
    }
    if (empty($error)) {
        $post->update_cate($name, $parent, $_GET['id']);
    }
}

if (isset($_POST['them_sp'])) {
    $title = $_POST['title'];
    $title = $_POST['title'];
    $content = $_POST['content'];
    $image = $_FILES['image']['name'];
    $image_tmp = $_FILES['image']['tmp_name'];
    $quantity = $_POST['quantity'];
    $price = $_POST['price'];
    $sale = $_POST['sale'];
    $special = $_POST['special'];
    $cate_id = $_POST['cate_id'];
    $thongtin = $_POST['thongtin'];
    // var_dump($_POST);



    if (empty($title) || empty($content) || empty($image) || empty($quantity) || empty($price) || empty($sale) || empty($thongtin)) {
        $error['one'] = "<script>alert('Bạn nhập thông tin chưa đầy đủ');</script>";
    }
    if (empty($error)) {
        move_uploaded_file($image_tmp, IMAGE . $image);
        $post->insert_product($title, $content, $thongtin, $image, $quantity, $price, $sale, $special, $cate_id);
        $error['one'] = "<script>alert('Bạn thêm thành công');</script>";
    }
}

//------------------------------het thuoc tinh --------------------------------

if (isset($_POST['sua_sp'])) {
    $title = $_POST['title'];
    $content = $_POST['content'];
    $thongtin2 = $_POST['thongtin'];
    $image = $_FILES['image']['name'];
    $image_tmp = $_FILES['image']['tmp_name'];
    $quantity = $_POST['quantity'];
    $price = $_POST['price'];
    $sale = $_POST['sale'];
    $special = $_POST['special'];
    $cate_id = $_POST['cate_id'];

    if (empty($image)) {
        foreach ($post->get_val_id('products', 'id_pro', $_GET['id']) as $val) {
            extract($val);
            $post->update_product('id_pro', $_GET['id'], $title, $content, $thongtin2, $image_pro, $quantity, $price, $sale, $special, $hiden_pro, $cate_id);
        }
    } else {
        move_uploaded_file($image_tmp, IMAGE . $image);
        $post->update_product('id_pro', $_GET['id'], $title, $content, $thongtin2, $image, $quantity, $price, $sale, $special, $hiden_pro, $cate_id);
    }
    $error['one'] = "<script>alert('Bạn sửa thành công');</script>";
}

if (isset($_POST['sua_user'])) {
    $id_user = $_GET['id_user'];
    $email = $_POST['email'];
    $phone = $_POST['phone'];
    $name = $_POST['name'];
    $address = $_POST['adress'];
    $pass = $_POST['pass'];
    $avatar_n = $_FILES['avatar']['name'];
    $image_tmp = $_FILES['avatar']['tmp_name'];
    $role = $_POST['special'];
    $look = $_POST['hiden'];
    if (empty($avatar_n)) {
        foreach ($post->get_val_id('users', 'id_user', $id_user) as $val) {
            $post->update_nhanvien($email, $phone, $name, $address, $pass, $val['avatar'], $role, $look, $id_user);
        }
    } else {
        move_uploaded_file($image_tmp, IMAGE . $avatar_n);
        $post->update_nhanvien($email, $phone, $name, $address, $pass, $avatar_n, $role, $look, $id_user);
    }
    $error['one'] = "<script>alert('Bạn sửa thành công');</script>";
}

if (isset($_POST['them_bn'])) {
    $title = $_POST['title'];
    $image = $_FILES['image']['name'];
    $image_tmp = $_FILES['image']['tmp_name'];
    $special = $_POST['special'];
    if (empty($title) || empty($image_tmp) || empty($special)) {
        $error['one'] = "<script>alert('Bạn nhập thông tin chưa đầy đủ');</script>";
    }
    if (empty($error)) {
        move_uploaded_file($image_tmp, IMAGE . $image);
        $post->insert_banner($image, $title, $special);
    }
}
if (isset($_POST['them_img_ct'])) {
    $image = $_FILES['image']['name'];
    $image_tmp = $_FILES['image']['tmp_name'];
    $special = $_POST['special'];
    if (empty($image) || empty($image_tmp) || empty($special)) {
        $error['one'] = "<script>alert('Bạn nhập thông tin chưa đầy đủ');</script>";
    }
    if (empty($error)) {
        foreach ($image as $key => $val) {
            move_uploaded_file($image_tmp[$key], IMAGE . $val);
            $post->insert_album($val, $special);
        }
    }
}

if (isset($_POST['them_info'])) {
    $email = $_POST['email'];
    $image = $_FILES['image']['name'];
    $image_tmp = $_FILES['image']['tmp_name'];
    $phone = $_POST['phone'];
    $adress = $_POST['adress'];
    $content = $_POST['content'];
    if (empty($email) || empty($image) || empty($phone) || empty($adress) || empty($content)) {
        $error['one'] = "<script>alert('Bạn nhập thông tin chưa đầy đủ');</script>";
    }
    if (empty($error)) {
        move_uploaded_file($image_tmp, IMAGE . $image);
        $post->insert_info($email, $image, $phone, $adress, $content);
    }
}

if (isset($_POST['tim_sp'])) {
    // var_dump($_POST);
    $save = $post->loc_sp(0, 0, null, $_POST['title']);
    // lay tong so san pham dc loc ten cho vao lam tong sp
    $page = isset($_GET['page']) ? $_GET['page'] : 1;
    $sp_dtb = $post->get_val('products');
    $tongsp = count($save);
    $mang = phantrang($tongsp, 4, $page);
    $save = $post->loc_sp(0, 0, '', $_POST['title'], $mang['start'], $mang['sp']);
} else {
    $page = isset($_GET['page']) ? $_GET['page'] : 1;
    $sp_dtb = $post->get_val('products');
    $tongsp = count($sp_dtb);
    $mang = phantrang($tongsp, 4, $page);
    $save = $post->loc_sp(0, 0, '', '', $mang['start'], $mang['sp']);
}

if (!empty($post->thongke_buy_pro())) {
    $sp = 0;
    $tong1 = 0;
    foreach ($post->thongke_buy_pro() as $val) : extract($val);
        $tong = $soct_theosp * $gia;
        $sale_chinh = $tong - $tong * ($sale / 100);
        $tong1 += $sale_chinh;
        $sp += $soct_theosp;
    endforeach;
}

if (!empty($post->view_thongke())) {
    foreach ($post->view_thongke() as $val) {
        extract($val);
        $ttview = $view;
    }
}

$tong_gia = 0;
$id_or = 0;
if (isset($_POST['chon_date'])) {
    if ($_POST['date'] == 0) {
        $save_mon = $post->select_order_date();
        foreach ($save_mon as $val) {
            extract($val);
            $tong_gia += $total_order;
            $id_or += 1;
        }
    } else {
        $save_mon = $post->ngay_thongke($_POST['date']);
        foreach ($save_mon as $val) {
            extract($val);
            $tong_gia += $total_order;
            $id_or += 1;
        }
    }
} else {
    $save_mon = $post->select_order_date();
    foreach ($save_mon as $val) {
        extract($val);
        $tong_gia += $total_order;
        $id_or += 1;
    }
}

if (isset($_POST['date'])) {
    if ($_POST['date'] == 0) {
        $save_date = "Tất cả các tháng";
    } else {
        $save_date = "Tháng: " . $_POST['date'];
    }
} else {
    $save_date = "Tất cả các tháng";
}

if(!empty($post->banchay())){
    foreach($post->banchay() as $val){extract($val);
        $save_max = $banchay; 
        $save_img = $image;
        $ten = $name;
        break;
    }
}

if(isset($_GET['tele'])){
    if($_GET['tele'] == 'chon_order'){
        $get_action = $_GET['role'];
        if ($get_action == 0) {
            $save_menu = $post->select_order(0);
        }
        if ($get_action == 1) {
            $save_menu = $post->select_order(1);
        }
        if ($get_action == 2) {
            $save_menu = $post->select_order(2);
        } 
        if($get_action == 3){
            $save_menu = $post->select_order(3);
        }
    }
}else{
    $save_menu = $post->select_order();
}


//--------------------------delete-------------------------//
if (isset($_POST['delete_user'])) {
    $id_check = $_POST['checkbox'];
    foreach ($id_check as $val) {
        $post->delete('users', 'id_user', $val);
        setcookie('error', "<script>alert('Bạn xoá thành công');</script>", time() + 48000);
    }
}

if (isset($_POST['delete_pro'])) {
    $id_check = $_POST['checkbox'];
    foreach ($id_check as $val) {
        $post->delete('products', 'id_pro', $val);
    }
}
if (isset($_POST['delete_cate'])) {
    $id_check = $_POST['checkbox'];
    foreach ($id_check as $val) {
        $post->delete('cates', 'id_cate', $val);
    }
}

if (isset($_POST['delete_album'])) {
    $id_check = $_POST['checkbox'];
    foreach ($id_check as $val) {
        $post->delete('albums', 'id', $val);
    }
}
if (isset($_POST['delete_banner'])) {
    $id_check = $_POST['checkbox'];
    foreach ($id_check as $val) {
        $post->delete('banners', 'id_banner', $val);
    }
}
if (isset($_POST['delete_bl_ct'])) {
    $id_check = $_POST['checkbox'];
    foreach ($id_check as $val) {
        $post->delete('comments', 'id_cm', $val);
    }
}
if (isset($_POST['check_delete_new'])) {
    $id_check = $_POST['checkbox'];
    foreach ($id_check as $val) {
        $post->delete('news', 'id_news', $val);
    }
}
if (isset($_POST['delete_info'])) {
    $id_check = $_POST['checkbox'];
    foreach ($id_check as $val) {
        $post->delete('info', 'id_info', $val);
    }
}


//--------------------------------------kiểm lỗi thành công------------------------------
if (isset($_COOKIE['error'])) {
    echo $_COOKIE['error'];
    setcookie('error', "", time() - 48000);
}
if (!empty($error['one'])) {
    echo $error['one'];
}
