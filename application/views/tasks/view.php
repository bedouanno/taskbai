
                   <!-- MAIN CONTENT-->
                   <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">


                <div class="row">
                    <div class="col-md-2 mx-auto">
                    <div class="card">
                        <div class="card-header">
                            Navigation Sidebar
                            </strong>
                        </div>
                        <div class="navbar-sidebar pt-0 pl-3">
                            <ul class="list-unstyled navbar__list">
                                <?php  if( $user_info['id'] == $task['assigned_id'] or $user_info['role'] == 1):?>
                                <li><a href="<?php echo base_url(); ?>task/<?php echo $task['id'];?>/comment"><i class="fas fa-tachometer-alt mr-2"></i> Comments QA</a></li>
                                <?php endif; ?>
                                <li>
                                    <a href="<?php echo base_url(); ?>tasks"><i class="fas fa-tasks mr-2"></i> Today's Task</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>

            <div class="col-md-10 mx-auto">
                <div class="card">
                    <div class="card-header">
                        Task Name: <strong class="card-title"><?php echo $task['task_name']; ?>
                        </strong>

                        <small class="float-right">
                            <?php if($user_info['role'] == 1): ?>
                            <span class="badge badge-primary mt-1">
                            <div class="dropdown no-arrow">
                                <a class="text-light" href="#" role="button" id="dropdownMenuLink"
                                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="fas fa-angle-down fa-fw"></i>
                                </a>
                                <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in"
                                    aria-labelledby="dropdownMenuLink">
                                    <a class="dropdown-item badge" href="<?php echo base_url().'task/delete/'.$task['id']; ?>">Delete</a>
                                </div>
                            </div>
                            </span>
                            <?php endif; ?>
                        </small>
                    </div>
                    <div class="card-body">
                            <div class="mx-auto">
                                <div class="row">
                                    <div class="col-sm-4">
                                        <span class="d-block font-weight-bold mb-1">Company Name:</span>
                                        <a class="text-dark hvr-underline" href="<?php echo base_url(); ?>clients/<?php echo $task['account_id']?>"><?php $company_name = $this->client_model->get_client($task['account_id']); echo $company_name['company_name']; ?></a>
                                        <hr>
                                    </div>
                                    <div class="col-sm-4">
                                        <span class="d-block font-weight-bold mb-1">Created on:</span>
                                        <?php $createdDate = new DateTime($task['created_date']);
                                        $createdDateFormat = date_format($createdDate, 'F d, Y g:i a');
                                        echo $createdDateFormat; ?>
                                        <hr>
                                    </div>
                                    <div class="col-sm-4">
                                        <span class="d-block font-weight-bold mb-1">Assigned on:</span>
                                        <?php 
                                            if($task['assigned_date'] != '0000-00-00'){
                                            $createdDate = new DateTime($task['assigned_datetime']);
                                            $createdDateFormat = date_format($createdDate, 'F d, Y h:i:s a');
                                            echo $createdDateFormat; }else{
                                                echo "-";
                                            }
                                            ?>
                                        <hr>
                                    </div>
                                </div>
                            </div>

                            <div class="mx-auto">
                                <div class="row">
                                    <div class="col-sm-4"> 
                                        <?php 
                                        
                                        // $date_now = new DateTime();
                                        // $date2    = new DateTime($task['assigned_datetime']);



                                        // $date_now1 = date_format($date_now, 'm-d-Y');
                                        // $date3 = date_format($date2, 'm-d-Y');

                                        


                                        // // print_r($date3);


                                        // if ($date3 <= $date_now1) {
                                        //     echo "for QA";
                                        // }
                                        
                                        ?>
                                        <span class="d-block font-weight-bold mb-1">Status:</span>
                                        <?php echo form_open('task/'.$task['id']); ?>
                                        <div class="row px-1">
                                            <div class="col-sm-10">
                                            <?php if(!empty($assigned_name['first_name']) or $task['assigned_id'] == $user_info['id'] or $user_info['role'] == 1): ?>
                                            <!-- 'task_status' => array("Pending","Break","Inprogress","For QA", "Completed"), -->
                                            <select <?php  if($user_info['id'] != $task['assigned_id'] and $user_info['role'] != 1): echo 'disabled'; endif;?> class="form-select form-control-sm form-control" required name="status">
                                            <?php  if($task['status'] == 0): ?>
                                                <option <?php if(!($task['status'] == 0)): echo "selected disabled"; endif; ?> value="0">Pending</option>
                                            <?php endif; ?>
                                        <?php  if($task['status'] != 0): ?>
                                            <?php  if($task['status'] != 5): ?>
                                                <?php  if($task['status'] != 4): ?>
                                                <?php  if($task['status'] != 3): ?>
                                                <option <?php if($task['status'] == 1): echo "selected disabled"; endif; ?> value="1">Break</option>
                                                <?php endif; ?>
                                                <?php endif; ?>
                                            <?php endif; ?>
                                        <?php endif; ?>
                                                <option <?php if($task['status'] == 2): echo "selected disabled"; endif; ?> value="2">In Progress</option>
                                        <?php  if($task['status'] != 0 or $task['status'] == 2): ?>
                                            <?php  if($task['status'] != 1): ?>
                                                <?php  if($task['status'] != 5): ?>
                                                <?php  if($task['status'] != 4): ?>
                                                <option <?php if($task['status'] == 3): echo "selected disabled"; endif; ?> value="3">For QA</option>
                                                <?php endif; ?>
                                                <?php endif; ?>
                                            <?php endif; ?>
                                        <?php endif; ?>
                                            <?php  if($task['status'] == 4): ?>
                                                <option <?php if($task['status'] == 4): echo "selected disabled"; endif; ?> value="4">Completed</option>
                                            <?php endif; ?>
                                            <?php  if($task['status'] == 5): ?>
                                                <option <?php if(($task['status'] == 5)): echo "selected disabled"; endif; ?> value="5">Checking</option>
                                            <?php endif; ?>
                                            </select>
                                            </div>
                                            <div class="float-right">
                                                <?php if($task['assigned_id'] == $user_info['id'] or $user_info['role'] == 1): ?>
                                                <button type="submit" class="btn btn-sm btn-primary">OK</button>
                                                <?php endif; ?>
                                            <?php endif; ?>
                                            </div>
                                        </div>
                                    </form>
                                    </div>
                                    <div class="col-sm-4">
                                        <span class="d-block font-weight-bold mb-1">Assigned to:</span>
                                        <?php if(empty($assigned_name['first_name'])){ echo "Unassigned"; }else { echo $assigned_name['first_name']; } ?>
                                        <?php if($user_info['role'] == 1): ?>
                                        <a class="h5 text-primary ml-2"  href="javascript:;" data-toggle="modal" data-target="#AssignedTo"><i class="fa fa-pencil-square"></i></a>
                                        <?php endif; ?>
                                    </div>
                                    <div class="col-sm-4">
                                        <span class="d-block font-weight-bold mb-1">Created by:</span>
                                        <?php echo $created_task_name['first_name']; ?>
                                       
                                    </div>
                                   
                                </div>
                                <hr>
                            </div>
                            <div class="mx-auto">
                                <div class="row">
                                    <div class="col-sm-4">
                                        <span class="d-block font-weight-bold mb-1">Attachment: 
                                            <!-- <span class="badge badge-danger"><i>Not available</i></span> -->
                                        </span>
                                        <?php if($user_info['role'] == 1): ?>
                                        <?php echo form_open_multipart('task/'.$task['id']); ?>
                                            <div class="row">
                                            <div class="col-sm-6">
                                            <input type="file" id="attachment_file" name="attachment_file" class="form-control-file">
                                        </div>
                                                <div class="col-sm-6">
                                                <input type="submit" name="submit_attachment" value="OK" class="btn btn-sm btn-primary float-right">
                                                </div>
                                            </div>
                                        <?php echo form_close(); ?>
                                        <?php endif; ?>
                                            <div class="row">
                                                <div class="col-sm-12">
                                            <?php 
                                            $attachment= $this->tasks_model->get_task_attachment($task['id']);
                                            $file_name = $attachment['attachment_file'];
                                            ?>
                                            <?php if(!empty($attachment['attachment_file']) || $attachment['attachment_file'] = NULL):?>


                                            <a target="_blank"  class="text-dark hvr-underline" href="<?php echo base_url().'upload/attachment/'.$file_name; ?>"><?php echo $file_name; ?></a>
                                        <?php endif; ?>
                                        </div>
                                            </div>
                                      
                                    </div>
                                    <div class="col-sm-4">
                                        <span class="d-block font-weight-bold mb-1">QA Buddy:
                                            <?php if($user_info['role'] == 1){ ?>
                                                <a class="h5 text-primary ml-2" href="javascript:;" data-toggle="modal" data-target="#QAbuddy"><i class="fa fa-pencil-square"></i></a>
                                            <?php }else{ } ?>
                                                <a class="h5 text-danger ml-2" href="javascript:;" data-toggle="modal" data-target="#QAerrors"><i class="fas fa-exclamation-circle"></i></a>
                                         </span>
                                        <span>
                                            <?php 
                                            
                                            $qa_buddy = $this->users_model->get_user($task['qa_id']); 
                                            if($qa_buddy == NULL){
                                                echo "-";
                                            }else{
                                                echo $qa_buddy['first_name']; 
                                            }
                                            
                                            ?>
                                        </span>
                                    </div>
                                    <div class="col-sm-4">
                                        <span class="d-block font-weight-bold mb-1">Actual Time:</span>
                                        <span>-</span>
                                    </div>
                                </div>
                            </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-12 mx-auto">
            <div class="card">
                <div class="card-header">
                    <strong class="card-title">Instruction(s)
                        <small>
                            <?php if($user_info['role'] == 1): ?>
                            <a href="javascript:;" id="btnCreateInstruction" class="badge badge-primary float-right mt-1">
                                <i class="fas fa-plus fa-fw"></i></a>
                            <?php endif; ?>
                        </small>
                    </strong>
                </div>
                <div class="card-body">
                <?php if(empty(!$list_instructions)){ ?>
                       <div id="accordion" class="counternumber">

                        <?php foreach($list_instructions as $list_inst): ?>
                        <div class="card mb-0 pe-auto">
                            <div class="card-header bg-primary" id="headingOne<?php echo $list_inst['id']; ?>">
                            <h5 class="mb-0"  data-toggle="collapse" data-target="#collapseOne<?php echo $list_inst['id']; ?>" aria-expanded="true" aria-controls="collapseOne<?php echo $list_inst['id']; ?>">
                                <button class="btn">
                                <span class="text-white font-weight-bold">Instruction </span>
                                </button>
                                <?php if($user_info['role'] == 1): ?><a class="text-right text-uppercase text-white font-weight-bold float-right" href="<?php echo base_url().'task/instruction/delete/'.$list_inst['id']; ?>"><i class="fa fa-times-circle text-danger mt-2"></i></a><?php endif; ?>
                            </h5>
                            </div>
                            <div id="collapseOne<?php echo $list_inst['id']; ?>" class="collapse" aria-labelledby="headingOne<?php echo $list_inst['id']; ?>" data-parent="#accordion">
                            <div class="card-body">
                            <?php echo $list_inst['instruction']; ?>
                            </div>
                            </div>
                        </div>
                        <?php endforeach; ?>
                        </div>

                        <?php } else { echo "No instructions..."; } ?>

  
                </div>
            </div>
            </div>
            <div class="col-md-12 mx-auto">
            <div class="card">
                <div class="card-header">
                    <strong class="card-title">Task and URL
                    <small>
                    <?php  if( $user_info['id'] == $task['assigned_id'] or $user_info['role'] == 1):?>
                        <a href="javascript:;" id="TaskURLbtn" class="h6 text-primary float-right">
                        <i class="fa fa-pencil-square-o"></i></a>
                        <?php endif; ?>
                    </small>
                    </strong>
                </div>
                <div class="card-body">

                    <?php echo $task['task_url']; ?>
                </div>
            </div>
            </div>

        </div>
        <div class="row">
        <div class="col-md-6 mx-auto">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">Backup
                                <!-- <small>
                                    <span class="badge badge-danger float-right mt-1">49</span>
                                </small> -->
                            </strong>
                        </div>
                        <div class="card-body">
                            <div class="mb-0 content-custom"><?php echo $task['task_backup']; ?></div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 mx-auto">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">Next Steps
                                <!-- <small>
                                    <span class="badge badge-danger float-right mt-1">49</span>
                                </small> -->
                            </strong>
                        </div>
                        <div class="card-body">
                            <div class="mb-0 content-custom"><?php echo $task['next_steps']; ?></div>
                        </div>
                    </div>
                </div>
        </div>
        <div class="row">
                <div class="col-md-12 mx-auto">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">Additional Info
                                <!-- <small>
                                    <span class="badge badge-danger float-right mt-1">49</span>
                                </small> -->
                            </strong>
                        </div>
                        <div class="card-body">
                            <div class="mb-0 content-custom"><?php echo $task['additional_notes']; ?></div>
                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">Time Tracker
                                <!-- <small>
                                    <span class="badge badge-danger float-right mt-1">49</span>
                                </small> -->
                            </strong>
                        </div>
                        <div class="card-body">
                            <div class="row px-2">

                                <?php foreach($time_tracker as $time): ?>
                                    <?php if($time['task_status'] == 1 or $time['task_status'] == 3){ 
                                        $css_status ='text-danger';
                                    }else{
                                        $css_status ='text-success';
                                    }
                                    ?>

                                    

                                    <div class="col-sm-6">
                                    <?php echo '<span class="text-xs" style="width: auto"><i class="fa fa-clock-o mr-1 '.$css_status.'"></i></span>'.date("g:i a", strtotime($time['task_time'])); ?>
                                    </div>
                                <?php endforeach; ?>


                          
 
                        
                             <!-- <div class="col-sm-3">
                                
                                    <?php foreach($time_end_task as $time_end): ?>
                                        <div class="row">
                                        <?php echo '<span class="text-xs" style="width: auto"><i class="fa fa-clock-o mr-1 text-danger"></i></span>'.date("g:i a", strtotime($time_end['time_end'])); ?>
                                        </div> 
                                    <?php endforeach; ?>
                                
                            </div> -->
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">QA Comments
                            </strong>
                        </div>
                        <div class="card-body">
                            <?php  if( $user_info['id'] == $task['assigned_id'] or $user_info['role'] == 1):?>
                
                            <a class="btn btn-sm btn-danger" href="<?php echo base_url(); ?>task/<?php echo $task['id'];?>/comment">Comment</a>
                            <?php endif; ?>
                        </div>
                    </div>
                </div>
        </div>


        </div>

    </div>
