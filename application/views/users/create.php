<!-- Begin Page Content -->
<div class="container-fluid">

<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 h1 font-weight-bold text-primary">Create User</h6>
    </div>
    <div class="card-body">
        


<?php if(!empty(validation_errors())): ?>
<div class="alert alert-dismissible alert-primary">
<!--  <button type="button" class="btn-close" data-bs-dismiss="alert"></button>-->
    <strong><?php echo validation_errors(); ?></strong>
</div>
<?php endif; ?>

<?php echo form_open('user/create'); ?>
  <fieldset>
    <div class="row">
      <div class="form-group col-sm-6">
        <label for="FirstName" class="form-label mt-1">First Name</label>
        <input type="text" class="form-control" required name="first_name" value="<?php echo $input_val['first_name']; ?>" id="FirstName" placeholder="First Name">
      </div>
      <div class="form-group col-sm-6">
        <label for="LastName" class="form-label mt-1">Last Name</label>
        <input type="text" class="form-control" required name="last_name" value="<?php echo $input_val['last_name']; ?>"  id="LastName" placeholder="Last Name">
      </div>
    </div>
    <div class="row">
    <div class="form-group col-sm-6">
      <label for="exampleSelect1" class="form-label mt-4">Position</label>
      <select class="form-select" id="exampleSelect1" required name="position">
            <option value="">Select position</option>
            <?php foreach ($positions as $position): ?>
            <option value="<?php echo $position['position_name']; ?>"><?php echo $position['position_name']; ?></option>
            <?php endforeach; ?>
      </select>
    </div>
    </div>
    <div class="row">
      <div class="form-group col-sm-6">
        <label for="EmailAddress" class="form-label mt-1">Email Address</label>
        <input type="email" class="form-control" required name="email_address" value="<?php echo $input_val['email_address']; ?>" id="EmailAddress" placeholder="Email Address">
      </div>
      <div class="form-group col-sm-6">
        <label for="Password" class="form-label mt-1">Password</label>
        <input type="password" required name="password"  class="form-control" value="<?php echo $input_val['password']; ?>" id="Password" placeholder="Password">

      </div>
    </div>
    <button type="submit" class="btn btn-primary  mt-4">Save</button>
  </fieldset>
</form>
</div>
</div>

</div>
<!-- /.container-fluid -->

<!--
<script>
$(document).ready(function(){
    $('#EmailAddress').change(function() {
        var parts = $(this).val().split('@');
        var user = parts[0];
        var username = user.replace(/[^a-z\d]+/ig, '');
        $('#Username').val(username);
    });
    
});
</script>
-->
