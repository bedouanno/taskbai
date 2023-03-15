<?php $object; ?>
<!-- MAIN CONTENT-->
<div class="main-content">
    <div class="section__content section__content--p30">
        <div class="container-fluid">
            <div class="row">
            <div class="col-sm-6">
        <div class="card">
            <div class="card-header">
                <strong class="card-title">User Details
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
                            <a class="dropdown-item badge" href="<?php echo base_url().'user/delete/'.$user['id']; ?>">Delete</a>
                        </div>
                    </div>
                    </span>
                    <?php endif; ?>
                </small>
            </div>


            <div class="card-body">
    <!-- Page Heading -->
            <div class="row no-gutters align-items-center">
                <div class="col mr-2">
                <div class="font-weight-bold mb-1">Name</div>
                    <div class="mb-0 text-gray-800"><?php echo $user['first_name'].' '.$user['last_name']; ?></div>
                </div>
            </div>
            <!-- Divider -->
            <hr class="sidebar-divider my-4">
            <div class="row no-gutters align-items-center">
                <div class="col mr-2">
                <div class="font-weight-bold mb-1">Position</div>
                    <div class="mb-0 text-gray-800"><?php echo $user['position']; ?></div>
                </div>
            </div>
            <!-- Divider -->
            <hr class="sidebar-divider my-4">
            <div class="row no-gutters align-items-center">
                <div class="col mr-2">
                <div class="font-weight-bold mb-1">Email Address</div>
                    <div class="mb-0 text-gray-800"><?php echo $user['email_address']; ?></div>
                </div>
            </div>
            <!-- Divider -->
            <hr class="sidebar-divider my-4">
            <div class="row no-gutters align-items-center">
                <div class="col mr-2">
                    <div class="font-weight-bold mb-1">Created Date</div>
                    <div class="mb-0 text-gray-800"><?php echo dateTimeDateFunction($user['date_created']); ?>
                    <!-- $timeformat = FALSE) -->
                
                </div>
                </div>
            </div>
        </div>







        </div>
        </div>
        </div>

        </div>
    </div>
</div>
<!-- /.container-fluid -->
