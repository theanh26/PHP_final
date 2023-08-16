<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1" />
    <title>Betoni</title>
    <script src="https://kit.fontawesome.com/e123c1a84c.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/lykmapipo/themify-icons@0.1.2/css/themify-icons.css">
    <!-- bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"></script>
    <!-- swiper -->
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
    <link rel="stylesheet" href="../public/css/web.css">
    <!-- font logo -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Bricolage+Grotesque:opsz,wght@10..48,700&family=Satisfy&display=swap" rel="stylesheet">

</head>

<body>
    <?php if (!empty($post->get_val('info'))) {
        foreach ($post->get_val('info') as $logo) : extract($logo); ?>
            <div class="top_nav_tt ">
                <div class="call__us login__us d-flex">
                    <span>
                    <i class="fas fa-phone"></i> 0372163626
                    </span>
                    <div class='gach mx-3'></div>
                    <?php
                    if (isset($id)) {
                        echo "<div class='mx-2 dropdown'>
                        <a href='' class='them_thongbao' data-bs-toggle='dropdown'><span class='ti-comment'></span></a>";
                    ?>
                        
                        <?php
                        echo "</div>";
                        echo "<div class='mx-2 dropdown'>
                        <a href='' class='them_thongbao' data-bs-toggle='dropdown'><span class='ti-bell'></span></a>";

                        ?>
        
                                
                    <?php
                        echo "</div>";
                        echo "<div class='gach mx-3'></div>";
                    }
                    ?>

                </div>
                <div class="login__us d-flex">
                    <div class="dropdown">

                        <?php

                        if (isset($id)) {

                            // var_dump($post->get_val_id('users', $id));
                            foreach ($post->get_val_id('users', 'id_user', $id) as $val) : extract($val);
                                echo "<div class='dropdown-toggle' data-bs-toggle='dropdown'>
                    <img src='../public/img/$avatar' alt='' style='width: 30px; border-radius: 50%;'>
                    <span>$name</span></div>";
                            endforeach;
                        }
                        ?>
                        <ul class="dropdown-menu">
                            <?php
                            if (isset($_COOKIE['id_admin'])) {
                                echo "<li><a class='dropdown-item text-dark' href='../controllers/admin.php'>Admin</a></li>";
                            }
                            ?>
                            <li><a class="dropdown-item text-dark" href="<?= CONTROLLERS_USER ?>?action=thongtin">Thông tin tài khoản</a></li>
                            <li><a class="dropdown-item text-dark" href="../controllers/get.php?action=dangxuat">Đăng xuất</a></li>
                        </ul>
                    </div>

                    <?php

                    if (!isset($id)) {
                        echo "<div class='gach mx-3'></div>
                <a href='../controllers/get.php?action=dangxuat'>Đăng nhập</a>";
                    } ?>
                </div>
            </div>
            <nav class="navbar navbar-expand-lg bg-white navbar-white sticky-top">
                <div class="container-fluid ">
                    <a class="navbar-brand" href="#">
                        <div class="nav__logo">
                            <a href="<?= CONTROLLERS_USER ?>"><img src="<?= IMAGE ?><?= $logo?>" alt="" style="height: 50px; width: auto; margin-bottom: 10px; margin-right:20px"></a>
                        </div>
                    </a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
                        <span class="navbar-toggler-icon"><i class="fas fa-bars"></i></span>
                    </button>
                    <div class="collapse navbar-collapse" id="collapsibleNavbar">
                        <ul class="navbar-nav">
                            <li class="nav-item">
                                <a class="nav-link" style="padding-right: 25px; font-weight: 700; font-size:15px" href="<?= CONTROLLERS_USER ?>">TRANG CHỦ</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" style="padding-right: 25px; font-weight: 700; font-size:15px" href="<?= CONTROLLERS_USER ?>?action=danhmuc">DANH MỤC</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" style="padding-right: 25px; font-weight: 700; font-size:15px" href="<?= CONTROLLERS_USER ?>?action=contact">LIÊN HỆ</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" style="padding-right: 25px; font-weight: 700; font-size:15px" href="<?= CONTROLLERS_USER ?>?action=gioithieu">VỀ CHÚNG TÔI</a>
                            </li>
                        </ul>
                        <div class="nav__right d-flex justify-content-around ">
                            <span style="font-size:30px;cursor:pointer" onclick="openNav()"><i class="ti-search"></i></span>
                            <div class="love">
                                <div class="sl"><?= $tym ?></div>
                                <a href="<?= CONTROLLERS_USER ?>?action=like">
                                    <span>
                                        <i class="fas fa-heart"></i>
                                    </span>
                                </a>
                            </div>
                            <div class="shop__cart">
                                <div class="sl">
                                    <?= $gh_nav ?>
                                </div>
                                <a href="<?= CONTROLLERS_USER ?>?action=card">
                                    <span>
                                        
                                        <i class="fab fa-shopify"></i>
                                    </span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </nav>

            <div id="myNav" class="overlay ">
                <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
                <center>
                    <div class="overlay-content">
                        <form class="d-flex align-items-center" action="<?= CONTROLLERS_USER ?>?action=danhmuc" method="post">
                            <input class="form-control me-2" type="text" name="search" placeholder="Tìm kiếm theo từ khóa" style="margin-right: 0px !important;">
                            <button class="btn Search_timkiem" name="timkiem" type="submit"><i class="ti-search" style="color: #000 !important; font-size: 20px; font-weight: 700; padding: 0 !important"></i></button>
                        </form>
                    </div>
                </center>

            </div>

    <?php endforeach;
    } ?>