<?php
session_start();
include('includes/config.php');
error_reporting(0);

?>

<!DOCTYPE HTML>
<html lang="en">

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width,initial-scale=1">
  <meta name="keywords" content="">
  <meta name="description" content="">
  <title>Online Dairy | Homepage</title>
  <!--Bootstrap -->
  <link rel="stylesheet" href="assets/css/bootstrap.min.css" type="text/css">
  <link rel="stylesheet" href="assets/css/styles.css" type="text/css">
  <link rel="stylesheet" href="assets/css/owl.carousel.css" type="text/css">
  <link rel="stylesheet" href="assets/css/owl.transitions.css" type="text/css">
  <link href="assets/css/slick.css" rel="stylesheet">
  <link href="assets/css/bootstrap-slider.min.css" rel="stylesheet">
  <link href="assets/css/font-awesome.min.css" rel="stylesheet">
  <link rel="stylesheet" id="switcher-css" type="text/css" href="assets/switcher/css/switcher.css" media="all" />
  <link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/red.css" title="red" media="all" />
  <link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/orange.css" title="orange" media="all" />
  <link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/blue.css" title="blue" media="all" data-default-color="true" />
  <link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/pink.css" title="pink" media="all" />
  <link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/green.css" title="green" media="all" />
  <link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/purple.css" title="purple" media="all" />
  <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/images/favicon-icon/apple-touch-icon-144-precomposed.png">
  <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/images/favicon-icon/apple-touch-icon-114-precomposed.html">
  <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/images/favicon-icon/apple-touch-icon-72-precomposed.png">
  <link rel="apple-touch-icon-precomposed" href="assets/images/favicon-icon/apple-touch-icon-57-precomposed.png">
  <link rel="shortcut icon" href="assets/images/favicon-icon/24x24.png">
  <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900" rel="stylesheet">
</head>

<body>

  <!-- <?php include('includes/colorswitcher.php'); ?>
 -->
  <!--Header-->
  <?php include('includes/header.php'); ?>
  <!-- /Header -->

  <!-- Banners -->
  <!-- <section id="banner" class="banner-section">
  <div class="container">
    <div class="div_zindex">
      <div class="row">
        <div class="col-md-5 col-md-push-7">
          <div class="banner_content">
            <h1>Alway Consume Fresh & Organic</h1>
            <p>Eat Healthy Live Healthy  </p>
            <a href="page.php?type=aboutus" class="btn">Read More About Online Dairy <span class="angle_arrow"><i class="fa fa-angle-right" aria-hidden="true"></i></span></a> </div>
        </div>
      </div>
    </div>
  </div>
</section> -->
  <!-- /Banners -->


  <!-- Resent Cat-->
  <section class="section-padding gray-bg">
    <div class="container">
      <div class="section-header text-center">
        <h2><span> Purchase Now Your Favourate Dairy Items From </span> <br> Online Dairy, KTM, Nepal. </h2>
        <p>Online Dairy · Fresh Cow Milk · Butter · Ghee · Egg · Yoghurt · Milkshake · Ice Cream </p>
      </div>
      <div class="row">

        <!-- Nav tabs -->
        <div class="recent-tab">
          <ul class="nav nav-tabs" role="tablist">
            <li role="presentation" class="active"><a href="#resentnewcar" role="tab" data-toggle="tab">Fresh Dairy Products:</a></li>
          </ul>
        </div>
        <!-- Recently Listed New Cars -->
        <div class="tab-content">
          <div role="tabpanel" class="tab-pane active" id="resentnewcar">

            <?php $sql = "SELECT tblproduct.ProductName,tblbrands.BrandName,tblproduct.Price,tblproduct.BestBefore,tblproduct.MadeYear,tblproduct.id,tblproduct.ProductOverview,tblproduct.Vimage1 from tblproduct join tblbrands on tblbrands.id=tblproduct.BrandName";
            $query = $dbh->prepare($sql);
            $query->execute();
            $results = $query->fetchAll(PDO::FETCH_OBJ);
            $cnt = 1;
            if ($query->rowCount() > 0) {
              foreach ($results as $result) {
            ?>

                <div class="col-list-3">
                  <div class="recent-car-list">
                    <div class="car-info-box"> <a href="product-details.php?vhid=<?php echo htmlentities($result->id); ?>"><img src="admin/img/product/<?php echo htmlentities($result->Vimage1); ?>" class="img-responsive" alt="image"></a>
                      <ul>
                        <!-- <li><i class="fa fa-car" aria-hidden="true"></i><?php echo htmlentities($result->BestBefore); ?></li>
<li><i class="fa fa-calendar" aria-hidden="true"></i><?php echo htmlentities($result->MadeYear); ?> Model</li>
<li><i class="fa fa-user" aria-hidden="true"></i><?php echo htmlentities($result->PaymentType); ?> seats</li> -->
                      </ul>
                    </div>
                    <div class="car-title-m">
                      <h6><a href="product-details.php?vhid=<?php echo htmlentities($result->id); ?>"><?php echo htmlentities($result->BrandName); ?> , <?php echo htmlentities($result->ProductName); ?></a></h6>
                      <span class="price">Rs:<?php echo htmlentities($result->Price); ?> </span>
                    </div>
                    <div class="inventory_info_m">
                      <p><?php echo substr($result->ProductOverview, 0, 70); ?></p>
                    </div>
                  </div>
                </div>
            <?php }
            } ?>

          </div>
        </div>
      </div>
  </section>
  <!-- /Resent Cat -->

  <!--Footer -->
  <?php include('includes/footer.php'); ?>
  <!-- /Footer-->

  <!--Back to top-->
  <div id="back-top" class="back-top"> <a href="#top"><i class="fa fa-angle-up" aria-hidden="true"></i> </a> </div>
  <!--/Back to top-->

  <!--Login-Form -->
  <?php include('includes/login.php'); ?>
  <!--/Login-Form -->

  <!--Register-Form -->
  <?php include('includes/registration.php'); ?>

  <!--/Register-Form -->

  <!--Forgot-password-Form -->
  <?php include('includes/forgotpassword.php'); ?>
  <!--/Forgot-password-Form -->

  <!-- Scripts -->
  <script src="assets/js/jquery.min.js"></script>
  <script src="assets/js/bootstrap.min.js"></script>
  <script src="assets/js/interface.js"></script>
  <!--Switcher-->
  <script src="assets/switcher/js/switcher.js"></script>
  <!--bootstrap-slider-JS-->
  <script src="assets/js/bootstrap-slider.min.js"></script>
  <!--Slider-JS-->
  <script src="assets/js/slick.min.js"></script>
  <script src="assets/js/owl.carousel.min.js"></script>

</body>

</html>