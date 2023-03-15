<!-- MAIN CONTENT-->
<div class="main-content">
<div class="section__content section__content--p30">
<div class="container-fluid">
    <!-- Page Heading -->

    <div class="row">
    <div class="col-md-12">
        <!-- DATA TABLE -->
        <div class="d-flex flex-row justify-content-end mb-2">                                    
            <!-- <a href="<?php echo base_url(); ?>user/create" class="au-btn au-btn-icon au-btn--green au-btn--small"><i class="zmdi zmdi-plus"></i>Add User</a> -->
        </div>

        <!-- <div class="card border border-success">
            <div class="card-header">
                <strong class="card-title">Topic List
                    <small>
                        <span class="badge badge-danger float-right mt-1">49</span>
                    </small>
                </strong>
            </div>
            <div class="card-body">
            <div class="table-responsive table-responsive-data1">
            <table class="table table-borderless table-data3" id="userTables">
                <thead class="bg-primary">
                    <tr>
                        <th>Topic Title</th>
                        <th>Topic Description</th>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach ($topics as $topic):?>
                        <tr>
                            <td><a class="text-black-50 hvr-underline"  href="<?php echo base_url(); ?>training-activity/topic/<?php echo $topic['subject_slug']?>"><?php echo $topic['subject_title']; ?></a></td>
                            <td><?php echo $topic['subject_desc']?></td>
                        </tr>
                        <?php endforeach;?>
                    </tbody>
            </table>
        </div>
            </div>
        </div> -->
        
        
        <div class="row">
            <?php if(!empty($topics)){ ?>
        <?php foreach ($topics as $topic):?>
        <div class="col-md-4">
            <div class="card">
                <div class="card-header">
                    <strong class="card-title">
                    <a class="text-black-50 hvr-underline"  href="<?php echo base_url(); ?>training-activity/topic/<?php echo $topic['subject_slug']?>"><?php echo $topic['subject_title']; ?></a>
                        <small>
                            <span class="badge badge-success float-right mt-1">Topic</span>
                        </small>
                    </strong>
                </div>
                <div class="card-body">
                    <p class="card-text">
                    <?php
                    $string = $topic['subject_desc'];
                    $max = 200; // or 200, or whatever
                    if(strlen($string) > $max) {
                    // find the last space < $max:
                    $shorter = substr($string, 0, $max+1);
                    $string = substr($string, 0, strrpos($shorter, ' ')).'...';
                    }                    ?>
                        <?php echo $string; ?>
                    </p>
                </div>
            </div>
        </div>
        <?php endforeach;?>

        <?php } else { ?>
            <h3 class="font-italic">No topics!</h3>
        <?php } ?>
        
        </div>
    </div>
</div>

</div>
</div>
</div>
<!-- /.container-fluid -->