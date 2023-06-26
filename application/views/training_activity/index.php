<div class="main-content">
    <div class="section__content section__content--p30">
        <div class="container-fluid">
        <?php if($user_info['role'] == 1): ?>
            <div class="row">
                <div class="col-sm-12">
                    <a class="btn btn-sm btn-primary float-right" href="<?php echo base_url().'training-activity/create';?>">Create Activity</a>
                </div>
            </div>
            <?php endif; ?>
            <div class="row">
                <?php if(!empty($activities)){ ?>
                <?php foreach($activities as $activity): ?>
                <div class="col-md-4">
                    
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title"><?php echo $activity['activity_title'] ?></strong>
                        </div>
                        <div class="card-body">
                            <span class="d-block mb-2"><?php echo $activity['activity_desc']; ?></span>
                            <?php 
                                $act_id = $activity['id'];
                                $subjects = $this->activity_model->get_activity_subjects($act_id); 
                            ?>  
                            <?php if(!empty($subjects)){ ?>
                            <ul class="list-group list-unstyled">
                                <?php foreach($subjects as $subject): ?>
                                <li><a class="d-block list-group-item text-black-50 hvr-underline" href="<?php echo base_url().'training-activity/subject/'.$subject['subject_slug']; ?>"><?php echo $subject['subject_title']; ?></a></li>
                                <?php endforeach; ?>
                            </ul> 
                            <?php }else{ ?> 
                                <span class="font-italic">No Subjects found!</span>
                            <?php } ?>
                        </div>
                        <div class="card-footer">
                        <small class="float-right">
                        <a href="<?php echo base_url().'training-activity/day/'.$activity['id']; ?>" class="d-block btn btn-sm btn-success">OPEN Activity</a>
                        </small>
                        </div>
                    </div>
                </div>
                <?php endforeach; ?>
                <?php } else { ?>
                    <h3 class="font-italic">No daily activity!</h3>
                <?php } ?>

            </div>
        </div>
    </div>
</div>