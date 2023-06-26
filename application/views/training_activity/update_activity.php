





<div class="main-content">
    <div class="section__content section__content--p30">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">Update Activity
                                <!-- <small>
                                    <span class="badge badge-danger float-right mt-1">49</span>
                                </small> -->
                            </strong>
                        </div>

                        <div class="card-body card-block">
                        <?php echo form_open('training-activity/edit/activity/'.$activity['id']); ?>
                                <div class="row form-group">
                                    <div class="col col-md-3">
                                        <label for="activity_title" class=" form-control-label">Title</label>
                                    </div>
                                    <div class="col-12 col-md-9">
                                        <input type="text" id="activity_title" required name="activity_title" placeholder="Enter title here..." value="<?php echo $activity['activity_title']; ?>" class="form-control">
                                    </div>
                                </div>
                                <div class="row form-group">
                                    <div class="col col-md-3">
                                        <label for="activity_desc" class=" form-control-label">Activity Description</label>
                                    </div>
                                    <div class="col-12 col-md-9">
                                        <textarea type="text" required id="activity_desc" name="activity_desc" class="form-control"><?php echo $activity['activity_desc']; ?></textarea>
                                        <!-- <small class="form-text text-muted">Create day activity</small> -->
                                    </div>
                                </div>
                                <div class="row form-group d-block">
                                    <button type="submit" class="btn btn-primary btn-sm float-right mr-3">
                                    <i class="fa fa-dot-circle-o"></i> Update Activity
                                    </button>
                                </div>
                            </form>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>