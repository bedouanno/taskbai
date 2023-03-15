    <!-- Sidebar -->
    <ul class="navbar-nav bg-dark sidebar sidebar-dark accordion" id="accordionSidebar">

        <!-- Sidebar - Brand -->
        <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
            <div class="sidebar-brand-icon rotate-n-15">
                <i class="fas fa-laugh-wink"></i>
            </div>
            <div class="sidebar-brand-text mx-3">TaskBai <sup>1.0</sup></div>
        </a>

        <!-- Divider -->
        <hr class="sidebar-divider my-0">

        <!-- Nav Item - Dashboard -->
        <li class="nav-item active">
            <a class="nav-link" href="<?php echo base_url(); ?>">
                <i class="fas fa-fw fa-home"></i>
                <span>Home</span></a>
        </li>
        <!-- Divider -->
        <hr class="sidebar-divider">

        <!-- Heading -->
        <div class="sidebar-heading">
            Addons
        </div>

        <!-- Nav Item - Charts -->
        <li class="nav-item">
            <a class="nav-link" href="<?php echo base_url(); ?>clients">
                <i class="fas fa-fw fa-briefcase"></i>
                <span>Clients</span></a>
        </li>
            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="<?php echo base_url(); ?>tasks" data-toggle="collapse" data-target="#collapseTwo"
                    aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fas fa-fw fa-tasks"></i>
                    <span>Tasks</span>
                </a>
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">My Task:</h6>
                        <a class="collapse-item" href="<?php echo base_url(); ?>tasks">Today's Task</a>
                        <a class="collapse-item" href="<?php echo base_url(); ?>tasks/history">Task History</a>
                    </div>
                </div>
            </li>
        <?php if($user_info['role'] == 1): ?>
        <!-- Divider -->
        <hr class="sidebar-divider d-none d-md-block mt-4">
        <div class="sidebar-heading">
           Admin Tools 
        </div>
        <!-- Nav Item - Tables -->
        <li class="nav-item">
            <a class="nav-link" href="<?php echo base_url(); ?>users">
                <i class="fas fa-fw fa-users"></i>
                <span>Users</span></a>
        </li>

        <li class="nav-item">
            <a class="nav-link" href="<?php echo base_url(); ?>users">
                <i class="fas fa-fw fa-hdd"></i>
                <span>Database used</span></a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="<?php echo base_url(); ?>users">
                <i class="fas fa-fw fa-star"></i>
                <span>Score Card</span></a>
        </li>

        <?php endif; ?>
        <!-- Divider -->
        <hr class="sidebar-divider d-none d-md-block mt-4">
        <!-- Heading -->
        <div class="sidebar-heading">
            Tools
        </div>
        <li class="nav-item">
            <a class="nav-link" target="_blank" href="https://drive.google.com/drive/my-drive">
                <i class="fas fa-fw fa-hdd"></i>
                <span>Google Drive Backup</span></a>
        </li>
        <!-- Divider -->
        <hr class="sidebar-divider d-none d-md-block mt-4">
        <!-- Heading -->
        <div class="sidebar-heading">
            Tools
        </div>
        <li class="nav-item">
            <a class="nav-link" target="_blank" href="https://www.xara.com/us/designer-pro/tutorials-demos/#video_player">
                <i class="fas fa-fw fa-bookmark"></i>
                <span>XARA Video Tutorials</span></a>
        </li>
        <li class="nav-item">
            <a class="nav-link" target="_blank" href="https://web4.proweaverlinks.com/stockphotos/">
                <i class="fas fa-fw fa-bookmark"></i>
                <span>Stock Photos</span></a>
        </li>
        <li class="nav-item">
            <a class="nav-link" target="_blank" href="https://drive.google.com/drive/folders/1voh_BN3yYnBNuk89VXv8wpHjGC1dprIa?usp=sharing">
                <i class="fas fa-fw fa-bookmark"></i>
                <span>Social Media Icons</span></a>
        </li>
        


        <!-- Divider -->
        <hr class="sidebar-divider d-none d-md-block">

        <!-- Sidebar Toggler (Sidebar) -->
        <div class="text-center d-none d-md-inline">
            <button class="rounded-circle border-0" id="sidebarToggle"></button>
        </div>


    </ul>
    <!-- End of Sidebar -->