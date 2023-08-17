<main>

    <h2 class="dash-title">Số sản phẩm được bán</h2>

    <div class="table-responsive">
        <table class="table table-xuly ">
            <thead>
                <tr>
                    <th>Tên sản phẩm</th>
                    <th>Số lượng bán được</th>
                    <th>Giá gốc sản phẩm</th>
                    <th>Tổng giá theo sản phẩm</th>
                    <th>Sale</th>
                    <th>Tổng giá sau khi sale</th>
                </tr>
            </thead>

            <tbody>
                <pre>
                <?php
                if (!empty($post->thongke_buy_pro())) {

                    foreach ($post->thongke_buy_pro() as $val) : extract($val); ?>
                        <tr>
                                <td><?= $tensp ?></td>
                                <td><?= $soct_theosp ?></td>
                                <td><?= $gia ?></td>
                                <td><?= $tong = $soct_theosp * $gia ?></td>
                                <td><?= $sale ?></td>
                                <td><?=number_format($sale_chinh = $tong - $tong * ($sale / 100))?></td>
                        </tr>
                <?php endforeach;
                } ?>
            </tbody>

        </table>
        
    </div>
</main>