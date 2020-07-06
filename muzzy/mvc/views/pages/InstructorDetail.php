<?php
while ($row = mysqli_fetch_array($data['detailInstructor'])) {
  ?>
  <div class="body container">

    <div class="info mt-4">
      <div class="slider">
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
          <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
          </ol>
          <div class="carousel-inner">
            <div class="carousel-item active">
              <img src="/muzzy/public/image/cafe.jpg" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
              <img src="/muzzy/public/image/cafe.jpg" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
              <img src="/muzzy/public/image/cafe.jpg" class="d-block w-100" alt="...">
            </div>
          </div>
          <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>
      </div>
      <div class="info-text">

        <h1> <?php echo $row['fullname'] ?></h1>
        <p class="address">
          <?php echo $row['address'] ?>
        </p>
        <div class="stars">
          <i class="material-icons">
            star
          </i>
          <i class="material-icons">
            star
          </i>
          <i class="material-icons">
            star
          </i>
          <i class="material-icons">
            star
          </i>
          <i class="material-icons">
            star
          </i>
        </div>
        <p class="phone">Phone Number: <?php echo $row['phonenumber'] ?></p>

      </div>
    </div>
    <div class="comment">
      <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
        <li class="nav-item">
          <a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab" aria-controls="pills-home" aria-selected="true">Mô tả</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#pills-profile" role="tab" aria-controls="pills-profile" aria-selected="false">Hình ảnh</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" id="pills-contact-tab" data-toggle="pill" href="#pills-contact" role="tab" aria-controls="pills-contact" aria-selected="false">Bình luận và đánh giá</a>
        </li>
      </ul>
      <div class="tab-content" id="pills-tabContent">
        <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
          <div class="description">
            <p>
              Quán có thiết kế khá nhỏ nhắn và cổ kính, đa số vật trang trí ở
              đây là các món đồ cổ nên khi đến đây, ta sẽ có cảm tưởng như mình
              đang lạc về những năm về trước, ta lại chợt thấy tâm hồn mình dịu
              lại và bình yên. Đúng như tên gọi của nó là "Cafe Ngẫm", đến với
              quán, khách hàng sẽ được chìm mình trong những bản nhạc Acoustic
              nhẹ nhàng, sâu lắng.
            </p>
          </div>
        </div>
        <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
          <div class="row">
            <div class="column">
              <img src="/muzzy/public/image/detail_1.jpg" style="width:100%">
              <img src="/muzzy/public/image/detail_2.jpeg" style="width:100%">
              <img src="/muzzy/public/image/detail_3.jpg" style="width:100%">
              <img src="/muzzy/public/image/detail_4.png" style="width:100%">
              <img src="/muzzy/public/image/detail_5.png" style="width:100%">
              <img src="/muzzy/public/image/detail_1.jpg" style="width:100%">
              <img src="/muzzy/public/image/detail_2.jpeg" style="width:100%">
            </div>
            <div class="column">
              <img src="/muzzy/public/image/detail_6.jpg" style="width:100%">
              <img src="/muzzy/public/image/detail_7.jpg" style="width:100%">
              <img src="/muzzy/public/image/detail_8.jpg" style="width:100%">
              <img src="/muzzy/public/image/detail_9.jpg" style="width:100%">
              <img src="/muzzy/public/image/detail_10.jpg" style="width:100%">
              <img src="/muzzy/public/image/detail_1.jpg" style="width:100%">
              <img src="/muzzy/public/image/detail_1.jpg" style="width:100%">
            </div>
            <div class="column">
              <img src="/muzzy/public/image/detail_9.jpg" style="width:100%">
              <img src="/muzzy/public/image/detail_2.jpeg" style="width:100%">
              <img src="/muzzy/public/image/detail_4.png" style="width:100%">
              <img src="/muzzy/public/image/detail_5.png" style="width:100%">
              <img src="/muzzy/public/image/detail_10.jpg" style="width:100%">
              <img src="/muzzy/public/image/detail_1.jpg" style="width:100%">
              <img src="/muzzy/public/image/detail_1.jpg" style="width:100%">
            </div>
            <div class="column">
              <img src="/muzzy/public/image/detail_10.jpg" style="width:100%">
              <img src="/muzzy/public/image/detail_2.jpeg" style="width:100%">
              <img src="/muzzy/public/image/detail_3.jpg" style="width:100%">
              <img src="/muzzy/public/image/detail_4.png" style="width:100%">
              <img src="/muzzy/public/image/detail_5.png" style="width:100%">
              <img src="/muzzy/public/image/detail_1.jpg" style="width:100%">
              <img src="/muzzy/public/image/detail_2.jpeg" style="width:100%">
            </div>
          </div>
        </div>
        <div class="tab-pane fade" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab">
          <h1 class="pad-bot-10">Viết bình luận của bạn</h1>
          <div class="your-comment">
            <form method="POST" action="<?php echo $_SERVER['REQUEST_URI'] ?>">
              <textarea name="commentContent" style="color: #242424;" placeholder="Viết bình luận..."></textarea>
              <div class="send">
                <div class="stars pad-bot-10">
                  <i class="material-icons">
                    star
                  </i>
                  <i class="material-icons">
                    star
                  </i>
                  <i class="material-icons">
                    star
                  </i>
                  <i class="material-icons">
                    star
                  </i>
                  <i class="material-icons">
                    star
                  </i>
                </div>
                <button name="sendComment" class="btn btn-outline-success my-2" type="submit">
                  Gửi
                </button>
              </div>
            </form>
          </div>
          <div class="people-comment">
            <?php
              $listComment = $data['listComment'];
              while ($comment = mysqli_fetch_array($listComment)) {
                ?>
              <div class="show-comment" id="item-comment">
                <div class="avatar">
                  <img src="/muzzy/public/image/steve.jpg" />
                </div>
                <div class="info-comment">
                  <div class="name-stars">
                    <div class="info-user">
                      <p class="name">
                        <?php echo $comment['fullname']; ?>
                      </p>
                      <p class="date">
                        <?php echo $comment['time']; ?>
                      </p>
                    </div>

                    <div class="stars">
                      <?php
                          for ($i = 0; $i < $comment['rate']; $i++) {
                            ?>
                        <i class="fas fa-star"></i>
                      <?php
                          }
                          for ($i = 0; $i < 5 - $comment['rate']; $i++) {
                            ?>
                        <i class="far fa-star"></i>
                      <?php
                          }
                          ?>
                    </div>
                  </div>

                  <p class="content">
                    <?php echo $comment['content']; ?>
                  </p>
                </div>
              </div>
            <?php
              }
              ?>

          </div>
          <div class="pagination">
            <nav aria-label="Page navigation example">
              <ul class="pagination">
                <li class="page-item">
                  <a class="page-link" href="#" aria-label="Previous">
                    <span aria-hidden="true">&laquo;</span>
                  </a>
                </li>
                <li class="page-item"><a class="page-link" href="#">1</a></li>
                <li class="page-item"><a class="page-link" href="#">2</a></li>
                <li class="page-item"><a class="page-link" href="#">3</a></li>
                <li class="page-item">
                  <a class="page-link" href="#" aria-label="Next">
                    <span aria-hidden="true">&raquo;</span>
                  </a>
                </li>
              </ul>
            </nav>
          </div>
        </div>
      </div>

    </div>
  </div>
<?php
}
?>