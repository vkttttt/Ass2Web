<?php
if (empty($data['listStudent'])) {
    echo "Chưa có học viên do bạn quản lý";
} else {
    ?>
    <div class="table-responsive">
        <table class="table table-striped w-100">
            <thead>
                <tr>
                    <th scope="col">STT</th>
                    <th scope="col">Tên học viên</th>
                    <th scope="col">SĐT học viên</th>
                    <th scope="col">Khoá học</th>
                    <th scope="col">Tác vụ</th>
                </tr>
            </thead>
            <tbody>
                <?php
                $i = 0;
                while ($row = mysqli_fetch_array($data['listStudent'])) {
                    $i++;
                    ?>
                    <tr class="admin_student_list_item" data-id="<?php echo $row['idJoinCourse']; ?>">
                        <th scope="row"><?php echo $i; ?></th>
                        <td><?php echo $row['fullname']; ?></td>
                        <td><?php echo $row['phonenumber']; ?></td>
                        <td><?php echo $row['course']; ?></td>
                        <td class="text-center">
                            <i class="fa fa-trash text-danger btn_delete"></i>
                        </td>
                    </tr>
                <?php } ?>
            </tbody>
        </table>
    </div>

<?php } ?>