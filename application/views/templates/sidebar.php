        <!-- MENU SIDEBAR-->
        <aside class="menu-sidebar d-none d-lg-block">
            <div class="logo py-2">
                <a href="#">
                    <img src="<?php echo base_url(); ?>/assetsv2/images/icon/logo.png" alt="Cool Admin" />
                </a>
            </div>
            <div class="menu-sidebar__content js-scrollbar1">
                <nav class="navbar-sidebar">
                    <ul class="list-unstyled navbar__list">
                        <li>
                            <a href="<?php echo base_url(); ?>">
                                <i class="fas fa-tachometer-alt"></i>Dashboard</a>
                        </li>
                        <li>
                            <a href="<?php echo base_url(); ?>task/errors">
                                <i class="fas fa-exclamation-triangle"></i>Task Errors</a>
                        </li>
                        <li>
                            <a href="<?php echo base_url(); ?>training-activity">
                                <i class="fas fa-folder-open"></i>Training Guidelines</a>
                        </li>
                        <?php if($user_info['role'] == 1): ?>  
                        <li>
                            <a href="<?php echo base_url(); ?>clients">
                                <i class="fas fa-briefcase"></i>Clients</a>
                        </li>
                        <?php endif; ?>
                        <li class="has-sub">
                            <a class="js-arrow" href="#">
                                <i class="fas fa-tasks"></i>Tasks <small class="float-right mt-1">
                                    <!-- <span class="badge badge-danger mr-2"> 
                                        <?php //echo $this->tasks_model->task_count(); ?>
                                    </span>  -->
                                <i class="fas fa-chevron-down"></i></small></a>
                            <ul class="list-unstyled navbar__sub-list js-sub-list">
                                <li>
                                    <a href="<?php echo base_url(); ?>tasks"><i class="fas fa-tasks"></i> Today's Task</a>
                                </li>
                                <li>
                                    <a href="<?php echo base_url(); ?>tasks/history"><i class="fas fa-tasks"></i> Task History</a>
                                </li>
                            </ul>
                        </li>
                        <?php if($user_info['role'] == 1 and $this->tasks_model->tasks_unassigned_count() != 0): ?>  
                        <li>
                            <a href="<?php echo base_url(); ?>tasks/unassigned" class="text-danger">
                                <i class="fas fa-briefcase text-danger"></i>Unassigned Tasks<small class="float-right mt-1">
                                <span class="badge badge-danger mr-2"><?php echo $this->tasks_model->tasks_unassigned_count(); ?></span> 
                                </small></a>
 
                        </li>
                        <?php endif; ?>
                        <hr>
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
                        <!-- <li class="nav-item">
                            <a class="nav-link" target="_blank" href="https://drive.google.com/drive/folders/1voh_BN3yYnBNuk89VXv8wpHjGC1dprIa?usp=sharing">
                                <i class="fas fa-fw fa-bookmark"></i>
                                <span>Social Media Icons</span></a>
                        </li> -->
                        <hr>
                        <?php if($user_info['role'] == 2): ?> 
                        <li>
                            <a href="<?php echo base_url(); ?>attendance">
                                <i class="fas fa-calendar"></i>Attendance</a>
                        </li>
                        <?php endif; ?>
                        <?php if($user_info['role'] == 1): ?>  
                        <li>
                            <a href="<?php echo base_url(); ?>attendance/user-list"><i class="fas fa-calendar"></i>Attendance List</a>
                        </li>
                        <?php endif; ?>
                        <hr>
                        <?php if($user_info['role'] == 1): ?>  
                        <li class="has-sub">
                            <a class="js-arrow" href="#">
                                <i class="fas fa-gear"></i>Admin Tools <i class="fas fa-chevron-down float-right mt-1"></i></a>
                            <ul class="list-unstyled navbar__sub-list js-sub-list">
                                <li>
                                    <a href="<?php echo base_url(); ?>users"><i class="fas fa-users"></i>Users</a>
                                </li>
                                <hr>
                                <span class="badge badge-sm">Training Guidelines</span>
                                <li>
                                    <a href="<?php echo base_url(); ?>training-activity/create"><i class="fas fa-th-large"></i>Create Activity</a>
                                </li>
                                <li>
                                    <a href="<?php echo base_url(); ?>training-activity/topic-list"><i class="fas fa-th-large"></i>Topic List</a>
                                </li>
                            </ul>
                        </li>
                        <?php endif; ?>
                    </ul>
                </nav>
            </div>
        </aside>
        <!-- END MENU SIDEBAR-->