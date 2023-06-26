<div class="main-content">
<div class="section__content section__content--p30">
<div class="container-fluid">
<div class="row">
<?php if($user_info['role'] == 1): ?>
    <div class="col-sm-12">
        <a class="btn btn-sm btn-primary float-right" href="<?php echo base_url().'training-activity/create/subject/'.$day_activity['id']; ?>">Create Subject</a>
    </div>
<?php endif; ?>
</div>
    <div class="row">
        <div class="col-md-12 h-100">
            <div class="card">
                <div class="card-header">
                    <strong class="card-title"><?php echo $day_activity['activity_title']; ?>
                    <?php if($user_info['role'] == 1): ?>
                        <small>
                            <a href="<?php echo base_url().'training-activity/delete/day/'.$day_activity['id']; ?>" class="badge badge-danger float-right mt-1 text-white">Delete</a>
                            <a href="<?php echo base_url().'training-activity/edit/activity/'.$day_activity['id']; ?>" class="badge badge-primary float-right mt-1 text-white">Edit</a>
                        </small>
                    <?php endif; ?>
                    </strong>
                </div>
                <div class="card-body">
                <p><?php echo $day_activity['activity_desc']; ?></p>
                <hr>
                <?php 
                    $act_id = $day_activity['id'];
                    $subjects = $this->activity_model->get_activity_subjects($act_id); 
                ?>  
                    <?php if(!empty($subjects)){ ?>
                    <ul class="list-group list-unstyled">
                        <?php foreach($subjects as $subject): ?>
                        <li><a class="d-block list-group-item text-black-50 hvr-underline" href="<?php echo base_url().'training-activity/subject/'.$subject['subject_slug']; ?>"><?php echo $subject['subject_title']; ?></a></li>
                        <?php endforeach; ?>
                    </ul> 
                    <?php }else{ ?> 
                        <span class="font-italic">No subject found!</span>
                    <?php } ?>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
</div>