<div class="container">

<!-- Outer Row -->
<div class="row justify-content-center">


    <div class="col-xl-10 col-lg-12 col-md-9">

        <div class="card o-hidden border-0 shadow-lg my-5">
            <div class="card-body p-0">
                <!-- Nested Row within Card Body -->
                <div class="row">
                    <!-- <div class="col-lg-6 d-none d-lg-block bg-login-image"></div> -->
                    <div class="col-lg-12">
                        <div class="p-5">
                            <div class="text-center">
                                <h1 class="h4 text-gray-900 mb-4">Welcome to TaskBai!</h1>
                            </div>
                                <?php if(!empty(validation_errors())): ?>
                            <div class="alert alert-dismissible alert-primary">
                            <!--  <button type="button" class="btn-close" data-bs-dismiss="alert"></button>-->
                                <strong><?php echo validation_errors(); ?></strong>
                                
                            </div>
                            <?php endif; ?>

                            <?php if(!empty($errors)): ?>
                                <div class="alert alert-dismissible alert-primary">
                                <strong><?php echo $errors['error_message']; ?></strong>
                                
                            </div>
                            
                            <?php endif; ?>
                            <?php echo form_open('login'); ?>
                                <div class="form-group">
                                    <input type="email" name="email_address" class="form-control form-control-user"
                                        id="exampleInputEmail" aria-describedby="emailHelp"
                                        placeholder="Enter Email Address">
                                </div>
                                <div class="form-group">
                                    <input type="password" name="password" class="form-control form-control-user"
                                        id="exampleInputPassword" placeholder="Password">
                                </div>
                                <input type="submit" class="btn btn-primary btn-user btn-block" value="Login" name="login">
            
                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>

</div>

</div>