</div>
<!-- /.container-fluid -->


   <!-- Assigned to Modal-->
   <div class="modal" id="AssignedTo" tabindex="-1" role="dialog" aria-labelledby="AssignedTo"
    aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-body">
            <?php echo form_open('task/'.$task['id']); ?>
            <div class="text-xs font-weight-bold text-success text-uppercase mb-1">Assigned to</div>
           
            <select class="form-select form-control-sm form-control" id="AssTo" required name="assigned_id">
                <option value="0"><?php echo "Unassigned"; ?></option>
                <?php foreach($users_to_assigned as $uta):?>
                    <option value="<?php echo $uta['id']; ?>"><?php echo $uta['first_name']; ?></option>
                <?php endforeach; ?>
            </select>         
            </div>
            <input type="hidden" name="assigned_date" value="<?php echo $current_datetime; ?>">
            <input type="hidden" name="assigned_datetime" value="<?php echo $current_datetime; ?>">
            <!-- BED -->
            <div class="modal-footer">
                <button class="btn btn-secondary closebtn" type="button">Cancel</button>
                <button type="submit" class="btn btn-primary">OK</button>
            </div>
            </form>
        </div>
    </div>
    </div>

    <!-- Create Instruction to Modal-->
   <div id="CreateInstructions">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
        <?php echo form_open('task/'.$task['id']); ?>
            <div class="modal-body">
            <div class="text-xs font-weight-bold text-success text-uppercase mb-1">Create Instruction</div>
            <textarea type="text" required name="instruction"  class="form-control" id="FormInstructions">-</textarea>
            <input type="hidden" name="task_id"  class="form-control" value="<?php echo $task['id']; ?>" placeholder="task_id">
            </div>
            <div class="modal-footer">
                <button id="closeBtn" class="btn btn-secondary closebtn" type="button">Cancel</button>
                <button type="submit" class="btn btn-primary">Create</button>
            </div>
        </form>
        </div>
    </div>
    </div>

    <!-- Create TASK AND URL to Modal-->
   <div id="TaskURL">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
        <?php echo form_open('task/'.$task['id']); ?>
            <div class="modal-body">
            <div class="text-xs font-weight-bold text-success text-uppercase mb-3">Task and URL</div>
            <textarea type="text" name="task_url" required  class="form-control" id="FORMEDITOR01"><?php echo $task['task_url']; ?></textarea>
            <!-- Divider -->
            <hr class="sidebar-divider my-4">
            <div class="text-xs font-weight-bold text-success text-uppercase mb-3">BACKUP</div>
            <textarea type="text" name="task_backup" required  class="form-control" id="FORMEDITOR04"><?php echo $task['task_backup']; ?></textarea>
            <!-- Divider -->
            <hr class="sidebar-divider my-4">
            <div class="text-xs font-weight-bold text-success text-uppercase mb-3">Next Steps</div>
            <textarea type="text" name="next_steps" required  class="form-control" id="FORMEDITOR02"><?php echo $task['next_steps']; ?></textarea>
            <!-- Divider -->
            <hr class="sidebar-divider my-4">
            <div class="text-xs font-weight-bold text-success text-uppercase mb-3">Additional Information</div>
            <textarea type="text" name="additional_notes" required  class="form-control" id="FORMEDITOR03"><?php echo $task['additional_notes']; ?></textarea>
            </div>
            <div class="modal-footer">
                <button id="closeBtn01"  class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                <button type="submit" class="btn btn-primary">Update</button>
            </div>
            </form>
        </div>
    </div>
    </div>


   <!-- Assigned to BUDDY-->
   <div class="modal fade" id="QAbuddy" tabindex="-1" role="dialog" aria-labelledby="QAbuddy" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-body">
   
            <div class="text-xs font-weight-bold text-success text-uppercase mb-1">QA Buddy</div>
            <?php echo form_open('task/'.$task['id']); ?>
                <div class="row px-1">
                <div class="col-sm-10">
                <!-- 'task_status' => array("Pending","Break","Inprogress","For QA", "Completed"), -->
                <select class="form-select form-control-sm form-control" required name="status">
                    <option disabled>Check</option>
                    <option <?php if($task['status'] == 5): echo "selected disabled"; endif; ?> value="5">Checking</option>
                    <option <?php if($task['status'] == 4): echo "selected disabled"; endif; ?> value="4">Completed</option>
                </select>
               <input type="hidden" name="buddy_id"  class="form-control" value="<?php echo $user_info['id']; ?>" placeholder="buddy_id">
                </div>
                    <div class="col-sm-1">
                    <?php if(!empty($assigned_name['first_name'])): ?>
                        <?php if($task['assigned_id'] == $user_info['id'] or $user_info['role'] == 1): ?>
                         <button type="submit" class="btn btn-primary">OK</button>
                        <?php endif; ?>
                    <?php endif; ?>
                </div>
            </div>
            </form>
            <div class="modal-footer">
                <button class="btn btn-secondary closebtn" type="button">Cancel</button>
            </div>
            </form>
        </div>
    </div>
    </div>
    </div>



    
   <!-- Assigned to BUDDY-->
   <div class="modal fade" id="QAerrors" tabindex="-1" role="dialog" aria-labelledby="QAerrors" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
        <div class="modal-body">
        <?php echo form_open('task/'.$task['id']); ?>
        <div class="row">
            <div class="col-sm-6">
                <div class="card">
                    <div class="card-header bg-primary text-white">
                        <strong class="card-title">Minor
                        </strong>
                    </div>
                    <div class="card-body">
                    <?php if($user_info['role'] == 1): ?>
                    <div class="form-check">
                    <?php foreach($minor_errors as $minor_error): $idmnr = $minor_error['id']?>
                        <div class="checkbox">
                            <label for="checkbox<?php echo $idmnr; ?>" class="form-check-label ">
                                <input type="checkbox" <?php if($user_info['role'] != 1): echo 'disabled'; endif;?>  
                                <?php foreach($errorlist as $error): ?>
                                    <?php if($error['qas_id'] == $idmnr ): echo 'checked'; endif; ?>
                                <?php endforeach; ?>
                                id="checkbox<?php echo $idmnr; ?>" name="checkbox[]" value="<?php echo $idmnr ; ?>" class="form-check-input"><?php echo $minor_error['error_name']; ?>
                            </label>
                        </div>
                        <?php endforeach; ?>
                    </div>
                    <?php endif;?>
                    <?php if($user_info['role'] != 1): ?>
                        <?php if(!empty($errorlist)){ ?>
                        <ul>
                        <?php foreach($minor_errors as $minor_error): $idmnr = $minor_error['id']?>
                            <?php foreach($errorlist as $error): ?>
                                <?php if($error['qas_id'] == $idmnr ): ?>
                                    <li><?php echo $error['error_name']; ?></li>
                                    <?php endif; ?>
                                    <?php endforeach; ?>
                        <?php endforeach; ?>
                        </ul>
                        <?php }else { echo "<i class='font-weight: italic'>No minor errors...</i>"; } ?>
                        <?php endif;?>
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
                    <?php if($user_info['role'] == 1): ?>
                   <div class="form-check">
                        <?php foreach($major_errors as $major_error):  $idmjr = $major_error['id']; ?>
                        <div class="checkbox">
                            <label for="checkbox<?php echo $idmjr;?>" class="form-check-label">
                            
                                <input type="checkbox"
                                <?php if($user_info['role'] != 1): echo 'disabled'; endif;?>
                                <?php foreach($errorlist as $error): ?>
                                    <?php if($error['qas_id'] == $idmjr ): echo 'checked'; endif; ?>
                                <?php endforeach; ?>
                                id="checkbox<?php echo $idmjr;?>" name="checkbox[]" value="<?php echo $major_error['id']; ?>" class="form-check-input"><?php echo $major_error['error_name']; ?>
                            </label>
                        </div>
                        
                        <?php endforeach; ?>

                    </div>
                    <?php endif;?>
                    <?php if($user_info['role'] != 1): ?>
                        <?php if(!empty($errorlist)){ ?>
                        <ul>
                        <?php foreach($major_errors as $major_error):  $idmjr = $major_error['id']; ?>
                        
                            <?php foreach($errorlist as $error): ?>
                                <?php if($error['qas_id'] == $idmjr): ?>
                                    <li><?php echo $error['error_name']; ?></li>
                                <?php endif; ?>
              
                                    <?php endforeach; ?>
                                   
                        <?php endforeach; ?>
                        </ul>
                        <?php }else { echo "<i class='font-weight: italic'>No major errors...</i>"; } ?>
                    <?php endif;?>
                    </div> 
                </div>
            </div>
        </div>
        <?php if($user_info['role'] == 1): ?>
        <div class="modal-footer">
            <button class="btn btn-secondary closebtn" type="button">Cancel</button>
            <input class="btn btn-primary" type="submit" <?php if(empty($errorlist)){ echo "name='submtbtn'"; } else { echo "name='submtbtnupdate'"; } ?> value="Save">
        </div>
        <?php endif;?>
        <?php echo form_close(); ?>
        </div>
    </div>
    </div>
    </div>