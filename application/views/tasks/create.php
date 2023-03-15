<!-- MAIN CONTENT-->
<div class="main-content">
    <div class="section__content section__content--p30">
        <div class="container-fluid">


        <div class="col-md-12">
        <div class="card">
            <div class="card-header bg-primary text-white">
                <strong class="card-title"><i class="fa fa-edit mr-2"></i>Create Task</strong>
            </div>
            <div class="card-body">
        
<?php if(!empty(validation_errors())): ?>
<div class="alert alert-dismissible alert-primary">
<!--  <button type="button" class="btn-close" data-bs-dismiss="alert"></button>-->
    <strong><?php echo validation_errors(); ?></strong>
</div>
<?php endif; ?>
<?php $createdDate = new DateTime($current_datetime);
$createdDateFormat = date_format($createdDate, 'm d y'); ?>
<?php echo form_open('task/create/'.$client['id']); ?>
    <div class="row">
      <div class="form-group col-sm-12">
      <input type="hidden" class="form-control" required name="account_id" value="<?php echo $client['id']; ?>" id="AccountId">
        <label for="TaskName" class="form-label mt-1 font-weight-bold">Task Name</label>
        <input type="text" class="form-control" required name="task_name" value="<?php echo $client['company_name'].' '.$createdDateFormat; ?>" id="TaskName" placeholder="Task Name">
      </div>

      <div class="form-group col-sm-12">
        <label for="AssignnedTo" class="form-label mt-1 font-weight-bold">Assigned to</label>
        <select class="form-select form-control" id="exampleSelect1" value="0" name="assigned_id">
            <option value="">Assigned to</option>
            <?php foreach ($users as $user): ?>
            <option value="<?php echo $user['id']; ?>"><?php echo $user['first_name']; ?></option>
            <?php endforeach; ?>
      </select>
    </div>

    <div class="form-group col-lg-12">
        <label for="InstructionID" class="form-label mt-1 font-weight-bold">Instructions</label>
        <textarea type="text" required name="instruction"  class="form-control" id="InstructionID"></textarea>
      </div>
    </div>

      <div class="form-group col-sm-12">
      <input type="hidden" name="created_id"  class="form-control" value="<?php echo $user_info['id']; ?>" placeholder="created_id">
      <button type="submit" class="btn btn-md btn-success mt-4 float-right">Create</button>
      </div>
 

    </div>
</form>

</div>
      </div>
  </div>



</div>
</div>
</div>
<!-- /.container-fluid -->
