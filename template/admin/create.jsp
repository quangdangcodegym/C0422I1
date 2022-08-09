﻿<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <title>Form Elements | Zircos - Responsive Bootstrap 4 Admin Dashboard</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="Responsive bootstrap 4 admin template" name="description">
        <meta content="Coderthemes" name="author">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <!-- App favicon -->
        <link rel="shortcut icon" href="assets\images\favicon.ico">

        <!-- App css -->
        <link href="assets\css\bootstrap.min.css" rel="stylesheet" type="text/css" id="bootstrap-stylesheet">
        <link href="assets\css\icons.min.css" rel="stylesheet" type="text/css">
        <link href="assets\css\app.min.css" rel="stylesheet" type="text/css" id="app-stylesheet">

    </head>

    <body data-layout="horizontal">

        <!-- Begin page -->
        <div id="wrapper">

            <!-- Navigation Bar-->
            <header id="topnav">
                    <!-- Topbar Start -->
                    <div class="navbar-custom">
                        <div class="container-fluid">
                            <ul class="list-unstyled topnav-menu float-right mb-0">
    
                                <li class="dropdown notification-list">
                                    <!-- Mobile menu toggle-->
                                    <a class="navbar-toggle nav-link">
                                        <div class="lines">
                                            <span></span>
                                            <span></span>
                                            <span></span>
                                        </div>
                                    </a>
                                    <!-- End mobile menu toggle-->
                                </li>
    
                                <li class="dropdown d-none d-lg-block">
                                    <a class="nav-link dropdown-toggle mr-0" data-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
                                        <img src="assets\images\flags\us.jpg" alt="user-image" class="mr-2" height="12"> <span class="align-middle">English <i class="mdi mdi-chevron-down"></i> </span>
                                    </a>
                                    <div class="dropdown-menu dropdown-menu-right">
                                        <!-- item-->
                                        <a href="javascript:void(0);" class="dropdown-item notify-item">
                                            <img src="assets\images\flags\germany.jpg" alt="user-image" class="mr-2" height="12"> <span class="align-middle">German</span>
                                        </a>
    
                                        <!-- item-->
                                        <a href="javascript:void(0);" class="dropdown-item notify-item">
                                            <img src="assets\images\flags\italy.jpg" alt="user-image" class="mr-2" height="12"> <span class="align-middle">Italian</span>
                                        </a>
    
                                        <!-- item-->
                                        <a href="javascript:void(0);" class="dropdown-item notify-item">
                                            <img src="assets\images\flags\spain.jpg" alt="user-image" class="mr-2" height="12"> <span class="align-middle">Spanish</span>
                                        </a>
    
                                        <!-- item-->
                                        <a href="javascript:void(0);" class="dropdown-item notify-item">
                                            <img src="assets\images\flags\russia.jpg" alt="user-image" class="mr-2" height="12"> <span class="align-middle">Russian</span>
                                        </a>
                                    </div>
                                </li>
    
                                <li class="dropdown notification-list">
                                    <a class="nav-link dropdown-toggle  waves-effect waves-light" data-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
                                        <i class="mdi mdi-bell noti-icon"></i>
                                        <span class="badge badge-success rounded-circle noti-icon-badge">4</span>
                                        <div class="noti-dot">
                                            <span class="dot"></span>
                                            <span class="pulse"></span>
                                        </div>
                                    </a>
                                    <div class="dropdown-menu dropdown-menu-right dropdown-lg">
    
                                        <!-- item-->
                                        <div class="dropdown-item noti-title">
                                            <h5 class="font-16 m-0">
                                                            <span class="float-right">
                                                                <a href="" class="text-dark">
                                                                    <small>Clear All</small>
                                                                </a>
                                                            </span>Notification
                                                        </h5>
                                        </div>
    
                                        <div class="slimscroll noti-scroll">
    
                                            <!-- item-->
                                            <a href="javascript:void(0);" class="dropdown-item notify-item">
                                                    <div class="notify-icon bg-success">
                                                        <i class="mdi mdi-settings-outline"></i>
                                                    </div>
                                                    <p class="notify-details">New settings
                                                        <small class="text-muted">There are new settings available</small>
                                                    </p>
                                                </a>
                        
                                                <!-- item-->
                                                <a href="javascript:void(0);" class="dropdown-item notify-item">
                                                    <div class="notify-icon bg-info">
                                                        <i class="mdi mdi-bell-outline"></i>
                                                    </div>
                                                    <p class="notify-details">Updates
                                                        <small class="text-muted">There are 2 new updates available</small>
                                                    </p>
                                                </a>
    
                                                <!-- item-->
                                                <a href="javascript:void(0);" class="dropdown-item notify-item">
                                                    <div class="notify-icon bg-danger">
                                                        <i class="mdi mdi-account-plus"></i>
                                                    </div>
                                                    <p class="notify-details">New user
                                                        <small class="text-muted">You have 10 unread messages</small>
                                                    </p>
                                                </a>
    
                                                <!-- item-->
                                                <a href="javascript:void(0);" class="dropdown-item notify-item">
                                                    <div class="notify-icon bg-info">
                                                        <i class="mdi mdi-comment-account-outline"></i>
                                                    </div>
                                                    <p class="notify-details">Caleb Flakelar commented on Admin
                                                        <small class="text-muted">4 days ago</small>
                                                    </p>
                                                </a>
    
                                                <!-- item-->
                                                <a href="javascript:void(0);" class="dropdown-item notify-item">
                                                    <div class="notify-icon bg-secondary">
                                                        <i class="mdi mdi-heart"></i>
                                                    </div>
                                                    <p class="notify-details">Carlos Crouch liked
                                                        <b>Admin</b>
                                                        <small class="text-muted">13 days ago</small>
                                                    </p>
                                                </a>
                                        </div>
    
                                        <!-- All-->
                                        <a href="javascript:void(0);" class="dropdown-item text-center text-primary notify-item notify-all">
                                                See all Notification
                                                <i class="fi-arrow-right"></i>
                                            </a>
    
                                    </div>
                                </li>
    
                                <li class="dropdown notification-list">
                                    <a class="nav-link dropdown-toggle  waves-effect waves-light" data-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
                                        <i class="mdi mdi-email noti-icon"></i>
                                        <span class="badge badge-danger rounded-circle noti-icon-badge">8</span>
                                    </a>
                                    <div class="dropdown-menu dropdown-menu-right dropdown-lg">
    
                                        <!-- item-->
                                        <div class="dropdown-item noti-title">
                                            <h5 class="font-16 m-0">
                                                            <span class="float-right">
                                                                <a href="" class="text-dark">
                                                                    <small>Clear All</small>
                                                                </a>
                                                            </span>Messages
                                                        </h5>
                                        </div>
    
                                        <div class="slimscroll noti-scroll">
    
                                                <div class="inbox-widget">
                                                        <a href="#">
                                                            <div class="inbox-item">
                                                                <div class="inbox-item-img"><img src="assets\images\users\avatar-1.jpg" class="rounded-circle" alt=""></div>
                                                                <p class="inbox-item-author">Chadengle</p>
                                                                <p class="inbox-item-text text-truncate">Hey! there I'm available...</p>
                                                            </div>
                                                        </a>
                                                        <a href="#">
                                                            <div class="inbox-item">
                                                                <div class="inbox-item-img"><img src="assets\images\users\avatar-2.jpg" class="rounded-circle" alt=""></div>
                                                                <p class="inbox-item-author">Tomaslau</p>
                                                                <p class="inbox-item-text text-truncate">I've finished it! See you so...</p>
                                                            </div>
                                                        </a>
                                                        <a href="#">
                                                            <div class="inbox-item">
                                                                <div class="inbox-item-img"><img src="assets\images\users\avatar-3.jpg" class="rounded-circle" alt=""></div>
                                                                <p class="inbox-item-author">Stillnotdavid</p>
                                                                <p class="inbox-item-text text-truncate">This theme is awesome!</p>
                                                            </div>
                                                        </a>
                                                        <a href="#">
                                                            <div class="inbox-item">
                                                                <div class="inbox-item-img"><img src="assets\images\users\avatar-4.jpg" class="rounded-circle" alt=""></div>
                                                                <p class="inbox-item-author">Kurafire</p>
                                                                <p class="inbox-item-text text-truncate">Nice to meet you</p>
                                                            </div>
                                                        </a>
                                                        <a href="#">
                                                            <div class="inbox-item">
                                                                <div class="inbox-item-img"><img src="assets\images\users\avatar-5.jpg" class="rounded-circle" alt=""></div>
                                                                <p class="inbox-item-author">Shahedk</p>
                                                                <p class="inbox-item-text text-truncate">Hey! there I'm available...</p>
        
                                                            </div>
                                                        </a>
                                                    </div> <!-- end inbox-widget -->
    
                                        </div>

                                          <!-- All-->
                                          <a href="javascript:void(0);" class="dropdown-item text-center text-primary notify-item notify-all">
                                                See all Messages
                                                <i class="fi-arrow-right"></i>
                                            </a>
    
                        
    
                                    </div>
                                </li>
    
                                <li class="dropdown notification-list">
                                    <a class="nav-link dropdown-toggle nav-user mr-0 waves-effect waves-light" data-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
                                        <img src="assets\images\users\avatar-1.jpg" alt="user-image" class="rounded-circle">
                                    </a>
                                    <div class="dropdown-menu dropdown-menu-right profile-dropdown ">
                                        <!-- item-->
                                        <div class="dropdown-header noti-title">
                                            <h6 class="text-overflow m-0">Welcome !</h6>
                                        </div>
    
                                        <!-- item-->
                                        <a href="javascript:void(0);" class="dropdown-item notify-item">
                                            <i class="mdi mdi-account-outline"></i>
                                            <span>Profile</span>
                                        </a>
    
                                        <!-- item-->
                                        <a href="javascript:void(0);" class="dropdown-item notify-item">
                                            <i class="mdi mdi-settings-outline"></i>
                                            <span>Settings</span>
                                        </a>
    
                                        <!-- item-->
                                        <a href="javascript:void(0);" class="dropdown-item notify-item">
                                            <i class="mdi mdi-lock-outline"></i>
                                            <span>Lock Screen</span>
                                        </a>
    
                                        <div class="dropdown-divider"></div>
    
                                        <!-- item-->
                                        <a href="javascript:void(0);" class="dropdown-item notify-item">
                                            <i class="mdi mdi-logout-variant"></i>
                                            <span>Logout</span>
                                        </a>
    
                                    </div>
                                </li>
    
                                <li class="dropdown notification-list">
                                    <a href="javascript:void(0);" class="nav-link right-bar-toggle waves-effect waves-light">
                                        <i class="mdi mdi-settings-outline noti-icon"></i>
                                    </a>
                                </li>
    
                            </ul>
    
                            <!-- LOGO -->
                            <div class="logo-box">
                                <a href="index.html" class="logo text-center">
                                    <span class="logo-lg">
                                        <img src="assets\images\logo.png" alt="" height="30">
                                        <!-- <span class="logo-lg-text-light">Zircos</span> -->
                                    </span>
                                    <span class="logo-sm">
                                        <!-- <span class="logo-sm-text-dark">Z</span> -->
                                        <img src="assets\images\logo-sm.png" alt="" height="22">
                                    </span>
                                </a>
                            </div>
                
    
                            <ul class="list-unstyled topnav-menu topnav-menu-left m-0">
    
                                <li class="d-none d-sm-block">
                                    <form class="app-search">
                                        <div class="app-search-box">
                                            <div class="input-group">
                                                <input type="text" class="form-control" placeholder="Search...">
                                                <div class="input-group-append">
                                                    <button class="btn" type="submit">
                                                        <i class="fas fa-search"></i>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </li>
                            </ul>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                    <!-- end Topbar -->
    
                    <div class="topbar-menu">
                        <div class="container-fluid">
                            <div id="navigation">
                                <!-- Navigation Menu-->
                                <ul class="navigation-menu">
    
                                    <li class="has-submenu">
                                        <a href="#"> <i class="mdi mdi-view-dashboard"></i>Dashboard</a>
                                        <ul class="submenu">
                                            <li><a href="index.html">Dashboard 1</a></li>
                                            <li><a href="dashboard_2.html">Dashboard 2</a></li>
                                        </ul>
                                    </li>
    
                                    <li class="has-submenu">
                                        <a href="#">
                                            <i class="mdi mdi-layers"></i>UI Kit
                                        </a>
                                        <ul class="submenu megamenu">
                                            <li>
                                                <ul>
                                                    <li>
                                                        <span>Components</span>
                                                    </li>
                                                    <li><a href="ui-buttons.html">Buttons</a></li>
                                                    <li><a href="ui-typography.html">Typography</a></li>
                                                    <li><a href="ui-card.html">Card</a></li>
                                                    <li><a href="ui-portlets.html">Portlets</a></li>
                                                    <li><a href="ui-modals.html">Modals</a></li>
                                                    <li><a href="ui-checkbox-radio.html">Checkboxs-Radios</a></li>
                                                    <li><a href="ui-tabs.html">Tabs</a></li>
                                                    <li><a href="ui-progressbars.html">Progress Bars</a></li>
                                                </ul>
                                            </li>
    
                                            <li>
                                                <ul>
                                                    <li>
                                                        <span>Components</span>
                                                    </li>
                                                    <li><a href="ui-notifications.html">Notification</a></li>
                                                    <li><a href="ui-alerts.html">Alerts</a></li>
                                                    <li><a href="ui-carousel.html">Carousel</a></li>
                                                    <li><a href="ui-video.html">Video</a></li>
                                                    <li><a href="ui-tooltips-popovers.html">Tooltips &amp; Popovers</a></li>
                                                    <li><a href="ui-images.html">Images</a></li>
                                                    <li><a href="ui-bootstrap.html">Bootstrap UI</a></li>
                                                    <li><a href="ui-grid.html">Grid</a></li>
                                                </ul>
                                            </li>
    
                                            <li>
                                                <ul>
                                                    <li>
                                                        <span>Admin UI</span>
                                                    </li>
                                                    <li><a href="admin-sweet-alert2.html">Sweet Alert 2</a></li>
                                                    <li><a href="admin-widgets.html">Widgets</a></li>
                                                    <li><a href="admin-nestable.html">Nestable List</a></li>
                                                    <li><a href="admin-rangeslider.html">Range Slider</a></li>
                                                    <li><a href="admin-ratings.html">Ratings</a></li>
                                                    <li><a href="admin-animation.html">Animation</a></li>
                                                    <li><a href="calendar.html">Calendar</a></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
    
                                    <li class="has-submenu">
                                        <a href="#">
                                            <i class="mdi mdi-diamond-stone"></i>Components
                                        </a>
                                        <ul class="submenu">
                                            <li class="has-submenu">
                                                <a href="#">Forms <div class="arrow-down"></div></a>
                                                <ul class="submenu">
                                                    <li><a href="form-elements.html">Form Elements</a></li>
                                                    <li><a href="form-advanced.html">Form Advanced</a></li>
                                                    <li><a href="form-validation.html">Form Validation</a></li>
                                                    <li><a href="form-pickers.html">Form Pickers</a></li>
                                                    <li><a href="form-wizard.html">Form Wizard</a></li>
                                                    <li><a href="form-mask.html">Form Masks</a></li>
                                                    <li><a href="form-summernote.html">Summernote</a></li>
                                                    <li><a href="form-quilljs.html">Quilljs Editor</a></li>
                                                    <li><a href="form-uploads.html">Multiple File Upload</a></li>
                                                </ul>
                                            </li>
                                            <li class="has-submenu">
                                                <a href="#">Charts <div class="arrow-down"></div></a>
                                                <ul class="submenu">
                                                    <li><a href="chart-flot.html">Flot Charts</a></li>
                                                    <li><a href="chart-morris.html">Morris Charts</a></li>
                                                    <li><a href="chart-google.html">Google Charts</a></li>
                                                    <li><a href="chart-chartist.html">Chartist Charts</a></li>
                                                    <li><a href="chart-chartjs.html">Chartjs Charts</a></li>
                                                    <li><a href="chart-c3.html">C3 Charts</a></li>
                                                    <li><a href="chart-sparkline.html">Sparkline Charts</a></li>
                                                    <li><a href="chart-knob.html">Jquery Knob</a></li>
                                                </ul>
                                            </li>
    
                                            <li class="has-submenu">
                                                <a href="#">Email <div class="arrow-down"></div></a>
                                                <ul class="submenu">
                                                    <li><a href="email-inbox.html"> Inbox</a></li>
                                                    <li><a href="email-read.html"> Read Mail</a></li>
                                                    <li><a href="email-compose.html"> Compose Mail</a></li>
                                                </ul>
                                            </li>
    
                                            <li class="has-submenu">
                                                <a href="#">Icons <div class="arrow-down"></div></a>
                                                <ul class="submenu">
                                                    <li><a href="icons-colored.html">Colored Icons</a></li>
                                                    <li><a href="icons-materialdesign.html">Material Design</a></li>
                                                    <li><a href="icons-ionicons.html">Ion Icons</a></li>
                                                    <li><a href="icons-fontawesome.html">Font awesome</a></li>
                                                    <li><a href="icons-themifyicon.html">Themify Icons</a></li>
                                                    <li><a href="icons-typicons.html">Typicons</a></li>
                                                </ul>
                                            </li>
    
                                            <li class="has-submenu">
                                                <a href="#">Tables <div class="arrow-down"></div></a>
                                                <ul class="submenu">
                                                    <li><a href="tables-basic.html">Basic Tables</a></li>
                                                    <li><a href="tables-layouts.html">Tables Layouts</a></li>
                                                    <li><a href="tables-datatable.html">Data Table</a></li>
                                                    <li><a href="tables-responsive.html">Responsive Table</a></li>
                                                    <li><a href="tables-tablesaw.html">Tablesaw Table</a></li>
                                                    <li><a href="tables-editable.html">Editable Table</a></li>
                                                </ul>
                                            </li>
    
                                            <li class="has-submenu">
                                                <a href="#">Maps <div class="arrow-down"></div></a>
                                                <ul class="submenu">
                                                    <li><a href="maps-google.html">Google Maps</a></li>
                                                    <li><a href="maps-vector.html">Vector Maps</a></li>
                                                    <li><a href="maps-mapael.html">Mapael Maps</a></li>
                                                </ul>
                                            </li>
    
                                        </ul>
                                    </li>
    
                                    <li class="has-submenu">
                                        <a href="#">
                                            <i class="mdi mdi-google-pages"></i>Pages
                                        </a>
                                        <ul class="submenu megamenu">
                                            <li>
                                                <ul>
                                                    <li><a href="page-starter.html">Starter Page</a></li>
                                                    <li><a href="page-login.html">Login</a></li>
                                                    <li><a href="page-register.html">Register</a></li>
                                                    <li><a href="page-logout.html">Logout</a></li>
                                                    <li><a href="page-recoverpw.html">Recover Password</a></li>
                                                </ul>
                                            </li>
    
                                            <li>
                                                <ul>
                                                    <li><a href="page-lock-screen.html">Lock Screen</a></li>
                                                    <li><a href="page-confirm-mail.html">Confirm Mail</a></li>
                                                    <li><a href="page-404.html">Error 404</a></li>
                                                    <li><a href="page-404-alt.html">Error 404-alt</a></li>
                                                    <li><a href="page-500.html">Error 500</a></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
    
                                    <li class="has-submenu">
                                        <a href="#">
                                            <i class="mdi mdi-book-multiple"></i>Extras
                                        </a>
                                        <ul class="submenu megamenu">
                                            <li>
                                                <ul>
                                                    <li><a href="extras-profile.html">Profile</a></li>
                                                    <li><a href="extras-sitemap.html">Sitemap</a></li>
                                                    <li><a href="extras-about.html">About Us</a></li>
                                                    <li><a href="extras-contact.html">Contact</a></li>
                                                    <li><a href="extras-members.html">Members</a></li>
                                                    <li><a href="extras-timeline.html">Timeline</a></li>
                                                    <li><a href="extras-invoice.html">Invoice</a></li>
                                                </ul>
                                            </li>
    
                                            <li>
                                                <ul>
                                                    <li><a href="extras-search-result.html">Search Result</a></li>
                                                    <li><a href="extras-emailtemplate.html">Email Template</a></li>
                                                    <li><a href="extras-maintenance.html">Maintenance</a></li>
                                                    <li><a href="extras-coming-soon.html">Coming Soon</a></li>
                                                    <li><a href="extras-faq.html">FAQ</a></li>
                                                    <li><a href="extras-gallery.html">Gallery</a></li>
                                                    <li><a href="extras-pricing.html">Pricing</a></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
    
                                    <li class="has-submenu">
                                        <a href="#"> <i class="mdi mdi-comment-text"></i>Blog
                                        </a>
                                        <ul class="submenu">
                                            <li><a href="blogs-dashboard.html">Dashboard</a></li>
                                            <li><a href="blogs-blog-list.html">Blog List</a></li>
                                            <li><a href="blogs-blog-column.html">Blog Column</a></li>
                                            <li><a href="blogs-blog-post.html">Blog Post</a></li>
                                            <li><a href="blogs-blog-add.html">Add Blog</a></li>
                                        </ul>
                                    </li>
    
                                    <li class="has-submenu">
                                        <a href="#"> <i class="mdi mdi-home-map-marker"></i>Real Estate
                                        </a>
                                        <ul class="submenu">
                                            <li><a href="real-estate-dashboard.html">Dashboard</a></li>
                                            <li><a href="real-estate-list.html">Property List</a></li>
                                            <li><a href="real-estate-column.html">Property Column</a></li>
                                            <li><a href="real-estate-detail.html">Property Detail</a></li>
                                            <li><a href="real-estate-agents.html">Agents</a></li>
                                            <li><a href="real-estate-profile.html">Agent Details</a></li>
                                            <li><a href="real-estate-add.html">Add Property</a></li>
                                        </ul>
                                    </li>

                                    <li class="has-submenu">
                                        <a href="#"> <i class="mdi mdi-flip-horizontal"></i>Layouts
                                        </a>
                                        <ul class="submenu">
                                            <li><a href="layouts-vertical.html">Vertical</a></li>
                                            <li><a href="layouts-topbar-light.html">Topbar Light</a></li>
                                            <li><a href="layouts-center-menu.html">Center Menu</a></li>
                                            <li><a href="layouts-normal-header.html">Unsticky Header</a></li>
                                        </ul>
                                    </li>
    
                                </ul>
                                <!-- End navigation menu -->
    
                                <div class="clearfix"></div>
                            </div>
                            <!-- end #navigation -->
                        </div>
                        <!-- end container -->
                    </div>
                    <!-- end navbar-custom -->
                </header>
                <!-- End Navigation Bar-->

            <!-- ============================================================== -->
            <!-- Start Page Content here -->
            <!-- ============================================================== -->

            <div class="content-page">
                <div class="content">

                    <!-- Start Content-->
                    <div class="container-fluid">

                        <!-- start page title -->
                        <div class="row">
                            <div class="col-12">
                                <div class="page-title-box">
                                    <div class="page-title-right">
                                        <ol class="breadcrumb m-0">
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">Zircos</a></li>
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">Forms</a></li>
                                            <li class="breadcrumb-item active">Form elements</li>
                                        </ol>
                                    </div>
                                    <h4 class="page-title">Form elements</h4>
                                </div>
                            </div>
                        </div>
                        <!-- end page title -->

                        <div class="row">
                            <div class="col-sm-12">
                                <div class="card-box">
                                    <h4 class="header-title">Input Types</h4>
                                    <p class="sub-header">
                                        Most common form control, text-based input fields. Includes support for all HTML5 types: <code>text</code>, <code>password</code>, <code>datetime</code>, <code>datetime-local</code>, <code>date</code>, <code>month</code>, <code>time</code>, <code>week</code>, <code>number</code>, <code>email</code>, <code>url</code>, <code>search</code>, <code>tel</code>, and <code>color</code>.
                                    </p>
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <form class="form-horizontal">
                                                <div class="form-group row">
                                                    <label class="col-md-2 control-label">Text</label>
                                                    <div class="col-md-10">
                                                        <input type="text" class="form-control" value="Some text value...">
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <label class="col-md-2 control-label" for="example-email">Email</label>
                                                    <div class="col-md-10">
                                                        <input type="email" id="example-email" name="example-email" class="form-control" placeholder="Email">
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <label class="col-md-2 control-label">Password</label>
                                                    <div class="col-md-10">
                                                        <input type="password" class="form-control" value="password">
                                                    </div>
                                                </div>

                                                <div class="form-group row">
                                                    <label class="col-md-2 control-label">Placeholder</label>
                                                    <div class="col-md-10">
                                                        <input type="text" class="form-control" placeholder="placeholder">
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <label class="col-md-2 control-label">Text area</label>
                                                    <div class="col-md-10">
                                                        <textarea class="form-control" rows="5"></textarea>
                                                    </div>
                                                </div>

                                            </form>
                                        </div>

                                        <div class="col-lg-6">
                                            <form class="form-horizontal">

                                                <div class="form-group row">
                                                    <label class="col-md-2 control-label">Readonly</label>
                                                    <div class="col-md-10">
                                                        <input type="text" class="form-control" readonly="" value="Readonly value">
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <label class="col-md-2 control-label">Disabled</label>
                                                    <div class="col-md-10">
                                                        <input type="text" class="form-control" disabled="" value="Disabled value">
                                                    </div>
                                                </div>

                                                <div class="form-group row">
                                                    <label class="col-sm-2 control-label">Static control</label>
                                                    <div class="col-sm-10">
                                                        <p class="form-control-static">email@example.com</p>
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <label class="col-sm-2 control-label">Helping text</label>
                                                    <div class="col-sm-10">
                                                        <input type="text" class="form-control" placeholder="Helping text">
                                                        <span class="help-block"><small>A block of help text that breaks onto a new line and may extend beyond one line.</small></span>
                                                    </div>
                                                </div>

                                                <div class="form-group row">
                                                    <label class="col-sm-2 control-label">Input Select</label>
                                                    <div class="col-sm-10">
                                                        <select class="form-control">
                                                            <option>1</option>
                                                            <option>2</option>
                                                            <option>3</option>
                                                            <option>4</option>
                                                            <option>5</option>
                                                        </select>
                                                        <h5 class="font-13">Multiple select</h5>
                                                        <select multiple="" class="form-control">
                                                            <option>1</option>
                                                            <option>2</option>
                                                            <option>3</option>
                                                            <option>4</option>
                                                            <option>5</option>
                                                        </select>
                                                    </div>
                                                </div>

                                            </form>
                                        </div>

                                    </div>

                                    <div class="row">

                                        <div class="col-lg-6 mt-4">
                                            <h4 class="header-title">Input Sizes</h4>
                                            <p class="sub-header">
                                                Set heights using classes like <code>.input-lg</code>, and set widths using grid column classes like <code>.col-lg-*</code>.
                                            </p>

                                            <form class="form-horizontal">
                                                <div class="form-group row">
                                                    <label class="col-sm-3 control-label" for="example-input-small">Small</label>
                                                    <div class="col-sm-9">
                                                        <input type="text" id="example-input-small" name="example-input-small" class="form-control input-sm" placeholder=".input-sm">
                                                    </div>
                                                </div>

                                                <div class="form-group row">
                                                    <label class="col-sm-3 control-label" for="example-input-normal">Normal</label>
                                                    <div class="col-sm-9">
                                                        <input type="text" id="example-input-normal" name="example-input-normal" class="form-control" placeholder="Normal">
                                                    </div>
                                                </div>

                                                <div class="form-group row">
                                                    <label class="col-sm-3 control-label" for="example-input-large">Large</label>
                                                    <div class="col-sm-9">
                                                        <input type="text" id="example-input-large" name="example-input-large" class="form-control input-lg" placeholder=".input-lg">
                                                    </div>
                                                </div>

                                                <div class="form-group row">
                                                    <label class="col-sm-3 control-label">Grid Sizes</label>
                                                    <div class="col-sm-4">
                                                        <input type="text" class="form-control" placeholder=".col-sm-4">
                                                    </div>
                                                </div>

                                                <div class="form-group row">
                                                    <div class="col-sm-5 offset-sm-3">
                                                        <input type="text" class="form-control" placeholder=".col-sm-5">
                                                    </div>
                                                </div>

                                                <div class="form-group row">
                                                    <div class="col-sm-6 offset-sm-3">
                                                        <input type="text" class="form-control" placeholder=".col-sm-6">
                                                    </div>
                                                </div>

                                                <div class="form-group row">
                                                    <div class="col-sm-9 offset-sm-3">
                                                        <input type="text" class="form-control" placeholder=".col-sm-9">
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                        <!-- end col -->
                                    </div>
                                    <!-- end row -->

                                    <h4 class="mt-4 header-title">Input groups</h4>
                                    <p class="sub-header">
                                        Extend form controls by adding text or buttons before, after, or on both sides of any text-based <code>&lt;input&gt;</code>. Use <code>.input-group</code> with an <code>.input-group-addon</code> or <code>.input-group-btn</code> to prepend or append elements to a single <code>.form-control</code>.
                                    </p>

                                    <div class="row">
                                        <div class="col-lg-4">

                                            <form>
                                                <div class="form-group">
                                                    <label class="control-label" for="example-input1-group1">Static</label>
                                                    <div class="input-group">
                                                        <div class="input-group-prepend">
                                                            <span class="input-group-text"><i class="fa fa-user"></i></span>
                                                        </div>
                                                        <input type="text" id="example-input1-group1" name="example-input1-group1" class="form-control" placeholder="Username">
                                                    </div>

                                                    <div class="input-group mt-3">
                                                        <input type="email" id="example-input2-group1" name="example-input2-group1" class="form-control" placeholder="Email">
                                                        <div class="input-group-append">
                                                            <span class="input-group-text"><i class="far fa-envelope"></i></span>
                                                        </div>
                                                    </div>
                                                    <div class="input-group mt-3">
                                                        <div class="input-group-prepend">
                                                            <span class="input-group-text"><i class="fas fa-dollar-sign"></i></span>
                                                        </div>
                                                        <input type="text" id="example-input3-group1" name="example-input3-group1" class="form-control" placeholder="..">
                                                        <div class="input-group-append">
                                                            <span class="input-group-text">.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- form-group -->

                                            </form>

                                        </div>

                                        <div class="col-lg-4">
                                            <form>
                                                <div class="form-group">
                                                    <label class="control-label" for="example-input1-group2">Buttons</label>
                                                    <div class="input-group">
                                                        <span class="input-group-prepend">
                                                                <button type="button" class="btn waves-effect waves-light btn-primary"><i class="fas fa-search"></i></button>
                                                            </span>
                                                        <input type="text" id="example-input1-group2" name="example-input1-group2" class="form-control" placeholder="Search">
                                                    </div>
                                                    <div class="input-group mt-3">
                                                        <input type="email" id="example-input2-group2" name="example-input2-group2" class="form-control" placeholder="Email">
                                                        <span class="input-group-append">
                                                                <button type="button" class="btn waves-effect waves-light btn-primary">Submit</button>
                                                            </span>
                                                    </div>
                                                    <div class="input-group mt-3">
                                                        <span class="input-group-prepend">
                                                                <button type="button" class="btn waves-effect waves-light btn-primary"><i class="fab fa-facebook-f"></i></button>
                                                            </span>
                                                        <input type="text" id="example-input3-group2" name="example-input3-group2" class="form-control" placeholder="Search">
                                                        <span class="input-group-append">
                                                                <button type="button" class="btn waves-effect waves-light btn-primary"><i class="fab fa-twitter"></i></button>
                                                            </span>
                                                    </div>
                                                </div>
                                                <!-- form-group -->

                                            </form>

                                        </div>

                                        <div class="col-lg-4">
                                            <form>
                                                <div class="form-group">
                                                    <label class="control-label" for="example-input1-group3">Dropdowns</label>
                                                    <div class="input-group">
                                                        <div class="input-group-prepend">
                                                            <button class="btn waves-effect waves-light btn-primary dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Action <i class="mdi mdi-chevron-down"></i></button>
                                                            <ul class="dropdown-menu">
                                                                <li><a href="javascript:void(0)" class="dropdown-item">Action</a></li>
                                                                <li><a href="javascript:void(0)" class="dropdown-item">Another action</a></li>
                                                                <li class="dropdown-divider"></li>
                                                                <li><a href="javascript:void(0)" class="dropdown-item">Separated link</a></li>
                                                            </ul>
                                                        </div>
                                                        <input type="text" id="example-input1-group3" name="example-input1-group3" class="form-control" placeholder="Username">
                                                    </div>
                                                    <div class="input-group mt-3">
                                                        <input type="email" id="example-input2-group3" name="example-input2-group3" class="form-control" placeholder="Email">
                                                        <div class="input-group-append">
                                                            <button class="btn waves-effect waves-light btn-primary dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Action <i class="mdi mdi-chevron-down"></i></button>
                                                            <ul class="dropdown-menu dropdown-menu-right">
                                                                <li><a href="javascript:void(0)" class="dropdown-item">Action</a></li>
                                                                <li><a href="javascript:void(0)" class="dropdown-item">Another action</a></li>
                                                                <li class="dropdown-divider"></li>
                                                                <li><a href="javascript:void(0)" class="dropdown-item">Separated link</a></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <div class="input-group mt-3">
                                                        <div class="input-group-prepend">
                                                            <button type="button" class="btn waves-effect waves-light btn-primary" style="overflow: hidden; position: relative;">Action </button>
                                                            <button type="button" class="btn waves-effect waves-light btn-primary dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                <span class="sr-only">Toggle Dropdown</span>
                                                                <i class="mdi mdi-chevron-down"></i>
                                                            </button>
                                                            <ul class="dropdown-menu">
                                                                <li><a href="javascript:void(0)" class="dropdown-item">Action</a></li>
                                                                <li><a href="javascript:void(0)" class="dropdown-item">Another action</a></li>
                                                                <li class="dropdown-divider"></li>
                                                                <li><a href="javascript:void(0)" class="dropdown-item">Separated link</a></li>
                                                            </ul>
                                                        </div>
                                                        <input type="text" id="example-input3-group3" name="example-input3-group3" class="form-control" placeholder="..">
                                                        <div class="input-group-append">
                                                            <button class="btn waves-effect waves-light btn-primary dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="mdi mdi-chevron-down"></i></button>
                                                            <ul class="dropdown-menu dropdown-menu-right">
                                                                <li><a href="javascript:void(0)" class="dropdown-item">Action</a></li>
                                                                <li><a href="javascript:void(0)" class="dropdown-item">Another action</a></li>
                                                                <li class="dropdown-divider"></li>
                                                                <li><a href="javascript:void(0)" class="dropdown-item">Separated link</a></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- form-group -->

                                            </form>
                                        </div>
                                    </div>
                                    <!-- end row -->

                                    <div class="row">
                                        <div class="col-lg-6 mt-4">
                                            <h4 class="header-title">Basic example</h4>
                                            <p class="sub-header">
                                                Individual form controls automatically receive some global styling. All textual <code>&lt;input&gt;</code>,
                                                <code>&lt;textarea&gt;</code>, and <code>&lt;select&gt;</code> elements with <code>.form-control</code> are set to
                                                <code>width: 100%;</code> by default. Wrap labels and controls in <code>.form-group</code> for optimum spacing.
                                            </p>

                                            <form>
                                                <div class="form-group">
                                                    <label for="exampleInputEmail1">Email address</label>
                                                    <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email">
                                                </div>
                                                <div class="form-group">
                                                    <label for="exampleInputPassword1">Password</label>
                                                    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                                                </div>
                                                <div class="form-group">
                                                    <div class="checkbox checkbox-primary">
                                                        <input id="checkbox1" type="checkbox">
                                                        <label for="checkbox1">
                                                            Remember me
                                                        </label>
                                                    </div>
                                                </div>
                                                <button type="submit" class="btn btn-purple waves-effect waves-light">Submit</button>
                                            </form>
                                        </div>

                                        <div class="col-lg-6 mt-4">
                                            <h4 class="header-title">Horizontal form</h4>
                                            <p class="sub-header">
                                                Use Bootstrap's predefined grid classes to align labels and groups of form controls in a horizontal layout by adding
                                                <code>.form-horizontal</code> to the form (which doesn't have to be a <code>&lt;form&gt;</code>). Doing so changes
                                                <code>.form-group</code>s to behave as grid rows, so no need for <code>.row</code>.
                                            </p>

                                            <form class="form-horizontal">
                                                <div class="form-group row">
                                                    <label for="inputEmail3" class="col-sm-3 control-label">Email</label>
                                                    <div class="col-sm-9">
                                                        <input type="email" class="form-control" id="inputEmail3" placeholder="Email">
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <label for="inputPassword3" class="col-sm-3 control-label">Password</label>
                                                    <div class="col-sm-9">
                                                        <input type="password" class="form-control" id="inputPassword3" placeholder="Password">
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <label for="inputPassword4" class="col-sm-3 control-label">Re Password</label>
                                                    <div class="col-sm-9">
                                                        <input type="password" class="form-control" id="inputPassword4" placeholder="Retype Password">
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <div class="offset-sm-3 col-sm-9">
                                                        <div class="checkbox checkbox-primary">
                                                            <input id="checkbox2" type="checkbox">
                                                            <label for="checkbox2">
                                                                Check me out !
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group mb-0">
                                                    <div class="offset-sm-3 col-sm-9">
                                                        <button type="submit" class="btn btn-info waves-effect waves-light">Sign in</button>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>

                                    <!-- end row -->

                                    <!-- Inline Form -->
                                    <h4 class="mt-4 header-title">Inline Form</h4>
                                    <p class="sub-header">
                                        Add <code>.form-inline</code> to your form (which doesn't have to be a <code>&lt;form&gt;</code>) for left-aligned and inline-block controls. <strong>This only applies to forms within viewports
                                            that are at least 768px wide.</strong>
                                    </p>
                                    <div class="row mb-4">
                                        <div class="col-sm-12">
                                            <h5>Style 1</h5>

                                            <form class="form-inline">
                                                <div class="form-group">
                                                    <label class="sr-only" for="exampleInputEmail21">Email address</label>
                                                    <input type="email" class="form-control" id="exampleInputEmail21" placeholder="Enter email">
                                                </div>

                                                <div class="form-group ml-2">
                                                    <label class="sr-only" for="exampleInputPassword2">Password</label>
                                                    <input type="password" class="form-control" id="exampleInputPassword2" placeholder="Password">
                                                </div>
                                                <div class="form-group ml-2">
                                                    <div class="checkbox checkbox-primary pl-3">
                                                        <input id="checkbox3" type="checkbox">
                                                        <label for="checkbox3">
                                                            Remember me
                                                        </label>
                                                    </div>
                                                </div>
                                                <button type="submit" class="btn btn-success waves-effect waves-light ml-2 btn-md">Sign in</button>
                                            </form>
                                        </div>

                                    </div>

                                    <div class="row">

                                        <div class="col-sm-12">
                                            <h5>Style 2</h5>

                                            <form class="form-inline">
                                                <div class="form-group mr-3">
                                                    <label for="exampleInputName2" class="mr-1">Name</label>
                                                    <input type="text" class="form-control" id="exampleInputName2" placeholder="Jane Doe">
                                                </div>
                                                <div class="form-group mr-3">
                                                    <label for="exampleInputEmail2" class="mr-1">Email</label>
                                                    <input type="email" class="form-control" id="exampleInputEmail2" placeholder="jane.doe@example.com">
                                                </div>
                                                <button type="submit" class="btn btn-primary waves-effect waves-light btn-md">
                                                    Send invitation
                                                </button>
                                            </form>
                                        </div>

                                    </div>
                                    <!-- end row -->

                                </div>
                            </div>
                        </div>
                        <!-- end row -->

                    </div>
                    <!-- end container-fluid -->

                </div>
                <!-- end content -->

                

                <!-- Footer Start -->
                <footer class="footer">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-12">
                                2018 - 2020 &copy; Zircos theme by <a href="">Coderthemes</a>
                            </div>
                        </div>
                    </div>
                </footer>
                <!-- end Footer -->

            </div>

            <!-- ============================================================== -->
            <!-- End Page content -->
            <!-- ============================================================== -->

        </div>
        <!-- END wrapper -->

        <!-- Right Sidebar -->
        <div class="right-bar">
            <div class="rightbar-title">
                <a href="javascript:void(0);" class="right-bar-toggle float-right">
                    <i class="mdi mdi-close"></i>
                </a>
                <h4 class="font-16 m-0 text-white">Theme Customizer</h4>
            </div>
            <div class="slimscroll-menu">
        
                <div class="p-4">
                    <div class="alert alert-warning" role="alert">
                        <strong>Customize </strong> the overall color scheme, layout, etc.
                    </div>
                    <div class="mb-2">
                        <img src="assets\images\layouts\light.png" class="img-fluid img-thumbnail" alt="">
                    </div>
                    <div class="custom-control custom-switch mb-3">
                        <input type="checkbox" class="custom-control-input theme-choice" id="light-mode-switch" checked="">
                        <label class="custom-control-label" for="light-mode-switch">Light Mode</label>
                    </div>
            
                    <div class="mb-2">
                        <img src="assets\images\layouts\dark.png" class="img-fluid img-thumbnail" alt="">
                    </div>
                    <div class="custom-control custom-switch mb-3">
                        <input type="checkbox" class="custom-control-input theme-choice" id="dark-mode-switch" data-bsstyle="assets/css/bootstrap-dark.min.css" data-appstyle="assets/css/app-dark.min.css">
                        <label class="custom-control-label" for="dark-mode-switch">Dark Mode</label>
                    </div>
            
                    <div class="mb-2">
                        <img src="assets\images\layouts\rtl.png" class="img-fluid img-thumbnail" alt="">
                    </div>
                    <div class="custom-control custom-switch mb-3">
                        <input type="checkbox" class="custom-control-input theme-choice" id="rtl-mode-switch" data-appstyle="assets/css/app-rtl.min.css">
                        <label class="custom-control-label" for="rtl-mode-switch">RTL Mode</label>
                    </div>

                    <div class="mb-2">
                        <img src="assets\images\layouts\dark-rtl.png" class="img-fluid img-thumbnail" alt="">
                    </div>
                    <div class="custom-control custom-switch mb-5">
                        <input type="checkbox" class="custom-control-input theme-choice" id="dark-rtl-mode-switch" data-bsstyle="assets/css/bootstrap-dark.min.css" data-appstyle="assets/css/app-dark-rtl.min.css">
                        <label class="custom-control-label" for="dark-rtl-mode-switch">Dark RTL Mode</label>
                    </div>

                    <a href="https://1.envato.market/eKY0g" class="btn btn-danger btn-block mt-3" target="_blank"><i class="mdi mdi-download mr-1"></i> Download Now</a>
                </div>
            </div> <!-- end slimscroll-menu-->
        </div>
        <!-- /Right-bar -->

        <!-- Right bar overlay-->
        <div class="rightbar-overlay"></div>

        <a href="javascript:void(0);" class="right-bar-toggle demos-show-btn">
            <i class="mdi mdi-settings-outline mdi-spin"></i> &nbsp;Choose Demos
        </a>

        <!-- Vendor js -->
        <script src="assets\js\vendor.min.js"></script>

        <!-- App js -->
        <script src="assets\js\app.min.js"></script>

    </body>

</html>