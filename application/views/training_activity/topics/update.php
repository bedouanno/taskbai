<div class="main-content">
    <div class="section__content section__content--p30">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-5">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">Update
                            </strong>
    
                        </div>
                     <div class="card-body card-block">
                     <?php if(!empty(validation_errors())): ?>
                        <div class="alert alert-dismissible alert-danger">
                        <!--  <button type="button" class="btn-close" data-bs-dismiss="alert"></button>-->
                        <strong><?php echo validation_errors(); ?></strong>
                        </div>
                        <?php endif; ?>
                   
                        <?php echo form_open('training-activity/edit/topic/'.$topic['id']); ?>
                                <div class="form-group">
                                    <label for="topic_name" class=" form-control-label">Topic Title</label>
                                    <input type="text" required value="<?php echo $topic['topic_name']; ?>" id="topic_name" name="topic_name" placeholder="Enter subject title here..." class="form-control">
                                </div>
                                <div class="form-group">
                                    <label for="topic_desc" class=" form-control-label">Topic Description</label>
                                    <textarea required id="topic_desc" name="topic_desc" placeholder="Enter topic desciption..." class="form-control"><?php echo $topic['topic_desc']; ?></textarea>
                                </div>
                                <div class="form-group">
                                    <label for="topic_link" class=" form-control-label">Topic File/Link</label>
                                    <input type="text" value="<?php echo $topic['topic_link']; ?>" id="topic_link" name="topic_link" placeholder="Enter file link here..." class="form-control">
                                </div>
                                <div class="row form-group d-block">
                                    <button type="submit" class="btn btn-primary btn-sm float-right mr-3">
                                    <i class="fa fa-dot-circle-o"></i> Update Topic
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