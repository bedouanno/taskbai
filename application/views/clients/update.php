<!-- MAIN CONTENT-->
<div class="main-content">
    <div class="section__content section__content--p30">
        <div class="container-fluid">

<!-- <div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 h1 font-weight-bold text-primary">Update Client Account</h6>
    </div>
    <div class="card-body"> -->
        
  <div class="row">


  <div class="col-md-12">
        <div class="card">
            <div class="card-header bg-warning text-white">
                <strong class="card-title"><i class="fa fa-edit mr-2"></i>Update Client Account</strong>
            </div>
            <div class="card-body">

<?php if(!empty(validation_errors())): ?>
<div class="alert alert-dismissible alert-primary">
<!--  <button type="button" class="btn-close" data-bs-dismiss="alert"></button>-->
    <strong><?php echo validation_errors(); ?></strong>
</div>
<?php endif; ?>



  <?php echo form_open('client/update/'.$input_val['id']); ?>
    <fieldset>
      <div class="row">
        <div class="form-group col-sm-6">
          <label for="CompanyName" class="form-label mt-1 font-weight-bold">Company Name</label>
          <input type="text" class="form-control" required name="company_name" value="<?php echo $input_val['company_name']; ?>" id="CompanyName" placeholder="Company Name">
        </div>
      </div>
      <div class="row">
        <div class="form-group col-sm-6">
          <label for="ContactPerson" class="form-label mt- font-weight-bold1">Contact Person</label>
          <input type="text" class="form-control" required name="contact_person" value="<?php echo $input_val['contact_person']; ?>" id="ContactPerson" placeholder="Contact Person">
        </div>
        <div class="form-group col-sm-6">
          <label for="EmailAddress" class="form-label mt-1 font-weight-bold">Email Address</label>
          <input type="text" required name="email_address" class="form-control" value="<?php echo $input_val['email_address']; ?>" id="EmailAddress" placeholder="Email Address">
        </div>
      </div>
      <div class="row">
        <div class="form-group col-sm-6">
          <label for="NatureOfBusiness" class="form-label mt-1 font-weight-bold">Nature of Business</label>
          <input type="text" required name="nature_of_business"  class="form-control" value="<?php echo $input_val['nature_of_business']; ?>" id="NatureOfBusiness" placeholder="Nature of Business">
        </div>
        <div class="form-group col-sm-6">
          <label for="NatureOfBusiness" class="form-label mt-1 font-weight-bold">Handling Agent</label>
          <input type="text" required name="handling_agent"  class="form-control" value="<?php echo $input_val['handling_agent']; ?>" id="Handling Agent" placeholder="HandlingAgent">
        </div>
      </div>
      <hr class="sidebar-divider my-3">
      <div class="row">
        <div class="form-group col-sm-12">
          <label for="WebsiteAccess" class="form-label mt-1 font-weight-bold">Website Access</label>
          <textarea type="text" required name="website_access"  class="form-control" id="WebsiteAccess" placeholder="Website Access"><?php echo $input_val['website_access']; ?></textarea>
        </div>
      </div>
      <div class="row">
        <div class="form-group col-sm-12">
          <label for="OtherAccess" class="form-label mt-1 font-weight-bold">Other Access</label>
          <textarea type="text" required name="other_access"  class="form-control" id="OtherAccess" placeholder="Other Access"><?php echo $input_val['other_access']; ?></textarea>
        </div>
      </div>
      <input type="hidden" name="added_by"  class="form-control" value="<?php echo $user_info['id']; ?>" placeholder="added_by">
      <button type="submit" class="btn btn-md btn-success mt-4 text-uppercase text-white float-right">Update Client</button>
    </fieldset>
  </form>

        </div>
      </div>
  </div>


</div>
</div>
</div>
<!-- /.container-fluid -->
