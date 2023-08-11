<?php if (!empty($post->get_val('info'))) {
    foreach ($post->get_val('info') as $logo) : extract($logo); ?>
    <ul class="breadcrumb" style="margin: 25px 0px 20px 100px">
          <li class="breadcrumb-item"><a href="<?= CONTROLLERS_USER ?>">Trang chủ</a></li>
          <li class="breadcrumb-item active"><a href="<?= CONTROLLERS_USER ?>?action=gioithieu">giới thiệu</a></li>
      </ul>
        <div class="container tieude-main p-3 mt-3">
            <a href="">
                <span class="text-white"><i class="ti-wallet"></i> Lời giới thiệu</span>
            </a>
        </div>
        <div class="content_gioithieu container media px-5 py-1">
        <h4 style="color: rgb(83, 159, 192); margin-top: 20px">Giới thiệu</h4>
        <p>Chào mừng đến với cửa hàng thời trang của chúng tôi!</p>
        
        <p>Chúng tôi tự hào giới thiệu một điểm đến thú vị cho những người yêu thích thời trang và phong cách. Cửa hàng thời trang của chúng tôi 
        là nơi bạn có thể khám phá những xu hướng thời trang mới nhất và tìm thấy những món đồ phù hợp với cá tính và phong cách của bạn.</p>
        
        <p>Được thành lập với niềm đam mê về thời trang và sự sáng tạo, chúng tôi cam kết mang đến cho bạn những sản phẩm thời trang chất lượng cao, 
        đa dạng và đẹp mắt. Từ những bộ quần áo thời thượng, phụ kiện đa dạng đến những mẫu giày dép đẳng cấp, chúng tôi luôn cập nhật xu hướng mới
         nhất để bạn luôn tỏa sáng trong mọi dịp.</p>

        <h5 style="color: #c0392b">Tầm nhìn</h5>

        <p>BBK mong muốn trở thành website cung cấp những sản phẩm thời trang uy tín, chất lượng và tốt nhất cho mọi đối tượng trên toàn quốc.</p>

        <h5 style="color: #c0392b">Sứ mệnh</h5>

        <p>Tự tin thể hiện phong cách độc đáo - Chào đón thay đổi và sáng tạo không giới hạn!</p>

        <h5 style="color: #c0392b">Đội ngũ nhân viên</h5>

        <p>Với đội ngũ nhân viên nhiệt tình, giàu kinh nghiệm và tận tâm, chúng tôi sẽ luôn sẵn lòng tư vấn và hỗ trợ bạn trong việc lựa chọn những trang 
        phục tốt nhất. Bạn sẽ được trải nghiệm mua sắm dễ dàng, thú vị và đáng nhớ tại cửa hàng của chúng tôi.</p>

        <h5 style="color: #c0392b">Chất lượng và độ tin cậy</h5>

        <p>Không chỉ dừng lại ở việc mang đến cho bạn những món đồ thời trang hàng đầu, chúng tôi cũng cam kết về sự chất lượng và độ tin cậy. 
            Chúng tôi luôn đảm bảo mỗi sản phẩm bạn chọn mua đều đạt chuẩn cao nhất và mang lại sự hài lòng tuyệt đối.</p>
        
        <h5 style="color: #c0392b">Phong cách sống</h5>

        <p>Với chúng tôi, bạn không chỉ mua sắm thời trang mà còn trải nghiệm một phong cách sống. Hãy đến với cửa hàng thời trang của chúng tôi và 
            để chúng tôi giúp bạn thể hiện cá tính và tự tin trong từng bước đi. Chúng tôi rất hân hạnh được đồng hành cùng bạn trên hành trình khám phá 
            vẻ đẹp thời trang và phong cách độc đáo của riêng bạn.</p>

        </div>

<?php endforeach;
} ?>