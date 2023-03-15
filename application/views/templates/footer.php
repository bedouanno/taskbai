
<!-- END PAGE CONTAINER-->
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


<!-- Jquery JS-->
<script src="<?php echo base_url(); ?>/assetsv2/vendor/jquery-3.2.1.min.js"></script>
<!-- Bootstrap JS-->
<script src="<?php echo base_url(); ?>/assetsv2/vendor/bootstrap-4.1/popper.min.js"></script>
<script src="<?php echo base_url(); ?>/assetsv2/vendor/bootstrap-4.1/bootstrap.min.js"></script>
<!-- Vendor JS       -->
<script src="<?php echo base_url(); ?>/assetsv2/vendor/slick/slick.min.js">
</script>
<script src="<?php echo base_url(); ?>/assetsv2/vendor/wow/wow.min.js"></script>
<script src="<?php echo base_url(); ?>/assetsv2/vendor/animsition/animsition.min.js"></script>
<script src="<?php echo base_url(); ?>/assetsv2/vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
</script>
<script src="<?php echo base_url(); ?>/assetsv2/vendor/counter-up/jquery.waypoints.min.js"></script>
<script src="<?php echo base_url(); ?>/assetsv2/vendor/counter-up/jquery.counterup.min.js">
</script>
<script src="<?php echo base_url(); ?>/assetsv2/vendor/circle-progress/circle-progress.min.js"></script>
<script src="<?php echo base_url(); ?>/assetsv2/vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
<script src="<?php echo base_url(); ?>/assetsv2/vendor/chartjs/Chart.bundle.min.js"></script>
<script src="<?php echo base_url(); ?>/assetsv2/vendor/select2/select2.min.js">
</script>





  
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.13.2/js/jquery.dataTables.js"></script>

<!-- Main JS-->
<script src="<?php echo base_url(); ?>assetsv2/js/main.js"></script>
<script src="<?php echo base_url(); ?>assetsv2/js/slugify.js"></script>



<script src="https://cdn.jsdelivr.net/npm/@fancyapps/ui@5.0/dist/fancybox/fancybox.umd.js"></script>


<script src="<?php echo base_url(); ?>assetsv2/js/plugins.js"></script>
 <script src="https://cdn.jsdelivr.net/npm/@fancyapps/ui@5.0/dist/fancybox/fancybox.umd.js"></script>


 <script>
      Fancybox.bind('[data-fancybox="gallery"]', {
        //
      });    
    </script>

<script src="<?php echo base_url(); ?>/assets/sweet-modal/jquery.sweet-modal.min.js"></script>
<script src="https://cdn.ckeditor.com/4.20.2/full/ckeditor.js"></script>

<!-- <script src="<?php echo base_url(); ?>assetsv2/js/ckeditor.js"></script> -->
<script>
    CKEDITOR.addCss('.cke_editable p { margin: 0 !important; }');
    CKEDITOR.replace( 'WebsiteAccess' );
    CKEDITOR.replace( 'OtherAccess' );
    CKEDITOR.replace( 'InstructionID');
    CKEDITOR.replace( 'FormInstructions' );
    CKEDITOR.replace( 'FORMEDITOR01' );
    CKEDITOR.replace( 'FORMEDITOR02' );
    CKEDITOR.replace( 'FORMEDITOR03' );
    CKEDITOR.replace( 'FORMEDITOR04' );
    CKEDITOR.replace( 'formOaccess' );
    CKEDITOR.replace( 'subject_desc' );
    CKEDITOR.replace( 'activity_desc' );

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
<!-- end document-->