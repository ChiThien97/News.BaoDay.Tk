<!-- BK -->
<?php
 session_start();
 include('includes/config.php');

?>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Báo Đây! Báo người Việt</title>
    <link rel="icon" href="http://news.baoday.tk/images/favicon.ico" sizes="32x32">
    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/main-style.css" rel="stylesheet">

  <link href="https://kit-free.fontawesome.com/releases/latest/css/free-v4-shims.min.css" media="all" rel="stylesheet"><link href="https://kit-free.fontawesome.com/releases/latest/css/free-v4-font-face.min.css" media="all" rel="stylesheet"><link href="https://kit-free.fontawesome.com/releases/latest/css/free.min.css" media="all" rel="stylesheet">



</head>
<body>
    
    <?php include ('includes/header.php'); ?>
    <div id="wrap" class="container">

        <div class="row" style="margin-top: 4%">

        <!-- Blog Entries Column -->
            <div class="news-content-top container row">
                <div class="col-md-4">
                    <div style="width:100%; height:100%;">
                        <div class="card mb-4">
                            <div class="card-body">
                                <ul class="mb-0 p-0">
                                <?php
                                $query=mysqli_query($con,"select tblposts.PostImage,tblposts.id as pid,tblposts.PostTitle as posttitle from tblposts left join tblcategory on tblcategory.id=tblposts.CategoryId left join  tblsubcategory on  tblsubcategory.SubCategoryId=tblposts.SubCategoryId limit 2,5");
                                while ($row=mysqli_fetch_array($query)) 
                                {?>
                                <li class="py-2 d-flex" >
                                    <a href="news-details.php?nid=<?php echo htmlentities($row['pid'])?>">
                                    <img style="width:45% !important;" class="card-img-top" src="admin/postimages/<?php echo htmlentities($row['PostImage']);?>" alt="<?php echo htmlentities($row['posttitle']);?>"> 
                                    <p><?php echo htmlentities($row['posttitle']);?></p>
                                    </a>
                                </li>
                                <?php } ?>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="news-featured col-md-5 pr-0">
                    <div style="width:100%;">
                    <?php 
                        $query=mysqli_query($con,"select tblposts.id as pid,tblposts.PostTitle as posttitle,tblposts.PostImage,tblcategory.CategoryName as category,tblcategory.id as cid,tblsubcategory.Subcategory as subcategory,tblposts.PostDetails as postdetails,tblposts.PostingDate as postingdate,tblposts.PostUrl as url from tblposts left join tblcategory on tblcategory.id=tblposts.CategoryId left join  tblsubcategory on  tblsubcategory.SubCategoryId=tblposts.SubCategoryId where tblposts.Is_Active=1 order by tblposts.id desc");
                        while ($row=mysqli_fetch_array($query)) {
                        ?>
              
                          <div class="card mb-4">
                            <a href="news-details.php?nid=<?php echo htmlentities($row['pid'])?>">
                              <img class="card-img-top" src="admin/postimages/<?php echo htmlentities($row['PostImage']);?>" alt="<?php echo htmlentities($row['posttitle']);?>">
                              <div class="card-body">
                                <h2 class="card-title"><?php echo htmlentities($row['posttitle']);?></h2>
                              </div>
                            </a>
                          </div>
                          
                        <?php break;}?>
                    </div>
                </div>
                <div class="news-trending col-md-3">
                    <div style="width:100%; height:100%;">
                        <div class="card mb-4">
                            <div class="card-body">
                                <ul class="mb-0 p-0">
                                <?php
                                $query=mysqli_query($con,"select tblposts.PostImage,tblposts.id as pid,tblposts.PostTitle as posttitle from tblposts left join tblcategory on tblcategory.id=tblposts.CategoryId left join  tblsubcategory on  tblsubcategory.SubCategoryId=tblposts.SubCategoryId limit 2");
                                while ($row=mysqli_fetch_array($query)) 
                                {?>
                                <li class="pb-2">
                                    <a href="news-details.php?nid=<?php echo htmlentities($row['pid'])?>">
                                    <img class="card-img-top" src="admin/postimages/<?php echo htmlentities($row['PostImage']);?>" alt="<?php echo htmlentities($row['posttitle']);?>"> 
                                    <?php echo htmlentities($row['posttitle']);?>
                                    </a>
                                </li>
                                <?php } ?>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-12 pt-3">
                    <div style="width:100%; height:100px; border:2px solid #000;">Quảng cáo hoặc thông tin cập nhật realtime</div>
                </div>
            </div>
            <div class="news-content-mid container row">
                <div class="col-md-12 pt-3">
                    <h2>Danh mục</h2>
                    <div style="width:100%; height:150px; border:2px solid #000;">Slide show các thông tin </div>
                </div>
                <div class="col-md-12 pt-3">
                    <h2>Danh mục</h2>
                    <div style="width:100%; border:2px solid #000; padding-right:300px">
                        <div class="content" style="width:100%; height:auto; border:2px solid #000;">
                        <?php
                            for($i=0;$i<10;$i++){
                            ?>
                                <div class="d-flex" style="border:1px solid; height: 170px; width:100%">
                                    <div style="border:1px solid; height:100%; width:30%">Ảnh tin</div>
                                    <div style="border:1px solid; width:70%">Tin tức liên quan <?php echo $i+1;?></div>
                                </div>
                            <?php
                            }
                        ?>
                        </div>
                        <div class="ads" style="width:300px; height:500px; border:2px solid #000; position: absolute; top: 4rem; right: 1rem;">
                            Quảng cáo
                        </div>
                    </div>
                </div>
            </div>
            <div class="news-content-mid container row">
                <div class="col-md-12 pt-3 row justify-content-center" >
                    <div style="width:80%; height:200px; border:2px solid #000;">Quảng cáo</div>
                </div>
                <div class="col-md-12 pt-3">
                    <div style="width:100%; height:500px; border:2px solid #000;display: grid; grid-template-columns: auto auto auto auto;">
                        <?php
                            for($i=0;$i<4;$i++){
                            ?>
                                <div style="border:1px solid; display:grid; grid-template-rows: 7% 43% 25% 25%">
                                    <h2>Danh mục</h2>
                                    <div style="border:1px solid"></div>
                                    <div style="border:1px solid"></div>
                                    <div style="border:1px solid"></div>
                                </div>
                            <?php
                            }
                        ?>
                    </div>
                </div>
            </div>
            <div class="news-content-end container row">
                <div class="col-md-12 pt-3">
                    <h2>Danh mục</h2>
                    <div style="width:100%; height:500px; border:2px solid #000;display: grid; grid-template-columns: 70% 30%;">
                        <div style="border:1px solid; grid-row-start: 1; grid-row-end: 6;">
                            Ảnh tin nổi bật
                        </div>
                        <?php
                            for($i=0;$i<5;$i++){
                            ?>
                                <div style="border:1px solid;">
                                    Tin phụ   
                                </div>
                            <?php
                            }
                        ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <footer class="footer container" id="wrapper_footer" style="color">
        <div class="inner-footer width_common">
            <ul class="list-menu-footer">
                <li class="item-menu"><a href="#">Trang chủ</a></li>
                <li class="item-menu"><a href="#">Video</a></li>
                <li class="item-menu"><a href="#">Ảnh</a></li>
                <li class="item-menu"><a href="#">Infographics</a></li>
                <li class="item-menu border-top" style="padding-top: 15px;border-top: 1px solid #e5e5e5;"><a href="#">Mới nhất</a></li>
                <li class="item-menu"><a href="#">Xem nhiều</a></li>
                <li class="item-menu"><a href="#">Tin nóng</a></li>
            </ul>
            <ul class="list-menu-footer">
                <li class="item-menu"><a href="#">Thời sự</a></li>
                <li class="item-menu"><a href="#">Góc nhìn</a></li>
                <li class="item-menu"><a href="#">Thế giới</a></li>
                <li class="item-menu"><a href="#">Kinh doanh</a></li>
                <li class="item-menu"><a href="#">Pháp luật</a></li>
            </ul>
            <ul class="list-menu-footer">
                <li class="item-menu"><a href="#">Giải trí</a></li>
                <li class="item-menu"><a href="#">Thể thao</a></li>
                <li class="item-menu"><a href="#">Du lịch</a></li>
                <li class="item-menu"><a href="#">Khoa học</a></li>
                <li class="item-menu"><a href="#">Số hóa</a></li>
                <li class="item-menu"><a href="#">Xe</a></li>
            </ul>
            <ul class="list-menu-footer">
                <li class="item-menu"><a href="#">Giáo dục</a></li>
                <li class="item-menu"><a href="#">Sức khỏe</a></li>
                <li class="item-menu"><a href="#">Đời sống</a></li>
                <li class="item-menu"><a href="#">Ý kiến</a></li>
                <li class="item-menu"><a href="#">Tâm sự</a></li>
                <li class="item-menu"><a href="#">Hài</a></li>
            </ul>
            <ul class="list-menu-footer">
                <li class="item-menu"><a href="#" >Rao vặt</a></li>

                <li class="item-menu"><a href="#" >Shop Báo Đây !</a></li>

                <li class="item-menu"><a href="#" >Startup</a>
                </li>

                <li class="item-menu"><a href="#" >Pay Báo Đây !</a></li>

                <li class="item-menu"><a href="#" >Quà tặng</a></li>

                <li class="item-menu"><a href="#" >Kid-lab</a>
                </li>

                <li class="item-menu"><a href="#" >Mua ảnh Báo Đây !</a></li>

                <li class="item-menu"><a href="#" >Vhome</a></li>
            </ul>
            <div class="wrap-contact">
                <!-- <div class="contact downloadapp">
                    <p>Tải ứng dụng</p>
                    <a href="#down-app-popup_vne" class="app_vne open-popup-link" title="Báo Đây !"><svg class="ic ic-vne">
                            <use xlink:href="#letter-E"></use>
                        </svg>Báo Đây !</a>
                    <a style="margin-right:0 !important" href="#down-app-popup_evne" class="app_evne open-popup-link" title="International"><svg
                            class="ic ic-evne">
                            <use xlink:href="#letter-E-grey"></use>
                        </svg>International</a>
                </div> -->
                <div class="contact">
                    <p>Liên hệ</p>
                    <a href="#" class="mail"><i class="ic fas fa-envelope"></i>Tòa soạn</a>
                    <a href="#" class="ads"><i class="ic fas fa-ad"></i>Quảng cáo</a>
                </div>
                <div class="hotline">
                    <p>Đường dây nóng</p>
                    <div class="left">
                        <strong>090.909.9900</strong>
                    </div>
                    <div class="right">
                        <strong>080.808.8800</strong>
                    </div>
                </div>
            </div>
        </div>
        <div class="copyright width_common">
            <p>
                <a href="#" class="logo_ft">
                    <img src="/images/Logo.png">
                </a>
                <span class="txt-copyright">© 1997-2020.Toàn bộ bản quyền thuộc Báo Đây !<br><strong>Báo tiếng Việt ít người xem nhất.</strong> Thuộc Khoa Công nghệ thông tin STU.</span>
            </p>
            <div class="right flexbox">
                <span class="txt-follow">Theo dõi Báo Đây! trên</span>
                <a href="#" class="social_ft face_ft" title="Facebook"><i class="ic fab fa-facebook"></i></a>
                <a href="#" class="social_ft twitter_ft" title="Twitter"><i class="ic fab fa-twitter"></i></a>
                <a href="#" class="social_ft youtube_ft" title="Youtube"><i class="ic fab fa-youtube"></i></a>
            </div>
        </div>
    </footer>
        
    <script src="https://kit.fontawesome.com/95a19bc703.js" crossorigin="anonymous"></script>
    <script src="vendor/jquery/jquery.min.js"></script>
</body>
</html>