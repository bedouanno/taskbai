<!-- MAIN CONTENT-->
<div class="main-content">
<div class="section__content section__content--p30">
<div class="container-fluid">
    <!-- Page Heading -->
<!-- /////////////////////////////////////////// -->

<div class="row">
    <div class="col-md-12">
        <!-- DATA TABLE -->
          <div class="card border border-success">
            <div class="card-header">
                <strong class="card-title">Create User
                    <!-- <small>
                        <span class="badge badge-danger float-right mt-1">49</span>
                    </small> -->
                </strong>
            </div>
            <div class="card-body">

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
      <select class="form-select form-control-sm form-control" id="exampleSelect1" required name="position" >
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
</div>

<!-- ////////////////////////////////////////// -->
</div>
</div>
</div>
<!-- /.container-fluid -->
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
