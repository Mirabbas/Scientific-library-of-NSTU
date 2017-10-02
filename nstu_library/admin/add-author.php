<?php
session_start();
error_reporting(0);
include('includes/config.php');
if(strlen($_SESSION['alogin'])==0)
    {
header('location:index.php');
}
else{

if(isset($_POST['create']))
{
$author=$_POST['author'];
$surname=$_POST['surname'];
$firstname=$_POST['firstname'];
$dateOfBirth=$_POST['dateOfBirth'];
$dateOfDeath=$_POST['dateOfDeath'];
$cityOfBirth=$_POST['cityOfBirth'];
$sql="INSERT INTO  tblauthors(AuthorName,Surname,Firstname,DateOfBirth,DateOfDeath,CityOfBirth) VALUES(:author,:surname,:firstname,:dateOfBirth,:dateOfDeath,:cityOfBirth)";
$query = $dbh->prepare($sql);
$query->bindParam(':author',$author,PDO::PARAM_STR);
$query->bindParam(':surname',$surname,PDO::PARAM_STR);
$query->bindParam(':firstname',$firstname,PDO::PARAM_STR);
$query->bindParam(':dateOfBirth',$dateOfBirth,PDO::PARAM_STR);
$query->bindParam(':dateOfDeath',$dateOfDeath,PDO::PARAM_STR);
$query->bindParam(':cityOfBirth',$cityOfBirth,PDO::PARAM_STR);
$query->execute();
$lastInsertId = $dbh->lastInsertId();
if($lastInsertId)
{
$_SESSION['msg']="Author Listed successfully";
header('location:manage-authors.php');
}
else
{
$_SESSION['error']="Something went wrong. Please try again";
header('location:manage-authors.php');
}

}
?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Scientific library of NSTU | Add Author</title>
    <!-- BOOTSTRAP CORE STYLE  -->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONT AWESOME STYLE  -->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <!-- CUSTOM STYLE  -->
    <link href="assets/css/style.css" rel="stylesheet" />
    <!-- GOOGLE FONT -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />

</head>
<body>
      <!------MENU SECTION START-->
<?php include('includes/header.php');?>
<!-- MENU SECTION END-->
    <div class="content-wra
    <div class="content-wrapper">
         <div class="container">
        <div class="row pad-botm">
            <div class="col-md-12">
                <h4 class="header-line">Add Author</h4>

                            </div>

</div>
<div class="row">
<div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3"">
<div class="panel panel-info">
<div class="panel-heading">
Author Info
</div>
<div class="panel-body">
<form role="form" method="post">
<div class="form-group">
<label>Author Name</label>
<input class="form-control" type="text" name="author" autocomplete="off"  required />
</div>
    <div class="form-group">
        <label>Surname</label>
        <input class="form-control" type="text" name="surname" autocomplete="off"  required />
    </div>
    <div class="form-group">
        <label>Firstname</label>
        <input class="form-control" type="text" name="firstname" autocomplete="off"  required />
    </div>
    <div class="form-group">
        <label>Date of birth</label>
        <input class="form-control" type="date" name="dateOfBirth" autocomplete="off"  required />
    </div>
    <div class="form-group">
        <label>Date of death</label>
        <input class="form-control" type="date" name="dateOfDeath" autocomplete="off"  required />
    </div>
    <div class="form-group">
        <label>City of birth</label>
        <input class="form-control" type="text" name="cityOfBirth" autocomplete="off"  required />
    </div>
<button type="submit" name="create" class="btn btn-info">Add </button>

                                    </form>
                            </div>
                        </div>
                            </div>

        </div>

    </div>
    </div>
     <!-- CONTENT-WRAPPER SECTION END-->
  <?php include('includes/footer.php');?>
      <!-- FOOTER SECTION END-->
    <!-- JAVASCRIPT FILES PLACED AT THE BOTTOM TO REDUCE THE LOADING TIME  -->
    <!-- CORE JQUERY  -->
    <script src="assets/js/jquery-1.10.2.js"></script>
    <!-- BOOTSTRAP SCRIPTS  -->
    <script src="assets/js/bootstrap.js"></script>
      <!-- CUSTOM SCRIPTS  -->
    <script src="assets/js/custom.js"></script>
</body>
</html>
<?php } ?>
