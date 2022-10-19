<!-- Begin Page Content -->
<div class="container-fluid">

<!-- Dropdown Card Example -->
<div class="card shadow mb-4">
<!-- Card Header - Dropdown -->
<div
    class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
    <h6 class="m-0 py-2 h3 font-weight-bold"><?php echo $task['task_name']; ?></h6>
    <?php if($user_info['role'] == 1): ?>
    <div class="dropdown no-arrow">
        <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink"
            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
        </a>
        
        <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in"
            aria-labelledby="dropdownMenuLink">
           
            <div class="dropdown-header">Options:</div>
<!--            <a href="<?php //echo base_url().'user/update/'.$user['id']; ?>" class="dropdown-item" href="#">Edit</a>-->
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="<?php echo base_url().'task/delete/'.$task['id']; ?>">Delete</a>
            
           
        </div>
       
    </div>
    <?php endif; ?>
    </div>
<!-- Card Body -->
    <div class="card-body">
    <!-- Page Heading -->
            <div class="row no-gutters align-items-center">
                <div class="col-sm-4 mr-0">
                    <div class="text-xs font-weight-bold text-success text-uppercase mb-1">Company Name</div>
                    <div class="h6 mb-0">
                        <a href="<?php echo base_url(); ?>clients/<?php echo $task['account_id']?>"><?php $company_name = $this->client_model->get_client($task['account_id']); echo $company_name['company_name']; ?></a>
                    </div>
                </div>
                <div class="col-sm-4 mr-0">
                    <div class="text-xs font-weight-bold text-success text-uppercase mb-1">created on</div>
                    <div class="mb-0">
                    <?php $createdDate = new DateTime($task['created_date']);
                    $createdDateFormat = date_format($createdDate, 'F d, Y g:i a');
                    echo $createdDateFormat; ?>
                </div>
                </div>
                <div class="col-sm-4 mr-0">
                    <div class="text-xs font-weight-bold text-success text-uppercase mb-1">Assigned on</div>
                    <div class="mb-0">
                    <?php 
                    if($task['assigned_date'] != '0000-00-00'){
                    $createdDate = new DateTime($task['assigned_datetime']);
                    $createdDateFormat = date_format($createdDate, 'F d, Y h:i:s a');
                    echo $createdDateFormat; }else{
                        echo "-";
                    }
                    ?>

                    </div>
                </div>
            </div>
            <!-- Divider -->
            <hr class="sidebar-divider my-4">
            <div class="row no-gutters align-items-center">
                <div class="col-sm-4 mr-0">
                    <div class="text-xs font-weight-bold text-success text-uppercase mb-1">Status</div>
                    <?php echo form_open('task/'.$task['id']); ?>
                        <div class="row px-1">
                            <div class="col-sm-10">
                            <?php if(!empty($assigned_name['first_name']) or $task['assigned_id'] == $user_info['id'] or $user_info['role'] == 1): ?>
                            <!-- 'task_status' => array("Pending","Break","Inprogress","For QA", "Completed"), -->
                            <select class="form-select" required name="status">
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
                            <div class="col-sm-1">
                            
                                <?php if($task['assigned_id'] == $user_info['id'] or $user_info['role'] == 1): ?>
                                 <button type="submit" class="btn btn-primary">OK</button>
                                <?php endif; ?>
                            <?php endif; ?>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="col-sm-4 mr-0">
                    <div class="text-xs font-weight-bold text-success text-uppercase mb-1">Assigned to</div>
                    <div class="mb-0 font-weight-bold text-gray-800">
                        <?php if(empty($assigned_name['first_name'])){ echo "Unassigned"; }else { echo $assigned_name['first_name']; } ?>
                        <?php if($user_info['role'] == 1): ?>
                        <a href="javascript:;" data-toggle="modal" data-target="#AssignedTo"  class="text-dark align-self-end h6 float-righ" style="height: 30px;width: 3%"><i class="fas fa-pen fa-fw mr-2"></i></a>
                        <?php endif; ?>
                    </div>
                </div>
                <div class="col-sm-4 mr-0">
                    <div class="text-xs font-weight-bold text-success text-uppercase mb-1">Created By</div>
                    <div class="mb-0">
                        <?php echo $created_task_name['first_name']; ?>
                    </div>
                </div>
            </div>
            <!-- Divider -->
            <hr class="sidebar-divider my-4">
            <div class="row no-gutters align-items-center">
                <div class="col-sm-4 mr-0">
                    <div class="text-xs font-weight-bold text-success text-uppercase mb-1">Attachment</div>
                    <div class="mb-0">
                    <?php if($user_info['role'] == 1): ?>
                      <input type="file">
                        <div class="row">
                          <span class="text-danger"><i>Not available</i></span>
                        </div>
                      <?php endif; ?>
                    </div>
                </div>
                <div class="col-sm-4 mr-0">
                    <div class="text-xs font-weight-bold text-success text-uppercase mb-1">QA Buddy</div>
                    <div class="mb-0">
                    <?php if($user_info['role'] == 1){ ?>
                        <a href="javascript:;" data-toggle="modal" data-target="#QAbuddy"  class="text-dark align-self-end h6 float-righ" style="height: 30px;width: 3%"><i class="fas fa-pen fa-fw mr-2"></i></a>
                        <?php }else{ echo "-"; } ?>
                    </div>                   
                </div>
                <div class="col-sm-4 mr-0">
                    <div class="text-xs font-weight-bold text-success text-uppercase mb-1">Actual Time</div>
                    <div class="h5 mb-0"><?php //echo $user['email_address']; ?>-</div>
                </div>
            </div>
            <!-- Divider -->
            <hr class="sidebar-divider my-4">
            <div class="row no-gutters align-items-center">
                <div class="col mr-0">
                    <div class="row justify-content-between">
                        <div class="text-xs font-weight-bold text-success text-uppercase col-lg-11">Instructions</div>
                        <?php if($user_info['role'] == 1): ?>
                        <a href="javascript:;" id="btnCreateInstruction" class="text-dark align-self-end h6" style="height: 30px;width: 3%"><i class="fas fa-plus fa-fw mr-2 text-primary"></i></a>
                        <?php endif; ?>
                        <!-- CONTENT -->
                        <div class="list_instructions content-custom">
                            <?php if(empty(!$list_instructions)){ ?>
                            <?php foreach($list_instructions as $list_inst): ?>
                            <button class="accordion-custom bg-primary text-white"><?php if($user_info['role'] == 1): ?><a class="text-right text-uppercase text-white font-weight-bold float-right" href="<?php echo base_url().'task/instruction/delete/'.$list_inst['id']; ?>">x</a><?php endif; ?></button>
                            <div class="panel">
                            <div class="cont-padding"><?php echo $list_inst['instruction']; ?></div>
                            </div>
                            <?php endforeach; ?>
                            <?php } else { echo "No instructions..."; } ?>
                        </div>                
                       <!-- CONTENT END -->
                    </div>

                </div>
            </div>
            <!-- Divider -->
            <hr class="sidebar-divider my-4">
            <div class="row no-gutters align-items-center">
                <div class="col mr-0">
                    <div class="row justify-content-between">
                        <div class="text-xs font-weight-bold text-success text-uppercase col-lg-11">Task and URL</div>
                        <?php if($task['assigned_id'] == $user_info['id'] or $user_info['role'] == 1): ?>
                        <a href="javascript:;" id="TaskURLbtn" class="text-dark align-self-end h6 float-righ" style="height: 30px;width: 3%"><i class="fas fa-edit fa-fw mr-2"></i></a>
                        <?php endif; ?>
                    </div>
                    <div class="mb-0 content-custom"><?php echo $task['task_url']; ?></div>
                </div>
            </div>
            <!-- Divider -->
            <hr class="sidebar-divider my-4">
            <div class="row no-gutters align-items-center">
                <div class="col mr-0">
                    <div class="row justify-content-between">
                        <div class="text-xs font-weight-bold text-success text-uppercase col-lg-11">Next Step</div>
                    </div>
                    <div class="mb-0 content-custom"><?php echo $task['next_steps']; ?></div>
                </div>
            </div>

            <hr class="sidebar-divider my-4">
            <div class="row no-gutters align-items-center">
                <div class="col mr-0">
                    <div class="row justify-content-between">
                        <div class="text-xs font-weight-bold text-success text-uppercase col-lg-11">Additional Notes</div>
                    </div>
                    <div class="mb-0 content-custom"><?php echo $task['additional_notes']; ?></div>
                </div>
            </div>

            <hr class="sidebar-divider my-4">
            <div class="row no-gutters align-items-center">
                <div class="col mr-0">
                    <div class="row justify-content-between">
                        <div class="text-xs font-weight-bold text-success text-uppercase col-lg-11">Time Tracker</div>
                    </div>
                    <div class="mb-0">
                        <div class="row">
                            <div class="col-sm-3">
                                
                                    <?php foreach($time_start_task as $time_start): ?>
                                        <div class="row">
                                        <?php echo '<span class="text-xs" style="width: auto">Time Start: </span>'.date("g:i a", strtotime($time_start['time_start'])); ?>
                                        </div> 
                                    <?php endforeach; ?>
                                
                            </div>
                            <div class="col-sm-3">
                                
                                    <?php foreach($time_end_task as $time_end): ?>
                                        <div class="row">
                                        <?php echo '<span class="text-xs" style="width: auto">Time End: </span>'.date("g:i a", strtotime($time_end['time_end'])); ?>
                                        </div> 
                                    <?php endforeach; ?>
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>
<!-- /.container-fluid -->


   <!-- Assigned to Modal-->
   <div class="modal fade" id="AssignedTo" tabindex="-1" role="dialog" aria-labelledby="AssignedTo"
    aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-body">
            <?php echo form_open('task/'.$task['id']); ?>
            <div class="text-xs font-weight-bold text-success text-uppercase mb-1">Assigned to</div>
           
            <select class="form-select" id="AssTo" required name="assigned_id">
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
                <button class="btn btn-secondary" type="button">Cancel</button>
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
                <button id="closeBtn" class="btn btn-secondary" type="button">Cancel</button>
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
                <select class="form-select" required name="status">
                    <option disabled>Check</option>
                    <option <?php if($task['status'] == 5): echo "selected disabled"; endif; ?> value="5">Checking</option>
                    <option <?php if($task['status'] == 4): echo "selected disabled"; endif; ?> value="4">Completed</option>
                </select>
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
                <button class="btn btn-secondary" type="button">Cancel</button>
            </div>
            </form>
        </div>
    </div>
    </div>