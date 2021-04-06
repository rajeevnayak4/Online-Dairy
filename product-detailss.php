<meta name="viewport" content="width=device-width, initial-scale=1.0">

<?php
session_start();
include('includes/config.php');
error_reporting(0);
if(isset($_POST['submit']))
{
$quantity=$_POST['quantity'];
$deliverydate=$_POST['deliverydate'];
$message=$_POST['message'];
$useremail=$_SESSION['login'];
$status=0;
$vhid=$_GET['vhid'];
$sql="INSERT INTO  tblbooking(userEmail,pid,quantity,deliverydate,message,Status) VALUES(:useremail,:vhid,:quantity,:deliverydate,:message,:status)";
$query = $dbh->prepare($sql);
$query->bindParam(':useremail',$useremail,PDO::PARAM_STR);
$query->bindParam(':vhid',$vhid,PDO::PARAM_STR);
$query->bindParam(':quantity',$quantity,PDO::PARAM_STR);
$query->bindParam(':deliverydate',$deliverydate,PDO::PARAM_STR);
$query->bindParam(':message',$message,PDO::PARAM_STR);
$query->bindParam(':status',$status,PDO::PARAM_STR);
$query->execute();
$lastInsertId = $dbh->lastInsertId();
if($lastInsertId)
{
echo "<script>alert('Booking successfull.');</script>";
}
else
{
echo "<script>alert('Something went wrong. Please try again');</script>";
}

}

?>


<!DOCTYPE HTML>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1">
<meta name="keywords" content="">
<meta name="description" content="">
<title>Online Dairy | Product Details</title>
<!--Bootstrap -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css" type="text/css">
<!--Custome Style -->
<link rel="stylesheet" href="assets/css/styles.css" type="text/css">
<!--OWL Carousel slider-->
<link rel="stylesheet" href="assets/css/owl.carousel.css" type="text/css">
<link rel="stylesheet" href="assets/css/owl.transitions.css" type="text/css">
<!--slick-slider -->
<link href="assets/css/slick.css" rel="stylesheet">
<!--bootstrap-slider -->
<link href="assets/css/bootstrap-slider.min.css" rel="stylesheet">
<!--FontAwesome Font Style -->
<link href="assets/css/font-awesome.min.css" rel="stylesheet">

<!-- SWITCHER -->
		<link rel="stylesheet" id="switcher-css" type="text/css" href="assets/switcher/css/switcher.css" media="all" />
		<link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/red.css" title="red" media="all" />
		<link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/orange.css" title="orange" media="all" />
		<link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/blue.css" title="blue" media="all" data-default-color="true"/>
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

<!-- Start Switcher -->
<!-- <?php include('includes/colorswitcher.php');?>
 --><!-- /Switcher -->

<!--Header-->
<?php include('includes/header.php');?>
<!-- /Header -->

<!--Listing-Image-Slider-->

<?php
$vhid=intval($_GET['vhid']);
$sql = "SELECT tblproduct.*,tblbrands.BrandName,tblbrands.id as bid  from tblproduct join tblbrands on tblbrands.id=tblproduct.BrandName where tblproduct.id=:vhid";
$query = $dbh -> prepare($sql);
$query->bindParam(':vhid',$vhid, PDO::PARAM_STR);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
$cnt=1;
if($query->rowCount() > 0)
{
foreach($results as $result)
{
$_SESSION['brndid']=$result->bid;
?>

<section id="listing_img_slider">
  <div><img src="admin/img/product/<?php echo htmlentities($result->Vimage1);?>" class="img-responsive" alt="image" width="500" height="360"></div>
  
  <?php if($result->Vimage=="")
{

} else {
  ?>
  <div><img src="admin/img/product/<?php echo htmlentities($result->Vimage);?>" class="img-responsive" alt="image" width="500" height="360"></div>
  <?php } ?>


<!--Listing-detail-->
<section class="listing-detail">
  <div class="container">
    <div class="listing_detail_head row">
      <div class="col-md-9">
        <h2><?php echo htmlentities($result->BrandName);?> , <?php echo htmlentities($result->ProductName);?></h2>
     
     <div class="price_info">
          <p>Rs:<?php echo htmlentities($result->Price);?> </p>

        </div> </div>
      <div class="col-md-3">
        
      </div>
    </div>
    <div class="row">
      <div class="col-md-9">
        <div class="main_features">
          <ul>

            <li> <i class="fa fa-calendar" aria-hidden="true"></i>
              <h5>Made Year :- <?php echo htmlentities($result->MadeYear);?></h5>
              <p></p>
            </li>
            <li> <i class="fa fa-calendar" aria-hidden="true"></i>
              <h5>Best Before :- <?php echo htmlentities($result->BestBefore);?></h5>
              <p></p>
            </li>

            <li> <i class="fa pa" aria-hidden="true"></i>
              <h5>Payment Type :- <?php echo htmlentities($result->PaymentType);?></h5>
              <p></p>
            </li>
          </ul>
        </div>
        <div class="listing_more_info">
          <div class="listing_detail_wrap">
            <!-- Nav tabs -->
       <!--      <ul class="nav nav-tabs gray-bg" role="tablist">
              <li role="presentation" class="active"><a href="#products-overview " aria-controls="products-overview" background-colorrole="tab" data-toggle="tab">Product Overview </a></li>

              <li role="presentation"><a href="#accessories" aria-controls="accessories" role="tab" data-toggle="tab">Accessories</a></li>
            </ul>
 -->
 
            <!-- Tab panes -->
            <div class="tab-content">
              <!-- products-overview -->
              <div role="tabpanel" class="tab-pane active" id="products-overview">

                <p><?php echo htmlentities($result->ProductOverview);?></p>
              </div>


              <div role="tabpanel" class="tab-pane" id="accessories">
                <table>
                  <thead>
                    <tr>
                      <th colspan="2"></th>
                    </tr>
                  </thead>
                  <tbody>


                  </tbody>
                </table>
              </div>
            </div>
          </div>
  
        </div>
<?php }} ?>

      </div>

    
    </div>

    <div class="space-20"></div>

    <div class="divider"></div>

