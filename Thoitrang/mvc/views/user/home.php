<header>

    <div id="demo" class="carousel slide" data-bs-ride="carousel">

        <!-- Indicators/dots -->
        <div class="carousel-indicators">
            <?php foreach ($post->get_val('banners') as $key => $val) : extract($val); ?>
                <button type="button" data-bs-target="#demo" data-bs-slide-to="<?= $key ?>" class="<?= $active = $key == 0 ? 'active' : '' ?>"></button>
            <?php endforeach; ?>
        </div>

        <!-- The slideshow/carousel -->

        <div class="carousel-inner">
            <?php foreach ($post->get_val('banners') as $key => $val) : extract($val); ?>

                <div class="carousel-item <?= $active = $key == 0 ? 'active' : '' ?>">
                        <img src="<?= IMAGE ?><?= $image_banner ?>" alt="" class="d-block image_banner" style="width:100%">
                    </a>
                    <div class="carousel-caption text-white">
                        <!-- <h3><?= $title_banner ?></h3> -->
                    </div>
                </div>

            <?php endforeach; ?>
        </div>

        <!-- Left and right controls/icons -->
        <button class="carousel-control-prev" type="button" data-bs-target="#demo" data-bs-slide="prev">
            <span class="carousel-control-prev-icon"></span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#demo" data-bs-slide="next">
            <span class="carousel-control-next-icon"></span>
        </button>
    </div>

</header>
<!-- \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\main\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ -->
<div class="container">
    <div class="tieude-main p-3 mt-3 container">
        <a href="">
            <span class="text-white" style="font-weight: 700"><i class="fab fa-shopify"></i> SẢN PHẨM ĐẶC BIỆT</span>
        </a>
    </div>
    <div class="mt-3">
        <div class="swiper mySwiper2">
            <div class="swiper-wrapper">
                <?php foreach ($post->select_product() as $val) : extract($val);
                    if ($special_pro < 1) { ?>
                        <div class="swiper-slide">

                            <div class=" p-3 card">
                                <div class="card__tt">
                                    <div class="card__tt-image">
                                        <img src="<?= IMAGE ?><?= $image_pro ?>" alt="">
                                        <div class="sp__hover d-flex  justify-content-around align-items-center container">
                                            <div class="sp__hover--button">
                                                <strong><a href="<?= GET ?>?id_chitiet=<?= $id_pro ?>">Chi tiết</a></strong>
                                            </div>
                                            <div class="icon">
                                                <ul class="d-flex">
                                                    <li><a href="<?= CONTROLLERS_USER ?>?action=like&id_like=<?= $id_pro ?>"><i class="far fa-heart"></i></a></li>
                                                    
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <div class="ten_sp" style="margin-top: 15px;";>
                                        <strong><?= $title_pro ?></strong>
                                    </div>
                                    
                                    <div class="gia_sp d-flex" style="margin-top: 15px;";>
                                        <div class="tt_gia_tien" style="margin-right: 5px";>
                                            <i class="fas fa-tags"></i>
                                        </div>
                                        <div class="gia_goc" style="color: #ccc;">
                                            <del><span><?= $price_pro ?></span></del>
                                        </div>
                                        <div class="gach_sp mx-2" ;></div>
                                        <div class="gia_duocgiam";>
                                            <span><?php echo number_format($sale_chinh = $price_pro - $price_pro * ($sale_pro / 100)); ?></span>
                                        </div>
                                        <div class="gach"></div>
                                        <div class="sale_sp" style="margin-left: 80px";>
                                            <span>
                                                <?= $sale_pro ?>%
                                            </span>
                                        </div>
                                    </div>
                                    <div class="ten_sp" style=" font-size:13px; margin-top: 15px;">
                                        <span class="text-dark" style="color:rgb(83, 159, 192) !important">Mua 2 được giảm thêm 10%</span>
                                    </div>
                                    <div class="new">
                                        <span>
                                            new
                                        </span>
                                    </div>

                                </div>
                            </div>

                        </div>
                <?php }
                endforeach; ?>
            </div>
            <div class="swiper-button-next"></div>
            <div class="swiper-button-prev"></div>
            
        </div>
    </div>
