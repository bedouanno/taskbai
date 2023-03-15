<div class="main-content">
<div class="section__content section__content--p30">
<div class="container-fluid">
<div class="row">
                <!-- <div class="col-sm-12">
                    <a class="btn btn-sm btn-primary float-right" href="<?php //echo base_url().'training-activity/create/topic/'.$day_activity['id']; ?>">Create Topic</a>
                </div> -->
            </div>
    <div class="row">
        <div class="col-md-5">
            <div class="card">
                <div class="card-header">
                    <strong class="card-title">Topic: <?php echo $topic['subject_title']; ?>
                        <?php if($user_info['role'] == 1): ?>
                        <small>
                        <a href="<?php echo base_url().'training-activity/delete/topic/'.$topic['id']; ?>" class="badge badge-danger float-right mt-1 text-white">Delete</a>
                        <a href="<?php echo base_url().'training-activity/edit/topic/'.$topic['id']; ?>" class="badge badge-primary float-right mt-1 text-white">Edit</a>
                        </small>
                    <?php endif; ?>
                    </strong>
                </div>
                <div class="card-body">
                <div class="d-block mb-2">
                    <?php echo $topic['subject_desc']; ?>
                </div>
                <?php if(!empty($topic['subject_video']) || $topic['subject_video'] = NULL): ?>
                    <div class="d-block">
                        <video controls>
                        <source src="<?php echo base_url().'/upload/videos/'.$topic['subject_video']; ?>" type="video/mp4">
                        <!-- <source src="movie.ogg" type="video/ogg"> -->
                        Your browser does not support the video tag.
                        </video> 
                    </div>
                    <?php endif; ?>
                    <?php if(!empty($topic['subject_file']) || $topic['subject_file'] = NULL): ?>
                    <div class="d-block mt-3">
                        <h5>File:</h5>
                        <a href="<?php echo base_url().'upload/files/'.$topic['subject_file']; ?>" target="_blank"><?php echo base_url().'upload/files/'.$topic['subject_file']; ?></a>
                    </div>
                    <?php endif; ?>
                    <?php if(!empty($topic['subject_image']) || $topic['subject_image'] = NULL): ?>
                    <div class="d-block mt-3">
                        <a href="javascript:;"  data-fancybox="gallery" data-src="<?php echo base_url().'upload/images/'.$topic['subject_image']; ?>"><img src="<?php echo base_url().'upload/images/'.$topic['subject_image']; ?>" alt="image"></a>
                    </div>
                    <?php endif; ?>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
</div>