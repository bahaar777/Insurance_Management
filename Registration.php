<html>
<head>
<style>
#grad1 {
  height:740px;
  background-image: linear-gradient(to bottom,#05f7d3,#f7fafa);
}
</style>

</head>

<title>Registration (Consumer Bank)</title>
 <link rel =" shortcut icon" href="img/assets/log.png" type="image">
 
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" type="text/css" />
<link rel="stylesheet" href="css/font-awesome/css/font-awesome.css" type="text/css" />
<link rel="stylesheet" href="css/style.css" type="text/css" />
<link rel="stylesheet" href="css/no-ui-slider/jquery.nouislider.css" type="text/css" />

<link rel="stylesheet" href="Registration.css">
 <body>
<div id="grad1">

   <!-- Start registration Form Section -->
<section id="Registration">
    <div class="container">
        <div class="row">
		
            <div class="col-md-12 text-center">
               <h3 class="section-title wow fadeInUp">REGISTRATION</h3>
               <p class="subheading wow fadeInUp"> Let's Grow Together. </p>
            </div>
			
            <div class="col-md-12 wow fadeInUp text-center">
               <form method="POST" action="Registration.php" name="Registration" id="Registration">
					<fieldset>
						<input name="fullname" type="text" id="fullname" placeholder="Enter Your Full-Name"/>
						<input name="mobile" type="number" id="mobile" placeholder="Enter Your Mobile-Number" onblur="validt3();"/>
						<input name="email" type="email" id="email" placeholder="Enter Your Email Address"/>
						<input name="password" type="password" id="password" placeholder="Enter Your Password"/>
					</fieldset>
						<input type="submit" class="submit" id="submit" name="submit" value="REGISTER" >
				</form>
            </div>
        </div>
    </div>
</section>
   <!-- End registration Form Section -->
   
     <!-- Start Footer 1 -->
   <footer id="footer">
      <!-- End Footer Widgets -->
      
      <div class="footer-copyright">
         <div class="container">
            <div class="row">
               <div class="col-md-12 text-center">
                  <h3 class="section-title wow fadeInUp">Consumer Bank</h3>
                  <p class="wow fadeInUp"> All Rights Reserved. Copyright © 2021 
                  <a href="">Consumer Bank</a> 
                  </p>
                  <ul class="social-icons subheading">
                     <li>
                        <a href="#">
                           <i class="icon ion-social-twitter"></i>
                        </a>
                     </li>
                     <li>
                        <a href="#">
                           <i class="icon ion-social-facebook"></i>
                        </a>
                     </li>
                     <li>
                        <a href="#">
                           <i class="icon ion-social-googleplus"></i>
                        </a>
                     </li>
                     <li>
                        <a href="#">
                           <i class="icon ion-social-instagram-outline"></i>
                        </a>
                     </li>
                     <li>
                        <a href="#">
                           <i class="icon ion-social-pinterest"></i>
                        </a>
                     </li>
                     <li>
                        <a href="#">
                           <i class="icon ion-social-skype"></i>
                        </a>
                     </li>
                     <li>
                        <a href="#">
                           <i class="icon ion-social-linkedin"></i>
                        </a>
                     </li>
                     <li>
                        <a href="#">
                           <i class="icon ion-social-dropbox"></i>
                        </a>
                     </li>
                     <li>
                        <a href="#">
                           <i class="icon ion-social-vimeo"></i>
                        </a>
                     </li>
                     <li>
                        <a href="#">
                           <i class="icon ion-social-youtube"></i>
                        </a>
                     </li>
                  </ul>
               </div>
            </div>
         </div>
      </div>
      <!-- End Footer Copyright -->
      
   </footer>
   <!-- End Footer 1 -->
    
<?php
include "Connect.php";
 
if(isset($_POST['submit']))
{
$nm=$_POST['fullname'];
$mail=$_POST['email'];
$pass=$_POST['password'];
$mob=$_POST['mobile'];
$query ="INSERT INTO `insurance_management`.`registration` (`fullname`, `mobile_no.`, `email`, `password`) VALUES ('$nm','$mob', '$mail','$pass');";
$abc=mysqli_query($conn,$query) or die(mysqli_error($conn));
echo "<script>alert('Registration successfull!!!')</script>";

$query1="INSERT INTO `insurance_management`.`user_login` (`email_id`, `password`) VALUES ('$mail','$pass');";
$ac=mysqli_query($conn,$query1) or die(mysqli_error($conn));
echo "<script>alert('UserName=$mail. Password=$pass')</script>";
}                     
?>
 </body>
 </html>