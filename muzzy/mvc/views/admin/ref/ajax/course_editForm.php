<input 
    type="hidden" 
    value="<?php echo $data['deleteCourse']['id']; ?>"
    id="adminCourseEditForm_id"
    >

<div class="form-group">
    <label for="adminCourseEditForm_content">Khoá học</label>
    <textarea 
        class="form-control" 
        id="adminCourseEditForm_content" 
        rows="3"><?php echo $data['deleteCourse']['content']; ?></textarea>
</div>


<div class="row">
    <div class="col-6">
        <div class="form-group">
            <label for="adminCourseEditForm_timestart_date">Time start (date)</label>
            <input 
                class="form-control" 
                type="date" 
                id="adminCourseEditForm_timestart_date"
                value="<?php echo $data['deleteCourse']['start_date'];?>"
                >

        </div>
    </div>
    <div class="col-6">
        <div class="form-group">
            <label for="adminCourseEditForm_timestart_time">Time start (time)</label>
            <input 
                class="form-control" 
                type="time" 
                id="adminCourseEditForm_timestart_time"
                value="<?php echo $data['deleteCourse']['start_time'];?>"
                >

        </div>
    </div>
</div>
<hr>
<div class="row">
    <div class="col-6">
        <div class="form-group">
            <label for="adminCourseEditForm_timeend_date">Time end (date)</label>
            <input 
                class="form-control" 
                type="date" 
                id="adminCourseEditForm_timeend_date"
                value="<?php echo $data['deleteCourse']['end_date'];?>"
                >

        </div>
    </div>
    <div class="col-6">
        <div class="form-group">
            <label for="adminCourseEditForm_timeend_time">Time end (time)</label>
            <input 
                class="form-control" 
                type="time" 
                id="adminCourseEditForm_timeend_time"
                value="<?php echo $data['deleteCourse']['end_time'];?>"
                >

        </div>
    </div>
</div>

<div class="form-group">
    <label for="adminCourseEditForm_fee">Học phí</label>
    <input 
        type="number" 
        class="form-control" 
        id="adminCourseEditForm_fee"
        value="<?php echo $data['deleteCourse']['fee'];?>"
        >
</div>
<div class="form-group">
    <label for="adminCourseEditForm_address">Địa chỉ</label>
    <textarea 
        class="form-control" 
        id="adminCourseEditForm_address" 
        rows="3"><?php echo $data['deleteCourse']['address'];?></textarea>
</div>
<div class="form-group">
    <label for="adminCourseEditForm_description">Mô tả</label>
    <textarea 
        class="form-control" 
        id="adminCourseEditForm_description" 
        rows="5"><?php echo $data['deleteCourse']['description'];?></textarea>
</div>