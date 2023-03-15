<!-- Begin Page Content -->
<div class="container-fluid">
    <!-- Page Heading -->
    <div class="row mb-4">
        <h1 class="m-0 h1 font-weight-bold text-primary col align-self-start"><?= $title; ?></h1>
        <span class="h5 col-sm-4 align-self-end text-right">
            <?php $createdDates = new DateTime($current_datetime);
            $createdDateFormats = date_format($createdDates, 'F d, Y - g:i a');
            echo $createdDateFormats;?>
        </span>
    </div>
    <!-- DataTales Example -->
    <div class="card shadow mb-4">
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
                            <td><?php echo $task_status[$task['status']];?></td>
                        </tr>
                        <?php endforeach;?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

</div>
<!-- /.container-fluid -->