            <!-- MAIN CONTENT-->
            <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">

                        <div class="row">
                            <div class="col-md-12">
                                <!-- DATA TABLE -->
                                <?php if($user_info['role'] == 1): ?>  
                                <div class="d-flex flex-row justify-content-end mb-2">                                    
                                    <a class="btn btn-md btn-warning text-white text-uppercase" href="<?php echo base_url(); ?>client/create"><i class="zmdi zmdi-plus mr-2"></i>add client</a>
                                </div>
                                <?php endif; ?>

                                <div class="card border border-warning">
                                    <div class="card-header">
                                        <strong class="card-title"><?php echo $title; ?>
                                            <small>
                                                <span class="badge badge-danger float-right mt-1">49</span>
                                            </small>
                                        </strong>
                                    </div>
                                    <div class="card-body">
                                    <div class="table-responsive table-responsive-data1">
                                    <table class="table table-borderless table-data3" id="clientTables">
                                        <thead class="bg-warning">
                                            <tr>
                                                <th>Company Name</th>
                                                <th>Status</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <?php foreach ($clients as $client):?>
                                            <tr class="tr-shadow">
                                                <td><a class="text-black-50 hvr-underline" href="<?php echo base_url(); ?>clients/<?php echo $client['id']?>"><?php echo $client['company_name']?></a></td>
                                                <td><?php echo $stat[$client['status'] - 1];?></td>
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
            <!-- END MAIN CONTENT-->

                         

                
