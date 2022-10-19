<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="row mb-4">
        <h1 class="m-0 h1 font-weight-bold text-primary col align-self-start"><?= $title; ?></h1>
        <?php if($user_info['role'] == 1): ?>
        <a href="<?php echo base_url(); ?>client/create" class="btn btn-info col-sm-1 align-self-end"><i class="fas fa-plus fa-fw mr-2"></i>Add Clients</a>
        <?php endif; ?>
    </div>
    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTables" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>Company Name</th>
                            <th>Status</th>
                        </tr>
                    </thead>
                    <tfoot>
                        <tr>
                            <th>Company Name</th>
                            <th>Status</th>
                        </tr>
                    </tfoot>
                    <tbody>
                    <?php foreach ($clients as $client):?>
                        <tr>
                            <td><a href="<?php echo base_url(); ?>clients/<?php echo $client['id']?>"><?php echo $client['company_name']?></a></td>
                            <td><?php echo $stat[$client['status'] - 1];?></td>
                        </tr>
                        <?php endforeach;?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

</div>
<!-- /.container-fluid -->