<main class="main">

    <h2 class="dash-title">Thống kê</h2>

    <div class="dash-cards">
        <div class="card-single">
            <div class="card-body">
                <span class="ti-briefcase"></span>
                <div>
                    <h3>Tổng doanh thu</h3>
                    <h5><?= number_format($tong1) ?></h5>
                </div>
            </div>
            <div class="card-footer">
                <a href="<?= CONTROLLERS_ADMIN ?>?action=thongkesp">Xem tất cả</a>
            </div>
        </div>

        <div class="card-single">
            <div class="card-body">
                <span class="ti-reload"></span>
                <div>
                    <h3>Số sản phẩm bán được</h3>
                    <h5><?= $sp ?></h5>
                </div>
            </div>
            <div class="card-footer">
                <a href="<?= CONTROLLERS_ADMIN ?>?action=thongkesp">Xem tất cả</a>
            </div>
        </div>

        <div class="card-single">
            <div class="card-body">
                <span class="ti-heart"></span>
                <div>
                    <h3>Lượt view sản phẩm</h3>
                    <h5><?= $ttview ?></h5>
                </div>
            </div>
            <div class="card-footer">
                <a href="">Xem tất cả</a>
            </div>
        </div>
    </div>


    <section class="recent">
        <div class="activity-grid">
            <div class="activity-card">
                <div class="d-flex justify-content-between">
                    <h3>Đơn hàng bán được</h3>
                    <form action="" method="post" class="d-flex align-content-center mx-3" >
                        <select class="" name="date" id="" style="border:none;">
                            <option value="0">Tất cả tháng</option>
                            <?php for ($i = 1; $i <= 12; $i++) : ?>
                                <option value="<?= $i ?>">Tháng <?= $i ?></option>
                            <?php endfor; ?>
                        </select>
                        <input type="submit" name="chon_date" value="Chọn" class="dang_nhap_dk btn btn-dark" style="background-color: var(--main-color); border: none;">
                    </form>
                </div>
                <div class="table-responsive">
                    <table>
                        <thead>
                            <tr>
                            <th>Họ và tên</th>
                            <th>Số điện thoại</th>
                            <th>Email</th>
                            <th>Địa chỉ</th>
                            <th>Tổng tiền</th>
                            <th>Ngày đặt</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            if (!empty($save_mon)) {
                                foreach ($save_mon as $val) : extract($val); ?>
                                    <tr>
                                        <td><?= htmlspecialchars($name_order) ?></td>
                                        <td><?= $phone_order ?></td>
                                        <td><?= $email_order ?></td>
                                        <td><?= $adress_order ?></td>
                                        <td><?= number_format($total_order) ?></td>
                                        <td>
                                            <span class="badge success"><?= $date_order ?></span>
                                        </td>
                                    </tr>
                            <?php endforeach;
                            } ?>
                        </tbody>
                    </table>
                </div>
            </div>

            <div class="summary">
                <div class="summary-card">
                    <div class="summary-single">
                        <span class="ti-id-badge"></span>
                        <div>
                            <h5>Tổng giá</h5>
                            <small><?= number_format($tong_gia)?></small>
                        </div>
                    </div>
                    <div class="summary-single">
                        <span class="ti-calendar"></span>
                        <div>
                            <h5>Tháng đặt hàng</h5>
                            <small><?=$save_date?></small>
                        </div>
                    </div>
                    <div class="summary-single">
                        <span class="ti-face-smile"></span>
                        <div>
                            <h5>Số lượng đơn hàng</h5>
                            <small><?=$id_or?></small>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

</main>