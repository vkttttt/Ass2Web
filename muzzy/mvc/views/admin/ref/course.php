<div class="ml-md-4 flex-grow-1">
    <span 
        class="mb-4 btn btn-primary btn-sm" 
        data-toggle="modal" 
        data-target="#adminCourseAddModal">Thêm khoá học</span>
    <!-- Modal to add course -->
    <div class="modal fade" id="adminCourseAddModal">
        <div class="modal-dialog">
            <div class="modal-content">

                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">Thêm khoá học</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>

                <!-- Modal body -->
                <div class="modal-body">
                    <div id="adminCourseAddForm">

                        <div class="form-group">
                            <label for="adminCourseAddForm_content">Khoá học</label>
                            <textarea 
                                class="form-control" 
                                id="adminCourseAddForm_content" 
                                rows="3"></textarea>
                        </div>


                        <div class="row">
                            <div class="col-6">
                                <div class="form-group">
                                    <label for="adminCourseAddForm_timestart_date">Ngày bắt đầu</label>
                                    <input 
                                        class="form-control" 
                                        type="date" 
                                        id="adminCourseAddForm_timestart_date"

                                        >

                                </div>
                            </div>
                            <div class="col-6">
                                <div class="form-group">
                                    <label for="adminCourseAddForm_timestart_time">Giờ bắt đầu</label>
                                    <input 
                                        class="form-control" 
                                        type="time" 
                                        id="adminCourseAddForm_timestart_time"

                                        >

                                </div>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-6">
                                <div class="form-group">
                                    <label for="adminCourseAddForm_timeend_date">Ngày kết thúc</label>
                                    <input 
                                        class="form-control" 
                                        type="date" 
                                        id="adminCourseAddForm_timeend_date"

                                        >

                                </div>
                            </div>
                            <div class="col-6">
                                <div class="form-group">
                                    <label for="adminCourseAddForm_timeend_time">Giờ kết thúc</label>
                                    <input 
                                        class="form-control" 
                                        type="time" 
                                        id="adminCourseAddForm_timeend_time"

                                        >

                                </div>
                            </div>
                        </div>


                        <div class="form-group">
                            <label for="adminCourseAddForm_fee">Học phí</label>
                            <input 
                                type="number" 
                                class="form-control" 
                                id="adminCourseAddForm_fee"
                                >
                        </div>
                        <div class="form-group">
                            <label for="adminCourseAddForm_address">Địa chỉ</label>
                            <textarea 
                                class="form-control" 
                                id="adminCourseAddForm_address" 
                                rows="3"></textarea>
                        </div>
                        <div class="form-group">
                            <label for="adminCourseAddForm_description">Mô tả</label>
                            <textarea 
                                class="form-control" 
                                id="adminCourseAddForm_description" 
                                rows="5"></textarea>
                        </div>
                    </div>
                    <div class="w-100" id="adminCourseAddStatus" style="display: none"></div>

                </div>

                <!-- Modal footer -->
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Đóng</button>
                    <button type="button" class="btn btn-primary btn_add">Thêm</button>
                </div>

            </div>
        </div>
    </div>

    <div class="admin_course_list">
        Loading list...
    </div>

    <!-- The Modal to edit course-->
    <div class="modal fade" id="adminCourseEditModal">
        <div class="modal-dialog">
            <div class="modal-content">

                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">Chỉnh sửa khoá học</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>

                <!-- Modal body -->
                <div class="modal-body">
                    <div id="adminCourseEditForm">
                        Loading...
                    </div>
                    <div class="w-100" id="adminCourseEditStatus" style="display: none"></div>

                </div>

                <!-- Modal footer -->
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Đóng</button>
                    <button type="button" class="btn btn-primary btn_update">Lưu</button>
                </div>

            </div>
        </div>
    </div>
</div>
