<main class="main__one mt-3 container-xl">
        <div class="tieude-main p-3 mt-3">
            <a href="">
                <span class="text-white"><i class="far fa-heart"></i> Sản phẩm yêu thích</span>
            </a>
        </div>
        <div class="list_like">
            <table class="list_like_table">
                <tr class="list_like_name">
                    <th class="image">Ảnh sản phẩm</th>
                    <th>Tên sản phẩm</th>
                    <th>Giá</th>
                    <th>Số lượng</th>               
                    <th>Xem</th>
                    <th>Xóa</th>
                </tr>
                <?php if(isset($id)): 
                if(!empty($post->get_val_id_join('user_id',$id,'loves','products','loves.pro_id','products.id_pro'))){
                foreach($post->get_val_id_join('user_id',$id,'loves','products','loves.pro_id','products.id_pro') as $val):extract($val);?>
                <tr class="list_like_item">
                    <td class="image"><img src="<?=IMAGE?><?=$image_pro?>" alt=""></td>
                    <td><?=$title_pro?></td>
                    <td><?php echo number_format($sale_chinh = $price_pro - $price_pro * ($sale_pro / 100)); ?></td>
                    <td><?=$quantity_pro?></td>
                    <td><button class="btn"><a href="<?= GET ?>?id_chitiet=<?= $id_pro ?>" style="color:#fff">Xem</a></button></td>
                    <td><button class="btn"><a href="<?= GET ?>?action=like&id_chitiet=<?= $id_love ?>" style="color:#fff">Xoá</a></button></td>
                </tr>
                <?php endforeach;
                } else {
                    echo "<center class='my-5'><h1>Trống sản phẩm</h1></center>";
                }
            endif;?>
            </table>
        </div>
    </main>