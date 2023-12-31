<?php
if (isset($_GET['ref'])) {
  include 'access/db.php';
  $ref = $_GET['ref'];

  $qrx = mysqli_query($db, "select * from users where referal_link='$ref' limit 1");
  $qrf = mysqli_fetch_assoc($qrx);
}

?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <title>Bolt Trades - Crypto Trading and Investments | Home 01</title>
    <!-- Stylesheets -->
    <link rel="preconnect" href="https://fonts.gstatic.com/" />
    <link
      href="https://fonts.googleapis.com/css2?family=Rubik:ital,wght@0,300;0,400;0,500;0,600;0,700;1,400;1,500;1,600;1,700&amp;family=Teko:wght@300;400;500;600;700&amp;display=swap"
      rel="stylesheet"
    />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/fontawesome-all.css" rel="stylesheet" />
    <link href="css/animate.css" rel="stylesheet" />
    <link href="css/hover.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/jarallax.css" />
    <link href="css/custom-animate.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/flaticon.css" />
    <link href="css/style.css" rel="stylesheet" />
    <!-- Responsive File -->
    <link href="css/responsive.css" rel="stylesheet" />

    <!-- Color css -->
    <link
      rel="stylesheet"
      id="jssDefault"
      href="css/colors/color-default.css"
    />

    <link
      rel="shortcut icon"
      href="images/favicon.png"
      id="fav-shortcut"
      type="image/x-icon"
    />
    <link
      rel="icon"
      href="images/favicon.png"
      id="fav-icon"
      type="image/x-icon"
    />

    <!-- Responsive Settings -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!--[if lt IE 9
      ]><script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.js"></script
    ><![endif]-->
    <!--[if lt IE 9]><script src="js/respond.js"></script><![endif]-->
    <style type="text/css">
    #loader_submit {
      display: none;
      position: fixed;
      top: 0;
      left: 0;
      right: 0;
      bottom: 0;
      width: 100%;
      background: rgba(0, 0, 0, 0.75) url(small.gif) no-repeat center center;
      z-index: 10000;
    }
  </style>
  </head>

  <body>
    <div class="page-wrapper">
      <!-- Preloader -->
      <div class="preloader">
        <div class="icon"></div>
      </div>

      <div id="loader_submit"></div>

      <section class="login-wrapper">
        <div
          class="login-bg"
          style="
            background-image: url(images/update-1-12-2020/background/login-bg.jpg);
          "
        ></div>
        <!-- /.login-bg -->
        <div class="login-content">
          <div class="login-content__inner">
            <div class="logo-box">
              <div class="logo text-center">
                <a
                  href="index.html"
                  title="Bolt Trades - Crypto Trading and Investments"
                  ><img
                    src="images/logo-dark.png"
                    width="134"
                    id="dLogo"
                    class="main-logo"
                    alt="Bolt Trades - Crypto Trading and Investments"
                    title="Bolt Trades - Crypto Trading and Investments"
                /></a>
              </div>
            </div>
            <form action="#" id="msform">
              <div class="row">
                <div class="col-md-12">
                  <input type="text" name="name" placeholder="First Name *" />
                </div>
                <!-- /.col-md-12 -->
                <div class="col-md-12">
                  <input type="text" name="lname" placeholder="Last Name *" />
                </div>
                <!-- /.col-md-12 -->
                <div class="col-md-12">
                  <input type="text" name="address" placeholder="Address *" />
                </div>
                <!-- /.col-md-12 -->
                <div class="col-md-12">
                  <input type="text" name="email" placeholder="Enter Email Address *" />
                </div>
                <!-- /.col-md-12 -->
                <div class="col-md-12">
                  <input type="password" name="password" placeholder="Your Password *" />
                </div>
                <!-- /.col-md-12 -->
                <div class="col-md-12">
                  <input type="password" name="cpassword" placeholder="Confirm Password *" />
                </div>

                <?php
              if (isset($_GET['ref'])) {
                if ($qrf) {
              ?>
                  <div class="col-md-12">
                    <label>Referal</label>
                    <input class="form-control" value="<?= $qrf['name'] ?>" placeholder="" name="" type="text">
                    <input type="hidden" value="<?= $qrf['id']; ?>" name="referal">
                  </div>
              <?php
                } else {
                  echo "<span class='text-danger font-weight-bold mb-5'>Referal Not found</span>";
                }
              }
              ?>
                <!-- /.col-md-12 -->
              </div>
              <!-- /.row -->
              <button type="submit" class="theme-btn btn-style-one">
                <i class="btn-curve"></i>
                <span class="btn-title">Register Now</span>
              </button>
              <p class="signup-link">
                Already have an Account? <a href="login.html">Login Here</a>
              </p>
            </form>
            <p class="copyright-text">© Copyright 2017 Bolt Trades</p>
            <!-- /.copyright-text -->
          </div>
          <!-- /.login-content__inner -->
        </div>
        <!-- /.login-content -->
      </section>
      <!-- /.login-wrapper -->
    </div>
    <!--End pagewrapper-->

    <a href="#" data-target="html" class="scroll-to-target scroll-to-top"
      ><i class="fa fa-angle-up"></i
    ></a>

    <script src="js/jquery.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/TweenMax.js"></script>
    <script src="js/wow.js"></script>
    <script src="js/isotope.js"></script>
    <script src="js/jquery.easing.min.js"></script>
    <script src="js/jarallax.min.js"></script>
    <script src="js/custom-script.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>

  <script type="text/javascript">
    $(document).on('submit', '#msform', function(e) {

      e.preventDefault();

      var url = "access/signup-auth.php?action=signup";
      var spinner = $('#loader_submit');
      spinner.show();

      var form = $(this);
      var data = form.serialize();
      $.ajax({
        url: url,
        type: 'POST',
        data: data,
        //dataType: 'json',
        success: function(response) {
          spinner.hide();
          console.log(response)
          var data = JSON.parse(response);

          if (data.status) {
            //$('#modal'+id).modal('hide')
           alert(data.message)
            location.assign('dashboard/index.php');
          } else {
            Swal.fire({
              position: 'top-end',
              type: 'error',
              title: data.message,
              showConfirmButton: false,
              timer: 3000
            });

          }
        },
        error: function(error) {
          spinner.hide();
          console.log(error)
          console.log(url)
          Swal.fire({
            position: 'top-end',
            type: 'error',
            title: data.message,
            showConfirmButton: false,
            timer: 1500
          });

        }
      })


    })
  </script>
  </body>
</html>
