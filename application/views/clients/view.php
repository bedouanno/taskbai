<!-- MAIN CONTENT-->
<div class="main-content">
    <div class="section__content section__content--p30">
        <div class="container-fluid">




        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-header bg-warning text-white">
                        Acount Name: <strong class="card-title"><?php echo $client['company_name']; ?>
                            <small class="float-right">
                                
                            <span class="badge badge-danger mt-1"><?php echo $stat[$client['status'] - 1]; ?></span>
                                <?php if($user_info['role'] == 1): ?>
                                <span class="badge badge-primary mt-1">
                                <div class="dropdown no-arrow">
                                    <a class="dropdown-toggle text-light" href="#" role="button" id="dropdownMenuLink"
                                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <!-- <i class="fas fa-ellipsis-v fa-sm fa-fw"></i> -->
                                    </a>
                                    <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in"
                                        aria-labelledby="dropdownMenuLink">
                                        <a href="<?php echo base_url().'client/update/'.$client['id']; ?>" class="badge dropdown-item" href="#">Edit</a>
                                        <hr class="my-1">
                                        <a class="dropdown-item badge" href="javascript:;" data-toggle="modal" data-target="#deleteClientModal">Delete</a>
                                    </div>
                                </div>
                                </span>
                                <?php endif; ?>
                                
                            </small>
                        </strong>
                    </div>
                    <div class="card-body">
                            <div class="mx-auto">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <span class="d-block text-xs font-weight-bold mb-1">Company Name:</span>
                                        <?php echo $client['company_name']; ?>
                                        <hr>
                                    </div>
      
                                </div>
                            </div>
                            <div class="mx-auto">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <span class="d-block text-xs font-weight-bold mb-1">Contact Person:</span>
                                        <?php echo $client['contact_person']; ?>
                                        <hr>
                                    </div>
                                    <div class="col-sm-6">
                                    <span class="d-block text-xs font-weight-bold mb-1">Email Address:</span>
                                        <?php echo $client['email_address']; ?>
                                        <hr>
                                    </div>
                                </div>
                            </div>
                            <div class="mx-auto">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <span class="d-block text-xs font-weight-bold mb-1">Nature of Business:</span>
                                        <?php echo $client['nature_of_business']; ?>
                                        <hr>
                                    </div>
                                    <div class="col-sm-6">
                                    <span class="d-block text-xs font-weight-bold mb-1">Created Date:</span>
                                    <?php $createdDate = new DateTime($client['date_created']);
                                    $createdDateFormat = date_format($createdDate, 'F d, Y');
                                    echo $createdDateFormat; ?>
                                    <hr>
                                    </div>
                                </div>
                            </div>
                            <div class="mx-auto">
                                <div class="row">
                                    <div class="col-sm-6">
                                    </div>
                                    <div class="col-sm-6">
                                    <span class="d-block text-xs font-weight-bold mb-1">Handling Agent:</span>
                                        <?php echo $client['handling_agent']; ?>
                                    </div>
                                    
                                </div>
                                <hr>
                            </div>
                            <small class="badge badge-primary float-right mt-1 text-white">Added by: 
                                <?php echo $added_name['first_name']; ?>
                            </small>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
        <div class="col-md-6 mx-auto">
            <div class="card">
                <div class="card-header">
                    <strong class="card-title">Website Access
                        <small>
                            <span class="badge badge-danger float-right mt-1">49</span>
                        </small>
                    </strong>
                </div>
                <div class="card-body">
                    <?php echo $client['website_access']; ?>
                </div>
            </div>
        </div>
        </div>

        <div class="row">
        <div class="col-md-6 mx-auto">
            <div class="card">
                <div class="card-header">
                    <strong class="card-title">Other Access (WP Admin and etc.)
                        <small>
                            <a href="javascript:;" id="btnEdit" class="badge badge-primary float-right mt-1">
                            <i class="fas fa-edit fa-fw"></i>
                                edit</a>
                        </small>
                    </strong>
                </div>
                <div class="card-body">
                    <?php echo $client['other_access']; ?>
                </div>
            </div>
        </div>
        </div>



    <div class="d-flex flex-row justify-content-end mb-2">     
    <?php if($user_info['role'] == 1): ?>                               
        <a class="au-btn au-btn-icon au-btn--green au-btn--small" href="<?php echo base_url(); ?>task/create/<?php echo $client['id']; ?>"><i class="zmdi zmdi-plus"></i>Creat Task</a>
    <?php endif; ?>
    </div>



    <div class="card">
            <div class="card-header bg-primary">
                <strong class="card-title text-white">Task List</strong>
            </div>
            <div class="card-body">
            <div class="table-responsive">
                <table class="table table-borderless table-data3" id="taskListClient">
                    <thead class="bg-primary">
                        <tr>
                            <th>Assigned to</th>
                            <th>Tasks ID</th>
                            <th>Assigned Date</th>
                            <th>Status</th>
                        </tr>
                    </thead>
                    <tfoot>
                        <tr>
                            <th>Assigned to</th>
                            <th>Tasks ID</th>
                            <th>Assigned Date</th>
                            <th>Status</th>
                        </tr>
                    </tfoot>
                    <tbody>
                    <?php foreach ($tasks as $task):?>
                        <tr>
                            <td>
                            <?php if(empty($task['assigned_id'])){ ?>
                                <a class="text-black-50 hvr-underline" href="javascript:;">
                                    unassiged
                                </a>
                            <?php }else{ ?>
                                <a class="text-black-50 hvr-underline" href="<?php echo base_url(); ?>user/<?php echo $task['assigned_id']; ?>">
                                    <?php $user = $this->users_model->get_user($task['assigned_id']); echo $user['first_name']; ?>
                                </a>
                            <?php } ?>
                            </td>

                            <td><a class="text-black-50 hvr-underline" href="<?php echo base_url(); ?>task/<?php echo $task['id']?>"><?php echo $task['task_name']?></a></td>
                            <td>
                            <?php 
                                if($task['assigned_date'] != '0000-00-00'){
                                $createdDate = new DateTime($task['assigned_datetime']);
                                $createdDateFormat = date_format($createdDate, 'F d, Y');
                                echo $createdDateFormat; }else{
                                echo "-";
                                }
                            ?>
                            </td>
                            <td>
                                <span class="badge badge-<?php echo 'status'.$task['status']; ?>">
                                <?php echo $task_status[$task['status']];?>
                                </span>
                            </td>
                        </tr>
                        <?php endforeach;?>
                    </tbody>
                </table>
            </div>
            </div>
        </div>

        

</div>
</div>
</div>
<!-- /.container-fluid -->


    <!-- Create Instruction to Modal-->
    <div id="btnEditModal">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
        <?php echo form_open('clients/'.$client['id']); ?>
            <div class="modal-body">
            <div class="text-xs font-weight-bold text-success text-uppercase mb-1">WordPress Information</div>
            <textarea type="text" required name="other_access"  class="form-control" id="formOaccess"><?php echo $client['other_access']; ?></textarea>
            <input type="hidden" name="task_id"  class="form-control" value="<?php echo $client['id']; ?>" placeholder="Other Access">
            </div>
            <div class="modal-footer">
                <button id="closeBtn01" class="btn btn-secondary" type="button">Cancel</button>
                <button type="submit" class="btn btn-primary">Update</button>
            </div>
        </form>
        </div>
    </div>
    </div>