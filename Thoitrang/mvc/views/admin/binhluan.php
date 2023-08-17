<main>

    <h2 class="dash-title">Bình luận</h2>
    <div class="table-responsive">
        <table class="table table-xuly">
            <thead>
                <tr>
                    <th>Mã sản phẩm</th>
                    <th>Tên sản phẩm </th>
                    <th>Số bình luận</th>
                    <th>Bình luận cũ nhất</th>
                    <th>Bình luận mới nhất</th>
                    <th>Chi tiết</th>
                </tr>
            </thead>
            <tbody>
                <pre>
                <?php 
                if (!empty($post->thongke_cm())) {
                    foreach ($post->thongke_cm() as $val) : extract($val); ?>
                        <tr>
                            <form action="<?=GET?>?action=xoa_cm_admin" method="post">
                
                                <td><?= $id_pro ?></td>
                                <td><?= $ten_pro ?></td>
                                <td><?= $so_cm ?></td>
                                <td><?= $max_bl ?></td>
                                <td><?= $min_bl ?></td>
                                <td><a href="<?= CONTROLLERS_ADMIN ?>?action=chitiet_cm&id=<?= $id_pro ?>" class="btn btn-warning">Chi tiết</a></td>
                        </tr>
                <?php endforeach;
                } ?>
            </tbody>
        </table>
        </form>
    </div>
</main>