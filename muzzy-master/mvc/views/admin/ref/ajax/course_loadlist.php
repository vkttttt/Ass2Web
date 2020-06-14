<?php
if (empty($data['listCourse'])) {
    echo "Chưa có khoá học do bạn quản lý";
} else {
    ?>
    <div class="table-responsive">
        <table class="table table-striped w-100">
            <thead>
                <tr>
                    <th scope="col">STT</th>
                    <th scope="col">Tên khoá học</th>
                    <th scope="col">Tóm tắt ngắn</th>
                    <th scope="col">Giảm giá</th>
                    <th scope="col">Rating</th>
                    <th scope="col">Tác vụ</th>
                </tr>
            </thead>
            <tbody>
                <?php
                $i = 0;
                while ($row = mysqli_fetch_array($data['listCourse'])) {
                    $i++;
                    ?>
                <tr class="admin_course_list_item" data-id="<?php echo $row['id'];?>">
                        <th scope="row"><?php echo $i;?></th>
                        <td><?php echo $row['content'];?></td>
                        <td>
                            Địa chỉ: <?php echo $row['address'];?>
                            <br>
                            Thời gian bắt đầu: <?php echo $row['timestart'];?>
                            <br>
                            Thời gian kết thúc: <?php echo $row['timeend'];?>
                        </td>
                        <td><?php echo $row['discount'];?></td>
                        <td><?php echo $row['rate'];?></td>
                        <td>
                            <i class="fa fa-pencil-alt mr-2 text-success btn_edit" data-toggle="modal" data-target="#adminCourseEditModal"></i>
                            <i class="fa fa-trash text-danger btn_delete"></i>
                        </td>
                    </tr>
                <?php } ?>
            </tbody>
        </table>
    </div>

<?php } ?>