<!-- Begin Page Content -->
<div class="container-fluid">
    <!-- Page Heading -->
    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <div class="row">
                <h1 class="m-0 h1 font-weight-bold text-primary col align-self-start"><?= $title; ?> list</h1>
                <a href="<?php echo base_url(); ?>user/create" class="btn btn-info col-sm-1 align-self-end"><i class="fas fa-plus fa-fw mr-2"></i>Add User</a>
            </div> 
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Position</th>
                        </tr>
                    </thead>
                    <tfoot>
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Position</th>
                        </tr>
                    </tfoot>
                    <tbody>
                    <?php foreach ($users as $user):?>
                        <tr>
                        <td><?php echo $user['id']?></td>
                            <td><a href="<?php echo base_url(); ?>user/<?php echo $user['id']?>"><?php echo $user['first_name'].' '.$user['last_name']?></a></td>
                            <td><?php echo $user['position']?></td>
                        </tr>
                        <?php endforeach;?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

</div>
<!-- /.container-fluid -->