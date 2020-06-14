<div class="body container">
    <div class="result">
        <p>Tìm kiếm với từ khoá '<?php echo $data['Key'] ?>'</p>
        <select name="filter" class="custom-select" onchange="Filter(this)" style="width: 20%;">
            <option value="all" selected>Tất cả</option>
            <option value="shop">Quán cafe</option>
            <option value="course">Khoá học</option>
            <option value="instructor">Người hướng dẫn</option>
        </select>
    </div>
    <div id="listShop" class="list">
        <?php
        while ($result = mysqli_fetch_array($data['ListResult']['listShop'])) {
            ?>
            <div class="item">
                <a class="photo" href=<?php echo "/muzzy/Shop/ShopDetail/" . $result['id'] ?>>
                    <img src="/muzzy/public/image/cafe.jpg" alt="" />
                    <?php
                        if ($result['discount'] != NULL) {
                            ?>
                        <div class="discount"><?php echo $result['discount'] ?>%</div>
                    <?php
                        }
                        ?>

                </a>

                <div class="name-stars">
                    <p class="name"><?php echo $result['name'] ?></p>
                    <div class="stars">
                        <?php
                            for ($i = 0; $i < $result['rate']; $i++) {
                                ?>
                            <i class="fas fa-star"></i>
                        <?php
                            }
                            for ($i = 0; $i < 5 - $result['rate']; $i++) {
                                ?>
                            <i class="far fa-star"></i>
                        <?php
                            }
                            ?>

                    </div>
                </div>
                <p class="address"><?php echo $result['address'] ?></p>
            </div>
        <?php
        }
        ?>

    </div>

    <div id="listCourse" class="list">
        <?php
        while ($result = mysqli_fetch_array($data['ListResult']['listCourse'])) {
            ?>
            <div class="item">
                <a class="photo" href=<?php echo "/muzzy/Course/CourseDetail/" . $result['id'] ?>>
                    <img src="/muzzy/public/image/cafe.jpg" alt="" />
                    <?php
                        if ($result['discount'] != NULL) {
                            ?>
                        <div class="discount"><?php echo $result['discount'] ?>%</div>
                    <?php
                        }
                        ?>

                </a>

                <div class="name-stars">
                    <p class="name"><?php echo $result['content'] ?></p>
                    <div class="stars">
                        <?php
                            for ($i = 0; $i < $result['rate']; $i++) {
                                ?>
                            <i class="fas fa-star"></i>
                        <?php
                            }
                            for ($i = 0; $i < 5 - $result['rate']; $i++) {
                                ?>
                            <i class="far fa-star"></i>
                        <?php
                            }
                            ?>

                    </div>
                </div>
                <p class="address"><?php echo $result['address'] ?></p>
            </div>
        <?php
        }
        ?>

    </div>

    <div id="listInstructor" class="list">
        <?php
        while ($result = mysqli_fetch_array($data['ListResult']['listInstructor'])) {
            ?>
            <div class="item">
                <a class="photo" href=<?php echo "/muzzy/Instructor/IntructorDetail/" . $result['id'] ?>>
                    <img src="/muzzy/public/image/cafe.jpg" alt="" />
                </a>

                <div class="name-stars">
                    <p class="name"><?php echo $result['fullname'] ?></p>

                </div>
                <p class="address"><?php echo $result['address'] ?></p>
                <p class="address"><i class="fas fa-phone-alt"></i> <?php echo $result['phonenumber'] ?></p>
            </div>
        <?php
        }
        ?>

    </div>


    <!-- <div class="pagination">
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
    </div> -->
    <script language="javascript">
        function Filter(Obj) {
            var blockShop = document.getElementById('listShop');
            var blockCourse = document.getElementById('listCourse');
            var blockInstructor = document.getElementById('listInstructor');
            var value = Obj.value;
            if (value == 'all') {
                blockShop.style.display = "flex";
                blockCourse.style.display = "flex";
                blockInstructor.style.display = "flex";
            } else if (value == 'shop') {
                blockShop.style.display = "flex";
                blockCourse.style.display = "none";
                blockInstructor.style.display = "none";
            } else if (value == 'course') {
                blockShop.style.display = "none";
                blockCourse.style.display = "flex";
                blockInstructor.style.display = "none";
            } else {
                blockShop.style.display = "none";
                blockCourse.style.display = "none";
                blockInstructor.style.display = "flex";
            }
        }
    </script>
</div>