</div>

<center>
    <div class="view__all mt-5">
        <a href="<?= CONTROLLERS_USER ?>?action=danhmuc">
            <span>
                VIEW ALL
            </span>
        </a>
    </div>
</center>
<div class="tieude-main p-3 mt-5 container">
    <a href="">
        <span class="text-white" style="font-weight: 700"><i class="fab fa-shopify"></i> SẢN PHẨM MỚI NHẤT</span>
    </a>
</div>
<main class="main__one container-xl">
    <div class="sp__main">
        <div class="row container">
            <?php foreach ($post->select_product() as $val) : extract($val) ?>
                <div class="col-xl-3 col-md-6 col-6 p-3 card">
                    <div class="card__tt">
                        <div class="card__tt-image">
                            <img src="<?= IMAGE ?><?= $image_pro ?>" alt="">
                            <div class="sp__hover d-flex  justify-content-around align-items-center container">
                                <div class="sp__hover--button">
                                    <strong><a href="<?= GET ?>?id_chitiet=<?= $id_pro ?>">Chi tiết</a></strong>
                                </div>
                                <div class="icon">
                                    <ul class="d-flex">
                                        <li><a href="<?= CONTROLLERS_USER ?>?action=like&id_like=<?= $id_pro ?>"><i class="far fa-heart"></i></a></li>
                                      
                                        
                                </div>
                            </div>
                        </div>
                        <div class="ten_sp" style="margin-top: 15px;";>
                                        <strong><?= $title_pro ?></strong>
                                    </div>
                                    
                                    <div class="gia_sp d-flex" style="margin-top: 15px;";>
                                        <div class="tt_gia_tien" style="margin-right: 5px";>
                                            <i class="fas fa-tags"></i>
                                        </div>
                                        <div class="gia_goc" style="color: #ccc;">
                                            <del><span><?= $price_pro ?></span></del>
                                        </div>
                                        <div class="gach_sp mx-2" ;></div>
                                        <div class="gia_duocgiam";>
                                            <span><?php echo number_format($sale_chinh = $price_pro - $price_pro * ($sale_pro / 100)); ?></span>
                                        </div>
                                        <div class="gach"></div>
                                        <div class="sale_sp" style="margin-left: 80px";>
                                            <span>
                                                <?= $sale_pro ?>%
                                            </span>
                                        </div>
                                    </div>
                                    <div class="ten_sp" style=" font-size:13px; margin-top: 15px;">
                                        <span class="text-dark" style="color:rgb(83, 159, 192) !important">Mua 2 được giảm thêm 10%</span>
                                    </div>
                                    <div class="new">
                                        <span>
                                            new
                                        </span>
                                    </div>

                    </div>
                </div>
            <?php endforeach; ?>

        </div>
    </div>
    <center>
        <div class="view__all mt-5">
            <a href="<?= CONTROLLERS_USER ?>?action=danhmuc">
                <span>
                    VIEW ALL
                </span>
            </a>
        </div>
    </center>
</main>
<main>
<div class="img_main" style="margin-top: 50px">
    <?php 
    $imageDisplayed = false; 

    foreach ($post->get_val('img_main') as $key => $val) {
        if (!$imageDisplayed) {
            extract($val);
            echo '<img src="' . IMAGE . 'main2.jpeg" alt="" class="d-block image_banner" style="width:100%">';
            $imageDisplayed = true; 
        }
    }
    ?>
</div>
<div class="img_main1" style="margin-top: 20px">
    <?php 
    $imageDisplayed = false; 

    foreach ($post->get_val('img_main') as $key => $val) {
        if (!$imageDisplayed) {
            extract($val);
            echo '<img src="' . IMAGE . 'main1.jpeg" alt="" class="d-block image_banner" style="width:100%">';
            $imageDisplayed = true; 
        }
    }
    ?>
</div>

</main>

</div>