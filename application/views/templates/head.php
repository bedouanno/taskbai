<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="au theme template">
    <meta name="author" content="Hau Nguyen">
    <meta name="keywords" content="au theme template">

    <!-- Title Page-->
    <title>TaskBai 2</title>
    <link rel="icon" type="image/x-icon" href="<?php echo base_url(); ?>/assetsv2/images/icon/logo-mini.png">
    <!-- Fontfaces CSS-->
    <link href="<?php echo base_url(); ?>/assetsv2/css/font-face.css" rel="stylesheet" media="all">
    <link href="<?php echo base_url(); ?>/assetsv2/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <link href="<?php echo base_url(); ?>/assetsv2/vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
    <link href="<?php echo base_url(); ?>/assetsv2/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">

    <!-- Bootstrap CSS-->
    <link href="<?php echo base_url(); ?>/assetsv2/vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">

    <!-- Vendor CSS-->
    <link href="<?php echo base_url(); ?>/assetsv2/vendor/animsition/animsition.min.css" rel="stylesheet" media="all">
    <link href="<?php echo base_url(); ?>/assetsv2/vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet" media="all">
    <link href="<?php echo base_url(); ?>/assetsv2/vendor/wow/animate.css" rel="stylesheet" media="all">
    <link href="<?php echo base_url(); ?>/assetsv2/vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all">
    <link href="<?php echo base_url(); ?>/assetsv2/vendor/slick/slick.css" rel="stylesheet" media="all">
    <link href="<?php echo base_url(); ?>/assetsv2/vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="<?php echo base_url(); ?>/assetsv2/vendor/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="<?php echo base_url(); ?>/assetsv2/css/theme.css" rel="stylesheet" media="all">
    <link href="<?php echo base_url(); ?>/assetsv2/css/style.css" rel="stylesheet" media="all">

    <link rel="stylesheet" href="<?php echo base_url(); ?>/assets/sweet-modal/jquery.sweet-modal.min.css"/>
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.13.2/css/jquery.dataTables.css">


   
<link  rel="stylesheet"  href="https://cdn.jsdelivr.net/npm/@fancyapps/ui@5.0/dist/fancybox/fancybox.css"
/>
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
#TaskURL .modal-dialog{position: relative;background-color: #fefefe;margin: auto;    margin-bottom: auto;margin-bottom: 50px;width: 100%;max-width: 930px;border: 3px solid #cb0a05;padding: 15px 0 0;-webkit-animation-name: animatetop;-webkit-animation-duration: .4s;animation-name: animatetop;animation-duration: .4s;}

#updateComment{display: none; position: fixed; z-index: 3; padding: 50px 15px; left: 0; top: 0; width: 100%; height: 100%; overflow: auto; background-color: #000; background-color: rgba(0,0,0,.4);	}
#updateComment .modal-dialog{position: relative;background-color: #fefefe;margin: auto;    margin-bottom: auto;margin-bottom: 50px;width: 100%;max-width: 930px;border: 3px solid #cb0a05;padding: 15px 0 0;-webkit-animation-name: animatetop;-webkit-animation-duration: .4s;animation-name: animatetop;animation-duration: .4s;}

#btnEditModal{display: none; position: fixed; z-index: 3; padding: 50px 15px; left: 0; top: 0; width: 100%; height: 100%; overflow: auto; background-color: #000; background-color: rgba(0,0,0,.4);	}
#btnEditModal .modal-dialog{position: relative;background-color: #fefefe;margin: auto; margin-bottom: auto;margin-bottom: 50px;width: 100%;max-width: 930px;-webkit-animation-name: animatetop;-webkit-animation-duration: .4s;animation-name: animatetop;animation-duration: .4s; border-radius: 15px; overflow: hidden}
.pe-auto{cursor: pointer !important; -webkit-transition: all .3s linear; transition: all .3s linear;}
.pe-auto:hover{opacity: .8;}

.content-custom{}
.content-custom p{margin: 0 !important; }
.content-custom *{font-family: inherit;}

.checkbox input[checked]: {
    background: red !important;
}

</style>

</head>

<body class="animsition">
    <div class="page-wrapper">
<!-- PAGE CONTAINER-->
