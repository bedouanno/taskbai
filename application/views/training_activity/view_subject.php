<div class="main-content">
<div class="section__content section__content--p30">
<div class="container-fluid">
<div class="row">
                <!-- <div class="col-sm-12">
                    <a class="btn btn-sm btn-primary float-right" href="<?php //echo base_url().'training-activity/create/subject/'.$day_activity['id']; ?>">Create Subject</a>
                </div> -->
            </div>
    <div class="row">
        <div class="col-md-3">
            <div class="card">
                <div class="card-header">
                    <strong class="card-title">Subject: <?php echo $subject['subject_title']; ?>
                        <?php if($user_info['role'] == 1): ?>
                        <small>
                        <a href="<?php echo base_url().'training-activity/delete/subject/'.$subject['id']; ?>" class="badge badge-danger float-right mt-1 text-white">Delete</a>
                        <a href="<?php echo base_url().'training-activity/edit/subject/'.$subject['id']; ?>" class="badge badge-primary float-right mt-1 text-white">Edit</a>
                        </small>
                    <?php endif; ?>
                    </strong>
                </div>
                <div class="card-body">
                <div class="d-block mb-2">
                <?php if(!empty($topics)){ ?>
                <ul class="list-group list-unstyled">
                    <?php foreach($topics as $topic): ?>
                        <li><a href="javascript:;" onClick="open_topic('#<?php  echo $topic['id'].'id'; ?>')" class="d-block list-group-item text-black-50 hvr-underline"><?php echo $topic['topic_name']; ?></a></li>
                    <?php  endforeach; ?>
                </ul>
                <?php }else{ echo "No list of topics"; } ?>
                </div>
                </div>
                <?php if($user_info['role'] == 1): ?>
                <div class="card-footer">
                    <a href="<?php echo base_url().'training-activity/subject/'.$subject['id'].'/create/topic'; ?>" class="btn btn-sm btn-success float-right">Create Topic</a>
                </div>
                <?php endif; ?>
            </div>
        </div>
        <div id="parent_topic" class="col-md-9 d-none">
        <?php foreach($topics as $topic): ?>
        
        <div class="col-md-12 child_topic" id="<?php echo $topic['id'].'id'; ?>">
            <div class="card">
                <div class="card-header">
                    <strong class="card-title">Topic: <?php  echo $topic['topic_name']; ?>
                        <?php if($user_info['role'] == 1): ?>
                        <small>
                        <!-- <a href="<?php echo base_url().'training-activity/delete/subject/'.$subject['id']; ?>" class="badge badge-danger float-right mt-1 text-white">Delete</a> -->
                        <a href="<?php echo base_url().'training-activity/edit/topic/'.$topic['id']; ?>" class="badge badge-primary float-right mt-1 text-white">Edit</a>
                        </small>
                    <?php endif; ?>
                    </strong>
                </div>
                <div class="card-body">
                <div class="d-block mb-2">

                <div class="mb-3">
                <p><?php echo $topic['topic_desc']; ?></p>
                </div>

                <?php if(!empty($topic['topic_link'])): ?>



               <?php if(strpos($topic['topic_link'], '.mp4') !== false){ ?>
                        <div class="embed-responsive embed-responsive-16by9">
                        <!-- <iframe class="embed-responsive-item"  src="" sandbox></iframe> -->
                            <video controls="true" class="embed-responsive-item myVideo" id="<?php echo $topic['id'].'id'; ?>myVideo">
                            <source src="<?php echo base_url() ?>media/<?php echo $topic['topic_link']; ?>" type="video/mp4" />
                            </video>
                        </div>
                <?php } ?>

               <?php if(strpos($topic['topic_link'], '.jpg') !== false){ ?>
                        <div class="embed-responsive">
                        <!-- <iframe class="embed-responsive-item"  src="" sandbox></iframe> -->
                    
                            <img src="<?php echo base_url() ?>media/<?php echo $topic['topic_link']; ?>" alt="img"/>
               
                        </div>
                    <?php } ?>
                <?php endif; ?>

                </div>
                </div>
            </div>
        </div>

        <?php  endforeach; ?>
        </div>
        <div id="default_topic" class="col-md-9">

        
        <div class="col-md-12 child_topic">
            <div class="card">
                <div class="card-header">
                    <strong class="card-title">Introduction
                    </strong>
                </div>
                <div class="card-body">
                <div class="d-block mb-2">
                </div>
                </div>
            </div>
        </div>

        </div>
    </div>
</div>
</div>
</div>