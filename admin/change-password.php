<?php
//session_start();
include('includes/autoload.php');
error_reporting(0); 
if(strlen($_SESSION['login'])==0)
{ 
    header('location:index.php');
}
else{
if(isset($_POST['submit']))
{
    //Current Password hashing 
    $password=$_POST['password'];
    $options = ['cost' => 12];
    $hashedpass=password_hash($password, PASSWORD_BCRYPT, $options);
    $adminid=$_SESSION['login'];
    // new password hashing 
    $newpassword=$_POST['newpassword'];
    $newhashedpass=password_hash($newpassword, PASSWORD_BCRYPT, $options);

    date_default_timezone_set('Asia/Bangkok');// change according timezone
    $currentTime = date( 'd-m-Y h:i:s A', time () );
    $sql="SELECT AdminPassword FROM tbl_admin WHERE AdminUserName='$adminid' OR AdminEmail='$adminid'";

    // echo "<pre>";
    // print_r($sql);
    // echo "\n";
    // print_r(mysqli_fetch_array($sql));
    // exit();

    $num=$db->fetchSql($sql);
    
    if(COUNT($num)>0)
    {
        $dbpassword=$num[0]['AdminPassword'];
        if (password_verify($password, $dbpassword)) 
        {
            $query="UPDATE tbl_admin SET AdminPassword='$newhashedpass' WHERE AdminUserName='$adminid' OR AdminEmail='$adminid' ";
            $update = $db->fetchSql($query);
            $msg="Password Changed Successfully !!";
        }
        else
        {
            $error="Old Password not match !!";
        }
    }
    else
    {
        $error="Old Password not match !!";
    }
}


?>


<!DOCTYPE html>
<html lang="en">
    <head>

        <title>Báo Đây | Change Password</title>

        <!-- App css -->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/core.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/components.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/pages.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/menu.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/responsive.css" rel="stylesheet" type="text/css" />
		<link rel="stylesheet" href="../plugins/switchery/switchery.min.css">
        <script src="assets/js/modernizr.min.js"></script>
        <script type="text/javascript">
            function valid()
            {
                if(document.chngpwd.password.value=="")
                {
                    alert("Current Password Filed is Empty !!");
                    document.chngpwd.password.focus();
                    return false;
                }
                else if(document.chngpwd.newpassword.value=="")
                {
                    alert("New Password Filed is Empty !!");
                    document.chngpwd.newpassword.focus();
                    return false;
                }
                else if(document.chngpwd.confirmpassword.value=="")
                {
                    alert("Confirm Password Filed is Empty !!");
                    document.chngpwd.confirmpassword.focus();
                    return false;
                }
                else if(document.chngpwd.newpassword.value!= document.chngpwd.confirmpassword.value)
                {
                    alert("Password and Confirm Password Field do not match  !!");
                    document.chngpwd.confirmpassword.focus();
                    return false;
                }
                return true;
            }
        </script>
    </head>
    <body class="fixed-left">

        <!-- Begin page -->
        <div id="wrapper">

        <!-- Top Bar Start -->
        <?php include('includes/topheader.php');?>
        <!-- Top Bar End -->
        <!-- ========== Left Sidebar Start ========== -->
                <?php include('includes/leftsidebar.php');?>
        <!-- Left Sidebar End -->

                    <div class="content-page">
                        <!-- Start content -->
                        <div class="content">
                            <div class="container">
                                <div class="row">
                                    <div class="col-xs-12">
                                        <div class="page-title-box">
                                            <h4 class="page-title">Change Password</h4>
                                            <ol class="breadcrumb p-0 m-0">
                                                <li>
                                                    <a href="#">Admin</a>
                                                </li>
                                                <li class="active">Change Password</li>
                                            </ol>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                </div>
                                <!-- end row -->
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="card-box">
                                            <h4 class="m-t-0 header-title"><b>Change Password </b></h4>
                                            <hr />
                                            <div class="row">
                                                <div class="col-sm-12" style="justify-content:center; display: flex">  
                                                    <!---Success Message--->  
                                                    <?php if($msg){ ?>
                                                        <div class="alert alert-success text-align" role="alert">
                                                            <strong>Well done!</strong> <?php echo $msg;?>
                                                        </div>
                                                    <?php } ?>

                                                    <!---Error Message--->
                                                    <?php if($error){ ?>
                                                        <div class="alert alert-danger" role="alert">
                                                            <strong>Oh snap!</strong> <?php echo $error;?>
                                                        </div>
                                                    <?php } ?>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-10">
                                                    <form class="form-horizontal" name="chngpwd" method="post" onSubmit="return valid();">

                                                        <div class="form-group">
                                                            <label class="col-md-4 control-label">Current Password</label>
                                                            <div class="col-md-8">
                                                                <input type="text" class="form-control" value="" name="password" required>
                                                            </div>
                                                        </div>
                                                            
                                                        <div class="form-group">
                                                            <label class="col-md-4 control-label">New Password</label>
                                                            <div class="col-md-8">
                                                                <input type="text" class="form-control" value="" name="newpassword" required>
                                                            </div>
                                                        </div>

                                                        <div class="form-group">
                                                            <label class="col-md-4 control-label">Confirm Password</label>
                                                            <div class="col-md-8">
                                                                <input type="text" class="form-control" value="" name="confirmpassword" required>
                                                            </div>
                                                        </div>

                                                        <div class="form-group">
                                                            <label class="col-md-4 control-label">&nbsp;</label>
                                                            <div class="col-md-8">
                                                                <button type="submit" class="btn btn-custom waves-effect waves-light btn-md" name="submit">
                                                                    Submit
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </form>
                        				        </div>
                        			        </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- end row -->
                            </div> <!-- container -->
                        </div> <!-- content -->

                        <?php include('includes/footer.php');?>

                    </div>
                </div>

        <script>
            var resizefunc = [];
        </script>

        <!-- jQuery  -->
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/detect.js"></script>
        <script src="assets/js/fastclick.js"></script>
        <script src="assets/js/jquery.blockUI.js"></script>
        <script src="assets/js/waves.js"></script>
        <script src="assets/js/jquery.slimscroll.js"></script>
        <script src="assets/js/jquery.scrollTo.min.js"></script>
        <script src="../plugins/switchery/switchery.min.js"></script>
        <script src="assets/js/showHidePass.js"></script>

        <!-- App js -->
        <script src="assets/js/jquery.core.js"></script>
        <script src="assets/js/jquery.app.js"></script>

    </body>
</html>
<?php } ?>