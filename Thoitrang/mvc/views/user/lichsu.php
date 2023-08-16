<main class="main__one mt-5 container-xl">
    <h2 class="dash-title mt-3">Lịch sử mua hàng</h2>
    <?php if (!isset($id)) : ?>

        <div class="form__login mt-5">
            <form action="<?= CONTROLLERS_USER ?>?action=lichsu_sdt" class="grid-column mt-3" method="post" enctype="multipart/form-data">
                <div class="input__form__icon card ">
                    <i class="fas fa-phone"></i>
                    <input class="nhap_input_login" type="number" name="phone" placeholder="Phone của bạn" value="<?= $_SESSION['phone'] = isset($_SESSION['phone']) ? $_SESSION['phone'] : '' ?>">
                </div>
                <input type="submit" name="lichsu_sdt" value="Tìm sản phẩm từng mua" class="dang_nhap_dk btn">
            </form>
        </div>
    <?php endif ?>
    <div class="table-responsive">
        <table class="table table-light">
            <thead>
                <tr>
                <th>Họ và tên</th>
                <th>Email</th>
                <th>Số điện thoại</th>
                <th>Địa chỉ</th>
                <th>Nội dung</th>
                <th>Ngày đặt</th>
                <th>Tổng giá tiền</th>
                <th>Trạng thái</th>
                <th>Chi tiết</th>
                </tr>
            </thead>

            <tbody>
                <pre>
                <?php
                if (isset($id)) {
                    if (!empty($post->get_histrory($id))) {
                        foreach ($post->get_histrory($id) as $val) : extract($val); ?>
                        <tr>
                            <form action="" method="post">
                            <td><?= htmlspecialchars($name_order) ?></td>
                            <td><?= $email_order ?></td>
                            <td><?= $phone_order ?></td>
                            <td><?= $adress_order ?></td>
                            <td><?= htmlspecialchars($content_order) ?></td>
                            <td><?= $date_order ?></td>
                            <td><?= $total_order ?></td>
                                <td><a href="#" class="">
                                <?php
                                if ($action < 1) {
                                    echo "<span class='btn btn-warning'>Chờ xử lý</span>";
                                }
                                if ($action == 1) {
                                    echo "<span class='btn btn-danger'>Đang gửi</span>";
                                }
                                if ($action == 2) {
                                    echo "<span class='btn btn-success'>Đã nhận</span>";
                                }
                                if ($action == 3) {
                                    echo "<span class='btn btn-success'>Đã hủy đơn hàng</span>";
                                }  ?></a>   
                                </td>
                                <td><a href="<?= CONTROLLERS_USER ?>?action=chitiet_ls&id=<?= $id_order ?>" class="btn btn-warning" style="background-color: rgb(83, 159, 192); border: none">Chi tiết</a></td>
                        </tr>
                <?php endforeach;
                    } else {
                        echo "<center class='my-5'><h1>Trống Lịch sử</h1></center>";
                    }
                } else {
                    echo "<center class='my-3'><h1>Tài khoản đã từng đặt hàng</h1></center>";
                } ?>
            </tbody>

        </table>
        <tr>

        </tr>
        </form>
    </div>
</main>