<?php
$bid=$_SESSION['brndid'];
$sql="SELECT tblproduct.ProductName,tblbrands.BrandName,tblproduct.Price,tblproduct.BestBefore,tblproduct.MadeYear,tblproduct.id,tblproduct.PaymentType,tblproduct.ProductOverview,tblproduct.Vimage1 from tblproduct join tblbrands on tblbrands.id=tblproduct.BrandName where tblproduct.BrandName=:bid";
$query = $dbh -> prepare($sql);
$query->bindParam(':bid',$bid, PDO::PARAM_STR);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
$cnt=1;
if($query->rowCount() > 0)
{
foreach($results as $result)
{ ?>
        <div class="col-md-3 grid_listing">
          <div class="product-listing-m gray-bg">
            <div class="product-listing-img"> <a href="product-details.php?vhid=<?php echo htmlentities($result->id);?>"><img src="admin/img/product/<?php echo htmlentities($result->Vimage1);?>" class="img-responsive" alt="image" /> </a>
            </div>
            <div class="product-listing-content">
              <h5><a href="product-details.php?vhid=<?php echo htmlentities($result->id);?>"><?php echo htmlentities($result->BrandName);?> , <?php echo htmlentities($result->ProductName);?></a></h5>
              <p class="list-price">Rs:<?php echo htmlentities($result->Price);?></p>

              <ul class="features_list">

             <li><i class="fa fa-calendar" aria-hidden="true"></i>Best Before :- <?php echo htmlentities($result->BestBefore);?> </li>
                <li><i class="fa fa-calendar" aria-hidden="true"></i>Made Year :- <?php echo htmlentities($result->MadeYear);?> </li>
                <li><i class="fa fa-cash" aria-hidden="true"></i>Payment Type :-</bold> <?php echo htmlentities($result->PaymentType);?></li>
              </ul>
            </div>
          </div>

        </div>
 <?php }} ?>

      </div>
    </div>
    <!--/Similar-Cars-->

  </div>
</section>
<!--/Listing-detail-->


</section>
<!--/Listing-Image-Slider-->


<!--Footer -->
<?php include('includes/footer.php');?>
<!-- /Footer-->

<!--Back to top-->
<div id="back-top" class="back-top"> <a href="#top"><i class="fa fa-angle-up" aria-hidden="true"></i> </a> </div>
<!--/Back to top-->

<!--Login-Form -->
<?php include('includes/login.php');?>
<!--/Login-Form -->

<!--Register-Form -->
<?php include('includes/registration.php');?>

<!--/Register-Form -->

<!--Forgot-password-Form -->
<?php include('includes/forgotpassword.php');?>

<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/interface.js"></script>
<script src="assets/switcher/js/switcher.js"></script>
<script src="assets/js/bootstrap-slider.min.js"></script>
<script src="assets/js/slick.min.js"></script>
<script src="assets/js/owl.carousel.min.js"></script>

</body>
</html>
