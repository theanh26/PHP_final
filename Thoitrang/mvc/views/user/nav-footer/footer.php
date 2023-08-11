    <!-- \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\footer\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ -->
    <?php if (!empty($post->get_val('info'))) {
        foreach ($post->get_val('info') as $logo) : extract($logo); ?>
            <div class="mt-5 w-100">
                <!-- Footer -->
                <footer class="text-center text-lg-start text-black">

                    <div class="p-1 pb-0">

                        <section class="container">

                            <div class="row">

                                <div class="col-xl-4 col-sm-12 mt-3 d-flex flex-column">
                                    <!-- <a class="navbar-brand__end" href=""><img src="<?= IMAGE ?><?= $logo ?>" alt=""></a> -->
                                <strong><span class="mt-3" ->
                                Tự tin thể hiện phong cách độc đáo - Chào đón thay đổi và sáng tạo không giới hạn!
                                    </span>
                                </strong>
                                    <div class="footer__info d-flex mt-3">
                                        <a class="btn btn-outline-light btn-floating m-1" role="button"><i class="fas fa-phone"></i></a>
                                        <div class="footer__phone--sdt d-flex flex-column ">
                                            <span style="margin-top: 10px;"> 
                                                (+84) 372163626
                                            </span>
                                           
                                        </div>
                                        
                                    </div><div class="footer__info d-flex mt-3">
                                    <a class="btn btn-outline-light btn-floating m-1" role="button"><i class="ti-email"></i></a>
                                        <div class="footer__email d-flex flex-column "> 
                                            <span style="margin-top: 10px;"> 
                                               theanhnb02@gmail.com
                                            </span>
                                           
                                        </div>
                                    </div>

                                </div>

                                <hr class="w-100 clearfix d-md-none" />

                                <div class="col-xl-4 col-sm-12 mt-3">
                                    <h6 class="text-uppercase mb-4 font-weight-bold">Trang chính</h6>
                                    <p>
                                        <a class="" href="<?= CONTROLLERS_USER ?>">Trang chủ</a>
                                    </p>
                                    <p>
                                        <a class="" href="<?= CONTROLLERS_USER ?>?action=danhmuc">Danh mục</a>
                                    </p>
                                    <p>
                                        <a class="" href="<?= CONTROLLERS_USER ?>?action=contact">Liên hệ</a>
                                    </p>
                                    <p>
                                        <a class="" href="<?= CONTROLLERS_USER ?>?action=gioithieu">Thông tin cửa hàng</a>
                                    </p>
                                </div>


                                <hr class="w-100 clearfix d-md-none" />


                                <div class="col-xl-4 col-sm-12 mt-3">
                                    <h6 class="text-uppercase mb-4 font-weight-bold">
                                        Đăng kí nhận ưu đãi
                                    </h6>
                                    <p>
                                        <a class="">
                                            <?= $adress_info ?>
                                        </a>
                                    </p>
                                    <p>
                                    <form class="d-flex">
                                        <input class="form-control" type="text" placeholder="nhập email của bạn vào đây">
                                        <button class="btn text-white" type="button">Đăng ký</button>
                                    </form>
                                    </p>
                                    <p>
                                    <div class="">

                                    <a class="btn btn-outline-light btn-floating m-1" role="button"><i class="fab fa-facebook-f"></i></a>


                                    <a class="btn btn-outline-light btn-floating m-1" role="button"><i class="fab fa-twitter"></i></a>


                                    <a class="btn btn-outline-light btn-floating m-1" role="button"><i class="fab fa-google"></i></a>


                                    <a class="btn btn-outline-light btn-floating m-1" role="button"><i class="fab fa-instagram"></i></a>
                                </div>
                                    </p>

                                </div>

                            </div>

                        </section>


                        

                </footer>
                <div class="top" id="myBtn"> <i class="fas fa-arrow-circle-up"></i> </div>
            </div>

    <?php endforeach;
    } ?>
    <script>
        /* Initiate Magnify Function
        with the id of the image, and the strength of the magnifier glass:*/
        magnify("myimage", 3);
    </script>

    <script src="../public/js/button_top.js">
    </script>

    <script src="../public/js/button_nav.js">
    </script>


    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <script src="../public/js/slider.js">
    </script>

    <script src="../public/js/input_img.js">
    </script>

    <script src="../public/js/check.js">
    </script>

    <script src="../public/js/buttonpre.js">
    </script>

    <script src="../public/js/validator.js"></script>
    </body>

    </html>