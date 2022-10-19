</div>
    <!-- End of Main Content -->

    <!-- Footer -->
    <footer class="sticky-footer bg-white">
        <div class="container my-auto">
            <div class="copyright text-center my-auto">
                <span>Copyright &copy; TaskBai 2022</span>
            </div>
        </div>
    </footer>
    <!-- End of Footer -->

</div>
<!-- End of Content Wrapper -->
</div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="<?php echo base_url(); ?>logout">Logout</a>
                </div>
            </div>
        </div>
    </div>
    

    <!-- Delete Modal-->
    <div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
    aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-body">Are you sure to delete?</div>
            <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                <a class="btn btn-primary" href="<?php echo base_url().'user/delete/'.$user['id']; ?>">Delete</a>
            </div>
        </div>
    </div>
    </div>

    <!-- Delete Modal-->
    <div class="modal fade" id="deleteClientModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
    aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-body">Are you sure to delete?</div>
            <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                <a class="btn btn-primary" href="<?php echo base_url().'client/delete/'.$client['id']; ?>">Delete</a>
            </div>
        </div>
    </div>
    </div>





    <!-- Bootstrap core JavaScript-->
    <script src="<?php echo base_url(); ?>/assets/js/jquery-2.1.1.min.js"></script>
    <script src="<?php echo base_url(); ?>/assets/vendor/jquery/jquery.min.js"></script>
    <script src="<?php echo base_url(); ?>/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="<?php echo base_url(); ?>/assets/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Page level plugins -->
    <script src="<?php echo base_url(); ?>/assets/vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="<?php echo base_url(); ?>/assets/vendor/datatables/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="<?php echo base_url(); ?>/assets/js/demo/datatables-demo.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="<?php echo base_url(); ?>/assets/js/sb-admin-2.min.js"></script>
    <script src="<?php echo base_url(); ?>/assets/sweet-modal/jquery.sweet-modal.min.js"></script>

    <script src="//cdn.ckeditor.com/4.18.0/full/ckeditor.js"></script>
    <script>
        CKEDITOR.replace( 'WebsiteAccess' );
        CKEDITOR.replace( 'OtherAccess' );
        CKEDITOR.replace( 'InstructionID');
        CKEDITOR.replace( 'FormInstructions' );
        CKEDITOR.replace( 'FORMEDITOR01' );
        CKEDITOR.replace( 'FORMEDITOR02' );
        CKEDITOR.replace( 'FORMEDITOR03' );
        CKEDITOR.replace( 'formOaccess' );

    </script>

<script>


$(document).ready(function(){

    $('#btnCreateInstruction').click (function(){
        $('#CreateInstructions').show();
        });

    $('#closeBtn').click (function(){
        $('#CreateInstructions').hide();
    });


    $('#btnEdit').click (function(){
        $('#btnEditModal').show();
    });


    $('#TaskURLbtn').click (function(){
        $('#TaskURL').show();
    });



    $('#closeBtn01').click (function(){
        $('#TaskURL').hide();
        $('#btnEditModal').hide();
    });

}); 
</script>

<?php if($this->session->flashdata('msg')): ?>
<script>
$.sweetModal({
content: "<strong style='color:#000'><?php echo $this->session->flashdata('msg'); ?></strong>",
icon: $.sweetModal.ICON_SUCCESS});
</script>
<?php endif; ?>

<?php if($this->session->flashdata('msg_created')): ?>
<script>
$.sweetModal({
content: "<strong style='color:#000'><?php echo $this->session->flashdata('msg_created'); ?></strong>",
icon: $.sweetModal.ICON_SUCCESS});
</script>
<?php endif; ?>




<script>
$( ".accordion-custom" ).click(function() {
  $( ".panel" ).show();
});
</script>

</body>

</html>