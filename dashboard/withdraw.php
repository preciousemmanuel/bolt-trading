<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="Description" content="Digital assets trading and investments platform" />
  <meta name="Author" content="Bolt Trades Inc" />
  <meta name="Keywords"
    content="Mining, Trading, Investment " />

  <!-- Title -->
  <title>Withdraw - Bolt Trades</title>

  <!-- Bootstrap css -->
  <link id="style" href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" />

  <!-- Favicon -->
  <link rel="icon" href="assets/img/brand/favicon.png" type="image/x-icon" />

  <!-- Icons css -->
  <link href="assets/css/icons.css" rel="stylesheet" />

  <!--  Animations css -->
  <link href="assets/css/animate.css" rel="stylesheet" />

  <!-- style css-->
  <link href="assets/css/style.css" rel="stylesheet" />

  <!-- plugin css-->
  <link href="assets/css/plugins.css" rel="stylesheet" />
  <style>
    select option {
  /* background: white !important; */
  color: white !important;
}
</style>
</head>

<body class="ltr main-body app sidebar-mini light-mode">
  <!-- Loader -->
  <div id="global-loader" class="light-loader">
    <img src="assets/img/loaders/loader.svg" class="loader-img" alt="Loader" />
  </div>
  <!-- /Loader -->

  <!-- Page -->
  <div class="page">
  <?php require_once 'menu.php'; ?>

    <!-- main-content -->
    <div class="main-content app-content">
      <!-- container -->
      <div class="main-container container-fluid">
        <!-- breadcrumb -->
        <div class="breadcrumb-header justify-content-between">
          <div class="left-content">
            <h3 class="content-title mb-2">Welcome, <?= $user["name"] ?> !</h3>
            <div class="d-flex p-0">
              <i class="mdi mdi-home text-muted hover-cursor"></i>
              <p class="text-muted mb-0 hover-cursor">
                &nbsp;/&nbsp;Dashboard&nbsp;/&nbsp;
              </p>
              <p class="text-primary mb-0 hover-cursor">Withdraw</p>
            </div>
          </div>
        </div>
        <!-- /breadcrumb -->

        <!-- row  -->

        <!-- /row -->

        <!-- row -->

          <div class="col-lg-12 col-md-12">
            <div class="card" id="button7">
              <div class="card-body">
                <div class="main-content-label mg-b-5">
                  Withdraw
                </div>
                <p class="mg-b-20">Select The Account You Wish to Withdraw From</p>
                <div class="text-wrap">
                  <div class="example">
                    <div class="btn-list">
                      <a href="trading-withdrawal.php"  class="btn btn-primary btn-lg btn-block">Trading Withdrwal</a>
                      <a href="mining-withdrawal.php"  class="btn btn-success btn-lg btn-block">Mining Withdrawal</a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>


        <!-- /row  -->
      </div>
      <!-- /conatiner -->
    </div>
    <!-- /main-content -->

    <!-- Footer opened -->
    <div class="main-footer">
      <div class="container-fluid ht-100p">
        <span>Copyright © 2015 <a href="#">Bolt Trades</a> All rights
          reserved.</span>
      </div>
    </div>
    <!-- Footer closed -->
  </div>
  <!--end  Page -->

  <!-- Back-to-top -->
  <a href="#top" id="back-to-top"><i class="la la-chevron-up"></i></a>

  <!-- JQuery min js -->
  <script src="assets/plugins/jquery/jquery.min.js"></script>

  <!-- Bootstrap Bundle js -->
  <script src="assets/plugins/bootstrap/js/popper.min.js"></script>
  <script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>

  <!-- Datepicker js -->
  <script src="assets/plugins/jquery-ui/ui/widgets/datepicker.js"></script>

  <!-- Moment js -->
  <script src="assets/plugins/moment/moment.js"></script>

  <!--Chart bundle min js -->
  <script src="assets/plugins/chart.js/Chart.bundle.min.js"></script>
  <script src="assets/plugins/raphael/raphael.min.js"></script>
  <script src="assets/plugins/peity/jquery.peity.min.js"></script>

  <!-- JQuery sparkline js -->
  <script src="assets/plugins/jquery-sparkline/jquery.sparkline.min.js"></script>

  <!-- Sampledata js -->
  <script src="assets/js/chart.flot.sampledata.js"></script>

  <!-- Perfect-scrollbar js -->
  <script src="assets/plugins/perfect-scrollbar/perfect-scrollbar.min.js"></script>
  <script src="assets/plugins/perfect-scrollbar/p-scroll.js"></script>
  <script src="assets/plugins/perfect-scrollbar/p-scroll-1.js"></script>

  <!-- Internal  Flot js-->
  <script src="assets/plugins/jquery.flot/jquery.flot.js"></script>
  <script src="assets/plugins/jquery.flot/jquery.flot.pie.js"></script>
  <script src="assets/plugins/jquery.flot/jquery.flot.categories.js"></script>
  <script src="assets/plugins/jquery.flot/jquery.flot.resize.js"></script>
  <script src="assets/js/dashboard.sampledata.js"></script>
  <script src="assets/js/chart.flot.sampledata.js"></script>

  <!-- Owl Carousel js-->
  <script src="assets/plugins/owl-carousel/owl.carousel.js"></script>
  <script src="assets/js/owl-carousel.js"></script>

  <!-- Eva-icons js -->
  <script src="assets/js/eva-icons.min.js"></script>

  <!-- Sidemenu js -->
  <script src="assets/plugins/side-menu/sidemenu.js"></script>

  <!-- right-sidebar js -->
  <script src="assets/plugins/sidebar/sidebar.js"></script>
  <script src="assets/plugins/sidebar/sidebar-custom.js"></script>

  <!-- Internal Nice-select js-->
  <script src="assets/plugins/jquery-nice-select/js/jquery.nice-select.js"></script>
  <script src="assets/plugins/jquery-nice-select/js/nice-select.js"></script>

  <!-- Sticky js -->
  <script src="assets/js/sticky.js"></script>

  <!-- index js -->
  <script src="assets/js/dashboard.js"></script>

  <!-- Color Theme js -->
  <script src="assets/js/themeColors.js"></script>

  <!-- custom js -->
  <script src="assets/js/custom.js"></script>

  <!-- Custom-switcher js -->
  <script src="assets/js/custom-switcher.js"></script>
</body>

</html>
