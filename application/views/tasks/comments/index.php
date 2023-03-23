<!-- MAIN CONTENT-->
<div class="main-content">
    <div class="section__content section__content--p30">
        <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card border border-primary">
                    <div class="card-header">
                        <strong class="card-title">QA - <a href="<?php echo base_url().'/task/'. $get_task['id'];
                         ?>" class="text-dark hvr-underline"><?php echo $get_task['task_name']; ?></a></strong>
                        <small>
                        <?php  if($user_info['role'] == 1):?>
                            <a href="javascript:;" id="updateCommentbtn" class="h6 text-primary float-right">
                            <i class="fa fa-pencil-square-o"></i></a>
                            <?php endif; ?>
                        </small>
                    </div>
                    <div class="card-body">
                        <?php if(!empty($qa_comments)){ ?>
                        <div class="comment_user_qa">
                            <span class="mb-2">
                                <strong>
                                 <?php $user_name = $this->users_model->get_users($qa_comments['comment_qa_id']); echo $user_name['first_name'];?>
                                </strong> 
                                 <?php echo $qa_comments['comment_date']; ?></span>
                            <p><?php echo $qa_comments['comment_text']; ?></p>
                            <hr>
                        </div>
                        <?php } else { ?>
                        <div class="comment_user_qa mb-3">
                            <i>No comments...</i>
                        </div>
                        <?php } ?>
                        <?php if(empty($qa_comments) and $user_info['role'] == 1): ?>
                        <?php echo form_open('task/'.$get_task['id'].'/comment'); ?>
                            <textarea class="form-control" name="comment_text" id="comment_text"></textarea>
                            <input type="submit" name="qa_comment" value="Save" class="btn btn-md btn-primary float-right">
                        </form>
                        <?php endif; ?>

                        <hr class="bg-primary">
                    <div class="child_comment">
                    <?php if(!empty($get_reply)){ ?>
                        <?php foreach($get_reply as $reply): ?>
                        <div class="comment_user">
                            <span class="mb-2">
                            <strong>
                                 <?php $user_name = $this->users_model->get_users($reply['comment_user_id']); echo $user_name['first_name'];?>
                                </strong> 
                                <?php echo $reply['comment_child_date']; ?></span>
                            <div class="d-block"><?php echo $reply['comment_text_child']; ?> </div>
                            <hr>
                        </div>
                        <?php endforeach; ?>
                        <?php } else { ?>
                        <div class="comment_user_qa mb-3">
                            <i>No reply yet...</i>
                        </div>
                        <?php } ?>
                    </div>
                    <?php if(!empty($qa_comments)): ?>
                    <div class="child_comment_textarea">
                            <?php echo form_open('task/'.$get_task['id'].'/comment'); ?>
                                <textarea class="form-control" name="comment_text_child" id="comment_text_child"></textarea>
                            <input type="submit" value="Send" name="qa_comment_child" class="btn btn-md btn-success float-right">

                    </div>
                    </form>
                    <?php endif; ?>
                    </div>

            

      
                </div>
            </div>
        </div>

        </div>
    </div>
</div>
<!-- /.container-fluid -->



    <!-- Create Instruction to Modal-->
    <div id="updateComment">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
        <?php echo form_open('task/'.$get_task['id'].'/comment'); ?>
        <form>
            <div class="modal-body">
            <div class="text-xs font-weight-bold text-success text-uppercase mb-2">Update QA Comment</div>
            <textarea type="text" name="text_comment_update" class="form-control" id="text_comment_update"><?php echo $qa_comments['comment_text']; ?></textarea>
            </div>
            <div class="modal-footer">
                <button id="closeBtn" class="btn btn-secondary closebtn_comment" type="button">Cancel</button>
                <input type="submit" name="comment_update" value="Update" class="btn btn-primary">
            </div>
        </form>
        </div>
    </div>
    </div>