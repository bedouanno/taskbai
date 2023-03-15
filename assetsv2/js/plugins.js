
(function ($) {

  $('.logoutModal').click(function() {
    $('#logoutModal').fadeIn();
    $( ".account-item" ).removeClass( "show-dropdown")
  });

  $('.closebtn').click(function() {
    $('#logoutModal, #AssignedTo, #QAbuddy, #CreateInstructions, #QAerrors').fadeOut();
    $('.modal-backdrop.show').removeClass();
    $('.modal-open').removeClass();

  });


    $('#userTables, #clientTables').DataTable({
      "pageLength": 50
    });

    $('#taskHistory').DataTable({
      "pageLength": 50,
      columnDefs: [ { type: 'date', 'targets': [2] }],
      order: [[ 2, 'desc' ], [ 0, 'desc' ]]
      
    });

      $('#taskToday').DataTable({
      "pageLength": 50,
      columnDefs: [ { type: 'date', 'targets': [2] } ],
      order: [[0, 'asc'],[ 2, 'desc' ]]
      
    });


    $('#taskListClient').DataTable({
      "pageLength": 50,
      columnDefs: [ { type: 'date', 'targets': [2] } ],
      order: [[ 2, 'desc' ]]
      
    });

    // $("#subject_title").keyup(function() {
    //   var Text = $(this).val();
    //   Text = Text.toLowerCase();
    //   Text = Text.replace(/[^a-zA-Z0-9]+/g,'-');
    //   $(".subject_title_slug").val(Text);        
    // });

  // Remove certain replacements mapped by slugify
 
    $('.subject_title_slug, #slug_input').slugify('#subject_title');



})(jQuery);