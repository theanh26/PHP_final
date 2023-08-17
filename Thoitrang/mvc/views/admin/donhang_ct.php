<main>

    <h2 class="dash-title">Chi tiết đơn hàng</h2>
    <a href="<?= CONTROLLERS_ADMIN ?>?action=danhsachdh" class="btn them">danh sách bình luận
    </a>

    <div class="table-responsive">
        <table class="table table-xuly ">
            <thead>
                <tr>
                   
                    <th>Mã sản phẩm</th>
                    <th>Nội dung</th>
                    <th>Ảnh</th>
                    <th>Số lượng</th>
                    <th>Giá</th>
                    <th>Sale</th>
                    <th>Ngày thêm</th>
                    <th>View</th>
                </tr>
            </thead>
            <tbody>
                <pre>
                <?php 
                if (!empty($post->thongke_order_detail($_GET['id']))) {
                    foreach ($post->thongke_order_detail($_GET['id']) as $val) : extract($val); ?>
                        <tr>
                            <form action="" method="post">
                               
                                <td><?= $title_pro ?></td>
                                <td><?= substr($content_pro, 0, 50) ?></td>
                                <td><img src="<?= IMAGE ?><?= $image_pro ?>" width="100px" height="100px" alt=""></td>
                                <td><?= $quantity_detail ?></td>
                                <td><?= number_format($sale_chinh = $price_pro - $price_pro * ($sale_pro / 100))  ?></td>
                                <td><?= $sale_pro ?></td>
                                <td><?= $date_pro ?></td>
                                <td><?= $view_pro ?></td>
                        </tr>
                <?php endforeach;
                } ?>
            </tbody>

        </table>
        </form>
    </div>
</main>