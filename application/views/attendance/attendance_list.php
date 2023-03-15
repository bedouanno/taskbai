<!-- MAIN CONTENT-->
<div class="main-content">
<div class="section__content section__content--p30">
<div class="container-fluid">
    <!-- Page Heading -->

    <div class="row">
    <div class="col-md-12">
        <!-- DATA TABLE -->
        <!-- <div class="d-flex flex-row justify-content-end mb-2">                                    
            <a href="<?php //echo base_url(); ?>user/create" class="au-btn au-btn-icon au-btn--green au-btn--small"><i class="zmdi zmdi-plus"></i>Add User</a>
        </div> -->

        <div class="card border border-success">
            <div class="card-header">
                <strong class="card-title">Trainee Attendance
                    <!-- <small>
                        <span class="badge badge-danger float-right mt-1">49</span>
                    </small> -->
                </strong>
            </div>
            <div class="card-body">
            <div class="table-responsive table-responsive-data1">
            <table class="table table-borderless table-data3" id="userTables">
                <thead class="bg-primary">
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Position</th>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach ($users as $user):?>
                        <tr>
                        <td style="width: 20px;"><?php echo $user['id']?></td>
                            <td><a class="text-black-50 hvr-underline"  href="<?php echo base_url(); ?>attendance/user/<?php echo $user['id']?>"><?php echo $user['first_name'].' '.$user['last_name']?></a></td>
                            <td><?php echo $user['position']?></td>
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
</div>
<!-- /.container-fluid -->