<main>

    <h2 class="dash-title">Banner</h2>

    <div class="offcanvas offcanvas-end" id="demothem">
        <div class="offcanvas-header">
            <h1 class="offcanvas-title">Thêm banner</h1>
            <button type="button" class="btn-close" data-bs-dismiss="offcanvas"></button>
        </div>
        <div class="offcanvas-body">
            <form action="" class="mt-3" method="post" enctype="multipart/form-data">
                <div class=" card my-3 ">
                    <input class="form-control" type="text" name="title" placeholder="Nhập tiêu đề">
                </div>

                <div class=" card my-3 ">
                    <input class="form-control" type="file" name="image" placeholder="Chọn ảnh">
                </div>

                <div class=" card my-3 ">
                    <select class="form-control" name="special" id="">
                        <?php foreach($post->get_val('products') as $val): extract($val)?>
                        <option value="<?=$id_pro?>"><?=$title_pro?></option>
                        <?php endforeach;?>
                    </select>
                </div>

                <input type="submit" name="them_bn" value="Thêm" class="dang_nhap_dk btn btn-danger">

            </form>
        </div>
    </div>
   
    <button class="btn them my-3" type="button" data-bs-toggle="offcanvas" data-bs-target="#demothem">
        Thêm banner
    </button>

    <div class="table-responsive">
        <table class="table table-xuly ">
            <thead>
                <tr>
                    <th>
                        <input type="checkbox" name="" id="checkall" hidden>
                        <button class="btn btn-danger">
                            <label for="checkall" class="select">chọn tất</label>
                            <label for="checkall" class="unselect" style="display: none;">bỏ chọn</label>
                        </button>
                    </th>
                    <th>Tiêu đề</th>
                    <th>Ảnh</th>
                   
                    <th>Sản phẩm</th>
                   
                </tr>
            </thead>
            <tbody>
                <pre>
                <?php 
                
                if (!empty($post->get_val('banners'))) {
                    foreach ($post->get_val('banners') as $val) : extract($val); ?>
                        <tr>
                            <form action="" method="post">
                                <td><input type="checkbox" name="checkbox[]" id="check" value="<?= $id_banner ?>"></td>
                                <td><?= $title_banner ?></td>
                                <td><img src="<?= IMAGE ?><?= $image_banner ?>" width="200px" height="100px" alt=""></td>
                                <td><?= $id_product ?></td>
                             
                        </tr>
                <?php endforeach;
                } ?>
            </tbody>

        </table>
        <tr>
            <td><input onclick="return confirm('bạn muốn xóa theo lua chon');" class="btn btn-danger" type="submit" name="delete_banner" value="Xóa" id="checkall"></td>
        </tr>
        </form>
    </div>
</main>