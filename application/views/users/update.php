<!-- Begin Page Content -->
<div class="container-fluid">

<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 h1 font-weight-bold text-primary">Update User</h6>
    </div>
    <div class="card-body">
    <?php if(!empty(validation_errors())): ?>
    <div class="alert alert-dismissible alert-primary">
    <!--  <button type="button" class="btn-close" data-bs-dismiss="alert"></button>-->
        <strong><?php echo validation_errors(); ?></strong>
    </div>
    <?php endif; ?>

    <?php echo form_open('user/update'); ?>
  <fieldset>
    <div class="row">
      <div class="form-group col-sm-6">
        <label for="FirstName" class="form-label mt-1">First Name</label>
        <input type="text" class="form-control" value="<?php echo $user['first_name']; ?>" id="FirstName" placeholder="First Name">
      </div>
      <div class="form-group col-sm-6">
        <label for="LastName" class="form-label mt-1">Last Name</label>
        <input type="text" class="form-control" value="<?php echo $user['last_name']; ?>" id="LastName" placeholder="Last Name">
      </div>
    </div>
    <div class="row">
    <div class="form-group col-sm-6">
      <label for="exampleSelect1" class="form-label mt-4">Position</label>
      <select class="form-select" id="exampleSelect1" required name="position">
       <option value="">Select position</option>
        <?php foreach ($positions as $position): ?>
            <option <?php if($position['position_name'] == $user['position']){ echo "selected"; } ?> value="<?php echo $position['position_name']; ?>"><?php echo $position['position_name']; ?></option>
        <?php endforeach; ?>
      </select>
    </div>
    </div>
    <div class="row">
      <div class="form-group col-sm-6">
        <label for="EmailAddress" class="form-label mt-1">Email Address</label>
        <input type="email" class="form-control" value="<?php echo $user['email_address']; ?>" id="EmailAddress" placeholder="Email Address">
      </div>
      <div class="form-group col-sm-6">
        <label for="Username" class="form-label mt-1">Username</label>
        <input disabled type="email" class="form-control" value="<?php echo $user['username']; ?>" id="Username" placeholder="Username">
      </div>
    </div>
    <div class="row">
      <div class="form-group col-sm-6">
        <label for="Password" class="form-label mt-1">Password</label>
        <input type="password" class="form-control" value="<?php echo $user['password']; ?>" id="Password" placeholder="Password">
        <!-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
      </div>
    </div>

    <button type="submit" class="btn btn-primary  mt-4">Update</button>
  </fieldset>
</form>
</div>
</div>

</div>
<!-- /.container-fluid -->




