<!-- Begin Page Content -->
<div class="container-fluid">
<!-- Dropdown Card Example -->
<div class="card col-lg-6 mx-auto px-0 shadow">
<!-- Card Header - Dropdown -->
<div class="card-header d-flex flex-row align-items-center justify-content-between">
    <h6 class="m-0 h1 font-weight-bold">Profile</h6>
    <div class="dropdown no-arrow">
        <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink"
            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
        </a>
        <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in"
            aria-labelledby="dropdownMenuLink">
            <div class="dropdown-header">Options:</div>
            <a href="<?php echo base_url().'user/update/'.$user['id']; ?>" class="dropdown-item" href="#">Edit</a>
            <div class="dropdown-divider"></div>
            <?php if($user_info['role'] == 1): ?>
            <a class="dropdown-item" href="javascript:;" data-toggle="modal" data-target="#deleteModal">Delete</a>
            <?php endif; ?>
        </div>
    </div>
    </div>
<!-- Card Body -->
<div class="card-body">
    <!-- Page Heading -->
            <div class="row no-gutters align-items-center">
                <div class="col mr-2">
                    <div class="text-xs font-weight-bold text-success text-uppercase mb-1">Name</div>
                    <div class="mb-0 text-gray-800"><?php echo $user['first_name'].' '.$user['last_name']; ?></div>
                </div>
            </div>
            <!-- Divider -->
            <hr class="sidebar-divider my-4">
            <div class="row no-gutters align-items-center">
                <div class="col mr-2">
                    <div class="text-xs font-weight-bold text-success text-uppercase mb-1">Position</div>
                    <div class="mb-0 text-gray-800"><?php echo $user['position']; ?></div>
                </div>
            </div>
            <!-- Divider -->
            <hr class="sidebar-divider my-4">
            <div class="row no-gutters align-items-center">
                <div class="col mr-2">
                    <div class="text-xs font-weight-bold text-success text-uppercase mb-1">Email Address</div>
                    <div class="mb-0 text-gray-800"><?php echo $user['email_address']; ?></div>
                </div>
            </div>
            <!-- Divider -->
            <hr class="sidebar-divider my-4">
            <div class="row no-gutters align-items-center">
                <div class="col mr-2">
                    <div class="text-xs font-weight-bold text-success text-uppercase mb-1">Joined</div>
                    <div class="mb-0 text-gray-800"><?php echo $user['date_created']; ?></div>
                </div>
            </div>
            </div>
    </div>
</div>
<!-- /.container-fluid -->