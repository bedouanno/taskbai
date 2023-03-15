<div class="main-content">
    <div class="section__content section__content--p30">
        <div class="container-fluid">
            <div class="row">
                <div class="<?php if($user_info['role'] == 1){ echo "col-sm-8"; }else{ echo "col-sm-12"; } ?>"> 
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">Tasks Error Types
                            </strong>
                        </div>
                        <div class="card-body">
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="card">
                                    <div class="card-header bg-primary text-white">
                                        <strong class="card-title">Minor
                                        </strong>
                                    </div>
                                    <div class="card-body">
                                        <ul class="list-group">
                                            <?php foreach($minor_errors as $minor_error): ?>
                                                <li class="list-group-item"><?php echo $minor_error['error_name']; ?></li>
                                            <?php endforeach; ?>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="card">
                                    <div class="card-header bg-danger text-white">
                                        <strong class="card-title">Major
                                        </strong>
                                    </div>
                                    <div class="card-body">
                                        <ul class="list-group">
                                            <?php foreach($major_errors as $major_error): ?>
                                                <li class="list-group-item"><?php echo $major_error['error_name']; ?></li>
                                            <?php endforeach; ?>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        </div>
                    </div>
                </div>
                <?php if($user_info['role'] == 1): ?>  
                <div class="col-md-4">
                <div class="card">
                    <div class="card-header">
                        <strong class="card-title">Add Task Error</strong>
                    </div>
                    <div class="card-body">
                    <?php echo form_open('task/errors'); ?>
                            <div class="form-group">
                                <label for="error_name">Error Name:</label>
                                <input type="text" class="form-control input-sm" id="error_name" name="error_name" placeholder="Error Name">
                            </div>
                            <div class="form-group">
                                <label for="error_category">Error Category:</label>
                                <select class="form-control input-sm" name="error_category">
                                    <option value="" selected disabled hidden>--- Choose category here ---</option>
                                    <option value="minor">Minor</option>
                                    <option value="major">Major</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <input type="submit" value="Save" class="btn btn-sm btn-primary float-right">
                            </div>
                        </form>
                    </div>
                </div>
                </div>
                <?php endif; ?>
            </div>
        </div>
    </div>
</div>
