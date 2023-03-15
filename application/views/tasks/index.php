

                   <!-- MAIN CONTENT-->
                   <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">

    <div class="col-md-12">
        <div class="card">
            <div class="card-header">
                <strong class="card-title"><?= $title; ?>
                    <small>
                        <!-- <span class="badge badge-danger float-right mt-1"><?php //echo $this->tasks_model->task_count(); ?></span> -->
                        <span class="badge badge-primary float-right mt-1 mr-1">
                        <?php $createdDates = new DateTime($current_datetime);
                            $createdDateFormats = date_format($createdDates, 'F d, Y - g:i a');
                            echo $createdDateFormats;?>
                        </span>
                    </small>
                </strong>
            </div>
            <div class="card-body">
            <div class="table-responsive table-responsive-data1">
                <table class="table table-borderless table-data3" id="taskToday">
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
                                <a class="text-black-50 hvr-underline"  href="javascript:;">
                                    unassiged
                                </a>
                            <?php }else{ ?>
                                <a class="text-black-50 hvr-underline"  href="<?php echo base_url(); ?>user/<?php echo $task['assigned_id']; ?>">
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
    </div>


