<main>
    <h2 class="dash-title">Danh mục</h2>
    <div class="table-responsive">
        <table class="table table-xuly ">
            <thead>
                <tr>
                    <th>
                        <input type="checkbox" name="" id="checkall" hidden>
                        <button class="btn btn-danger">
                            <label for="checkall" class="select">Chọn tất cả</label>
                            <label for="checkall" class="unselect" style="display: none;">bỏ chọn</label>
                        </button>
                    </th>
                    <th>Tên danh mục</th>
                    <th>Sửa</th>
                </tr>
            </thead>
            <tbody>
                <?php 
                if (!empty($post->get_val('cates'))) {
                    foreach ($post->get_val('cates') as $val) : extract($val); ?>
                        <tr>
                            <form action="" method="post">
                                <td><input type="checkbox" name="checkbox[]" id="check" value="<?= $id_cate ?>"></td>
                                <td><?= $name_cate ?></td>               
                                <td><a href="<?= CONTROLLERS_ADMIN ?>?action=sua_dm&id=<?= $id_cate ?>" class="btn btn-warning">Sửa</a></td>
                        </tr>
                <?php endforeach;
                } ?>
            </tbody>

        </table>
        <tr>
            <td><input onclick="return confirm('bạn muốn xóa theo lua chon');" class="btn btn-danger" type="submit" name="delete_cate" value="Xóa" id="checkall"></td>
        </tr>
        </form>
    </div>




</main>