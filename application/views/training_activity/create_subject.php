<div class="main-content">
    <div class="section__content section__content--p30">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-5">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">Create Subject
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
                   
                        <?php echo form_open_multipart('training-activity/create/subject/'.$day_activity['id']); ?>
                                <div class="form-group">
                                    <label for="subject_title" class=" form-control-label">Subject Title</label>
                                    <input type="text" required value="<?php echo $post_data['subject_title']; ?>" id="subject_title" name="subject_title" placeholder="Enter subject title here..." class="form-control">
                                </div>
                                <div class="row form-group">
                                    <div class="col col-md-3">
                                    <input type="hidden" required name="activity_id" class="form-control" value="<?php echo $day_activity['id']; ?>">
                                    <input type="hidden" required name="subject_slug" class="form-control" id="slug_input" value="">
                                    </div>
                                </div>
                                <div class="row form-group d-block">
                                    <button type="submit" class="btn btn-primary btn-sm float-right mr-3">
                                    <i class="fa fa-dot-circle-o"></i> Save Subject
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