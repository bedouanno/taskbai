<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title><?php echo $sitename; ?></title>

    <!-- Custom fonts for this template-->
    <link href="<?php echo base_url(); ?>/assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
    href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
    rel="stylesheet">
    <link href="https://bootswatch.com/5/yeti/bootstrap.min.css" rel="stylesheet" type="text/css">
    <!-- Custom styles for this template-->
    <link href="<?php echo base_url(); ?>/assets/css/sb-admin-2.min.css" rel="stylesheet">

    <!-- Custom styles for this page -->
    <link href="<?php echo base_url(); ?>/assets/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

                    <!-- Custom styles for this page -->
    <link href="<?php echo base_url(); ?>/assets/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
    

    <link rel="stylesheet" href="<?php echo base_url(); ?>/assets/sweet-modal/jquery.sweet-modal.min.css"/>

<!-- CSS -->
<style>

.list_instructions{counter-reset: section;}
.list_instructions button::before{counter-increment: section; content: "Instruction " counter(section) ": ";}
.accordion-custom { background-color: #eee; color: #444; cursor: pointer; padding: 18px;  width: 100%;  border: none;  text-align: left;  outline: none;  font-size: 15px;  transition: 0.4s;}
.active-custom, .accordion-custom:hover { background-color: #ccc;}
.panel {padding: 0 18px; background-color: white; overflow: hidden; transition: max-height 0.2s ease-out; display: none}
.cont-padding{padding: 25px 0}

#CreateInstructions{display: none; position: fixed; z-index: 3; padding: 50px 15px; left: 0; top: 0; width: 100%; height: 100%; overflow: auto; background-color: #000; background-color: rgba(0,0,0,.4);	}


#CreateInstructions .modal-dialog, #TaskURL .modal-dialog{position: relative;background-color: #fefefe;margin: auto;    margin-bottom: auto;margin-bottom: 50px;width: 100%;max-width: 930px;background: linear-gradient(137deg,#c90505 0,#ef7d0a 37%,#7ec123 64%,#a88d00 100%);border: 3px solid #cb0a05;padding: 15px 0 0;-webkit-animation-name: animatetop;-webkit-animation-duration: .4s;animation-name: animatetop;animation-duration: .4s;}

#TaskURL{display: none; position: fixed; z-index: 3; padding: 50px 15px; left: 0; top: 0; width: 100%; height: 100%; overflow: auto; background-color: #000; background-color: rgba(0,0,0,.4);	}
#TaskURL .modal-dialog{position: relative;background-color: #fefefe;margin: auto;    margin-bottom: auto;margin-bottom: 50px;width: 100%;max-width: 930px;background: linear-gradient(137deg,#c90505 0,#ef7d0a 37%,#7ec123 64%,#a88d00 100%);border: 3px solid #cb0a05;padding: 15px 0 0;-webkit-animation-name: animatetop;-webkit-animation-duration: .4s;animation-name: animatetop;animation-duration: .4s;}

#btnEditModal{display: none; position: fixed; z-index: 3; padding: 50px 15px; left: 0; top: 0; width: 100%; height: 100%; overflow: auto; background-color: #000; background-color: rgba(0,0,0,.4);	}
#btnEditModal .modal-dialog{position: relative;background-color: #fefefe;margin: auto; margin-bottom: auto;margin-bottom: 50px;width: 100%;max-width: 930px;-webkit-animation-name: animatetop;-webkit-animation-duration: .4s;animation-name: animatetop;animation-duration: .4s; border-radius: 15px; overflow: hidden}

.content-custom{}
.content-custom p{margin: 0 !important; }
.content-custom *{font-family: inherit;}

</style>

</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">