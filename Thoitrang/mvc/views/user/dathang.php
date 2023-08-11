<main class="main__one mt-3 container-xl">
    <div class="tieude-main p-3 mt-3">
        <a href="">
            <span class="text-white"><i class="fab fa-shopify"></i> Giỏ hàng</span>
        </a>
    </div>
    <form action="" class="container" method="post">
        <div class="list">
            <table class="list_card">
                <tr class="list_card_name">
                    <th>Hình ảnh</th>
                    <th>Tên sản phẩm</th>
                    <th>Giá</th>
                    <th>Số lượng</th>
                    <th>Tổng</th>
                </tr>
                <?php
                $tong = 0;
                $tongall = 0;
                foreach ($_SESSION['mang_dathang'] as $val) : extract($val); ?>
                    <tr class="list_card_item list_like_item">
                        <td><img src="<?= IMAGE ?><?= $anh_pro ?>" alt=""></td>
                        <td><?= $title_pro ?></td>
                        <td><?= number_format($sale_chinh = $price_pro - $price_pro * ($sale_pro / 100)) ?></td>
                        <td><?= $quantity_pro ?></td>
                        <td><?= number_format($tong = $quantity_pro * $sale_chinh) ?></td>
                    </tr>
                    <?php $tongall += $tong ?>
                    <input type="text" name="id_dathang[]" value="<?= $id_pro ?>" hidden>
                    <input type="number" name="quantity_dathang[]" value="<?= $quantity_pro ?>" hidden>
                <?php endforeach; ?>
            </table>
        </div>

        <div class="row dat_hang ">
            <div class="col-xl-5 col-12">
                <div class="row" style="height:100%">
                    <div class="tieude-main p-3 mt-3">
                        <a href="">
                            <span class="text-white"><i class="far fa-heart"></i> Thông tin khách hàng</span>
                        </a>
                    </div>
                    <div class="col-12 dat_hang_2 box_main_cart_sp h-100">
                        <div class="form mt-3">
                            <table class="don">
                                <div class="input__form__icon card">
                                    <i class="far fa-user"></i>
                                    <input class=" nhap_input_login" type="text" name="ten_dathang" placeholder="Tên của bạn" value="<?= $name = isset($name) ? $name : ""; ?>">
                                </div>
                                <div class="input__form__icon card">
                                    <i class="far fa-address-card"></i>
                                    <input class=" nhap_input_login" type="text" name="diachi_dathang" placeholder="địa chỉ của bạn" value="<?= $diachi = isset($diachi) ?  $diachi : ""; ?>">
                                </div>
                                <div class="input__form__icon card">
                                    <i class="far fa-envelope"></i>
                                    <input class=" nhap_input_login" type="email" name="email_dathang" id="" placeholder="Email của bạn" value="<?= $gmail = isset($gmail) ? $gmail : ""; ?>">
                                </div>
                                <div class="input__form__icon card ">
                                    <i class="fas fa-phone"></i>
                                    <input class=" nhap_input_login" type="number" name="phone_dathang" placeholder="Phone của bạn" value="<?= $sdt = isset($sdt) ? $sdt : ""; ?>">
                                </div>
                                <div class="card p-3">
                                    <textarea name="noidung_dathang" id="" cols="30" rows="10" placeholder="Ghi chú thêm"></textarea>
                                </div>
                            </table>

                        </div>
                    </div>
                </div>

            </div>
            <div class="col-lg-2"></div>
            <div class="col-xl-5 col-12">
                <div class="row" style="height:100%">
                    <div class="tieude-main p-3 mt-3">
                        <a href="">
                            <span class="text-white"><i class="far fa-heart"></i> Tổng đơn hàng</span>
                        </a>
                    </div>
                    <div class="col-12 dat_hang_2 box_main_cart_sp h-100">
                        <div class=" row tong">
                            <div class="col-8">
                                <p>Tổng đơn hàng</p>
                                <p>Phí vận chuyển</p>
                                <p>Số tiền cần trả</p>
                            </div>
                            <div class="col-4">
                                <p><?= number_format($tongall) ?></p>
                                <p>0đ</p>
                                <p><?= number_format($tongall) ?></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <input type="number" name="tong_all" value="<?= $tongall ?>" hidden>
        <button type="submit" name="thanhtoan_donhang" class="btn dat_hang_3 m-3">thanh toán</button>
    </form>
</main>