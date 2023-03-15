<!-- Begin Page Content -->
<div class="container-fluid">

<div class="card col-lg-8 mx-auto px-0 shadow">
<!-- Card Header - Dropdown -->
<div class="card-header d-flex flex-row align-items-center justify-content-between">
    <h6 class="m-0 h1 font-weight-bold"><?php echo $client['company_name']; ?></h6>
    <?php if($user_info['role'] == 1): ?>
    <div class="dropdown no-arrow">
        <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink"
            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
        </a>
        <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in"
            aria-labelledby="dropdownMenuLink">
            <div class="dropdown-header">Options:</div>
            <a href="<?php echo base_url().'client/update/'.$client['id']; ?>" class="dropdown-item" href="#">Edit</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="javascript:;" data-toggle="modal" data-target="#deleteClientModal">Delete</a>
        </div>
    </div>
    <?php endif; ?>
    </div>
<!-- Card Body -->
<div class="card-body">
    <!-- Page Heading -->
            <div class="row no-gutters align-items-center">
                <div class="col mr-2">
                    <div class="text-xs font-weight-bold text-success text-uppercase mb-1">Company Name:</div>
                    <div class="mb-0 text-gray-800"><?php echo $client['company_name']; ?></div>
                </div>
                <div class="col mr-2">
                    <div class="text-xs font-weight-bold text-success text-uppercase mb-1">Status:</div>
                    <div class="mb-0 text-gray-800"><?php echo $stat[$client['status'] - 1]; ?></div>
                </div>
            </div>
            <!-- Divider -->
            <hr class="sidebar-divider my-4">
            <div class="row no-gutters align-items-center">
                <div class="col mr-2">
                    <div class="text-xs font-weight-bold text-success text-uppercase mb-1">Contact Person:</div>
                    <div class="mb-0 text-gray-800"><?php echo $client['contact_person']; ?></div>
                </div>
                <div class="col mr-2">
                    <div class="text-xs font-weight-bold text-success text-uppercase mb-1">Email Address:</div>
                    <div class="mb-0 text-gray-800"><?php echo $client['email_address']; ?></div>
                </div>
            </div>
 
            <!-- Divider -->
            <hr class="sidebar-divider my-4">
            <div class="row no-gutters align-items-center">
                <div class="col mr-2">
                    <div class="text-xs font-weight-bold text-success text-uppercase mb-1">Natrure of Business:</div>
                    <div class="mb-0 text-gray-800"><?php echo $client['nature_of_business']; ?></div>
                </div>
                <div class="col mr-2">
                    <div class="text-xs font-weight-bold text-success text-uppercase mb-1">Created Date:</div>
                    <div class="mb-0 text-gray-800">
                    <?php $createdDate = new DateTime($client['date_created']);
                    $createdDateFormat = date_format($createdDate, 'F d, Y');
                    echo $createdDateFormat; ?>
                    </div>
                </div>
            </div>
            <!-- Divider -->
            <hr class="sidebar-divider my-4">
            <div class="row no-gutters align-items-center">
                <div class="col mr-2">
                </div>
                <div class="col mr-2">
                    <div class="text-xs font-weight-bold text-success text-uppercase mb-1">Handling Agent:</div>
                    <div class="mb-0 text-gray-800">
                        <?php echo $client['handling_agent']; ?>
                    </div>
                </div>
            </div>
            <!-- Divider -->
            <hr class="sidebar-divider my-4">
            <div class="row no-gutters align-items-center">
                <div class="col mr-2">
                    <div class="text-xs font-weight-bold text-success text-uppercase mb-1">Webste Access:</div>
                    <div class="mb-0 text-gray-800"><?php echo $client['website_access']; ?></div>
                </div>
            </div>
            <!-- Divider -->
            <hr class="sidebar-divider my-4">
            <div class="row no-gutters align-items-center">
                <div class="col mr-2">
                    <div class="text-xs font-weight-bold text-success text-uppercase mb-1">Other Access:                        <a href="javascript:;" id="btnEdit" class="text-dark align-self-end h6" style="height: 30px;width: 3%"><i class="fas fa-edit fa-fw mr-2 text-primary"></i></a></div>
                    <div class="mb-0 text-gray-800"><?php echo $client['other_access']; ?></div>
                </div>
            </div>
            <hr class="sidebar-divider my-4">
            <div class="row no-gutters align-items-center">
                <div class="col mr-2 text-left">
                <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                    <!-- Website files status:  -->
                <span class="<?php if($client['websitefiles_status'] == 0){ echo "text-danger"; }else{ echo "text-gray-800"; }?>">
                    <?php //echo $websitefiles_stat[$client['websitefiles_status']]; ?>
                </span></div>
                </div>
                <div class="col mr-2 text-right">
                    <div class="text-xs font-weight-bold text-success text-uppercase mb-1">Added by: <span class="text-gray-800"><?php echo $added_name['first_name']; ?></span></div>

                </div>
            </div>
    </div>

    </div>

    <!-- DataTales Example -->
    <div class="card shadow mt-5 mb-4 p-10">
        <div class="row p-4">
            <h3 class="col text-gray-800">TASK LIST</h3>
            <?php if($user_info['role'] == 1): ?>
            <a href="<?php echo base_url(); ?>task/create/<?php echo $client['id']; ?>" class="col-sm-2 btn btn-info align-self-end"><i class="fas fa-plus fa-fw mr-2"></i>Create Task</a>
            <?php endif; ?>
        </div>
        <div class="card-body">

            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
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
                                <a href="javascript:;">
                                    unassiged
                                </a>
                            <?php }else{ ?>
                                <a href="<?php echo base_url(); ?>user/<?php echo $task['assigned_id']; ?>">
                                    <?php $user = $this->users_model->get_user($task['assigned_id']); echo $user['first_name']; ?>
                                </a>
                            <?php } ?>
                            </td>

                            <td><a href="<?php echo base_url(); ?>task/<?php echo $task['id']?>"><?php echo $task['task_name']?></a></td>
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
                            <td><?php echo $task_status[$task['status']]; ?></td>
                        </tr>
                        <?php endforeach;?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>+
<!-- /.container-fluid -->


    <!-- Create Instruction to Modal-->
    <div id="btnEditModal">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
        <?php echo form_open('clients/'.$client['id']); ?>
            <div class="modal-body">
            <div class="text-xs font-weight-bold text-success text-uppercase mb-1">Create Instruction</div>
            <textarea type="text" required name="other_access"  class="form-control" id="formOaccess"><?php echo $client['other_access']; ?></textarea>
            <input type="hidden" name="task_id"  class="form-control" value="<?php echo $client['id']; ?>" placeholder="Other Access">
            </div>
            <div class="modal-footer">
                <button id="closeBtn01" class="btn btn-secondary" type="button">Cancel</button>
                <button type="submit" class="btn btn-primary">Create</button>
            </div>
        </form>
        </div>
    </div>
    </div>