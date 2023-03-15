<div class="main-content">
    <div class="section__content section__content--p30">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-5">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">Create Topic
                            </strong>

                            <small>
                            <span class="badge badge-danger badge-lg float-right mt-1">slug: <small class="subject_title_slug"></small></span>
                            </small>
                        </div>
                     <div class="card-body card-block">
                     <?php if(!empty(validation_errors())): ?>
                        <div class="alert alert-dismissible alert-danger">
                        <!--  <button type="button" class="btn-close" data-bs-dismiss="alert"></button>-->
                        <strong><?php echo validation_errors(); ?></strong>
                        </div>
                        <?php endif; ?>
                   
                        <?php echo form_open_multipart('training-activity/create/topic/'.$day_activity['id']); ?>
                                <div class="form-group">
                                    <label for="subject_title" class=" form-control-label">Topic Title</label>
                                    <input type="text" required value="<?php echo $post_data['subject_title']; ?>" id="subject_title" name="subject_title" placeholder="Enter topic title here..." class="form-control">
                                </div>
                                <div class="form-group">
                                    <label for="subject_desc" class=" form-control-label">Topic Description</label>
                                    <textarea type="text" required value="<?php echo $post_data['subject_desc']; ?>"  id="subject_desc" name="subject_desc" placeholder="Enter topic description here..." class="form-control"></textarea>
                                </div>
                                <div class="row form-group">
                                    <div class="col col-md-3">
                                        <label for="subject_video" class=" form-control-label">Video File</label>
                                    </div>
                                    <div class="col-12 col-md-9">
                                        <input type="file" id="subject_video" name="subject_video" class="form-control-file">
                                    </div>
                                </div>
                                <div class="row form-group">
                                    <div class="col col-md-3">
                                        <label for="subject_file">Doc File</label>
                                    </div>
                                    <div class="col-12 col-md-9">
                                        <input type="file" id="subject_file" name="subject_file">
                                    </div>
                                </div>
                                <div class="row form-group">
                                    <div class="col col-md-3">
                                        <label for="subject_image">Image File</label>
                                    </div>
                                    <div class="col-12 col-md-9">
                                        <input type="file" id="subject_image" name="subject_image">
                                    </div>
                                </div>
                                <div class="row form-group">
                                    <div class="col col-md-3">
                                    <input type="hidden" required name="activity_id" class="form-control" value="<?php echo $day_activity['id']; ?>">
                                    <input type="hidden" required name="subject_slug" class="form-control" id="slug_input" value="">
                                    </div>
                                </div>
                                <div class="row form-group d-block">
                                    <button type="submit" class="btn btn-primary btn-sm float-right mr-3">
                                    <i class="fa fa-dot-circle-o"></i> Save Topic
                                    </button>

                                </div>
                                <?php echo form_close(); ?>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>