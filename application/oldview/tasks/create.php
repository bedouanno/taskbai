<!-- Begin Page Content -->
<div class="container-fluid">

<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 h1 font-weight-bold text-primary">Create Client Task</h6>
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
  <fieldset>
    <div class="row">
    <input type="hidden" class="form-control" required name="account_id" value="<?php echo $client['id']; ?>" id="AccountId">
      <div class="form-group col-sm-6">
        <label for="TaskName" class="form-label mt-1">Task Name</label>
        <input type="text" class="form-control" required name="task_name" value="<?php echo $client['company_name'].' '.$createdDateFormat; ?>" id="TaskName" placeholder="Task Name">
      </div>
    </div>
    <div class="row">
      <div class="form-group col-sm-6">
        <label for="AssignnedTo" class="form-label mt-1">Assigned to</label>
        <select class="form-select" id="exampleSelect1" value="0" name="assigned_id">
            <option value="">Assigned to</option>
            <?php foreach ($users as $user): ?>
            <option value="<?php echo $user['id']; ?>"><?php echo $user['first_name']; ?></option>
            <?php endforeach; ?>
      </select>
      </div>
    <hr class="sidebar-divider my-3">
    <div class="row">
      <div class="form-group col-sm-12">
        <label for="InstructionID" class="form-label mt-1">Instructions</label>
        <textarea type="text" required name="instruction"  class="form-control" id="InstructionID"></textarea>
      </div>
    </div>
    <input type="hidden" name="created_id"  class="form-control" value="<?php echo $user_info['id']; ?>" placeholder="created_id">
    <button type="submit" class="btn btn-primary  mt-4">Save</button>
  </fieldset>
</form>
</div>
</div>

</div>
<!-- /.container-fluid -->
