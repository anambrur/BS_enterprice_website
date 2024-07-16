<!DOCTYPE html>
<html>
<head>
    <title>Lavender Super Store</title>
  <meta charset="UTF-8">
  <meta name="description" content="Free Web tutorials">
  <meta name="keywords" content="HTML, CSS, JavaScript">
  <meta name="author" content="John Doe">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <style type="text/css">
    body{
        margin: 0px;
        padding: 0px;
        overflow-y: hidden;
        overflow-x: hidden;
    }
    
    .abs-content{
        width: 70%;
        margin: 0 auto;
        padding: 290px 0px;
    }
    .img-left-side{
        width: 50%;
       float: left;
       box-sizing: border-box;
    }
    .img-right-side{
        width: 50%;
        float: left;
        box-sizing: border-box;
       
    }
    .abs-content .img-left-side a{
        display: block;
        text-align: left;
    }
    .abs-content .img-right-side a{
        display: block;
        text-align: right;
       
    }
    .abs-content .img-left-side a img{
       height: 220px;
    }
    .abs-content .img-right-side a img{
        height: 250px;
       
    }
    .main-home{
        background: #fff;
        height: 100vh;
    }
    @media  only screen and (max-width: 600px) {
        .abs-content {
    width: 70%;
    margin: 0 auto;
    padding: 170px 0px;
}
    .img-left-side {
    width: 50%;
    float: initial;
    box-sizing: border-box;
}
.abs-content .img-left-side a{
        display: block;
        text-align: center;
    }
.img-right-side {
    width: 100%;
    float: initial;
    box-sizing: border-box;
}
.img-right-side {
    width: 100%;
    float: initial;
    box-sizing: border-box;
}
.abs-content .img-right-side a {
    display: block;
    text-align: center;
}
.abs-content .img-left-side a img {
    height: 90px;
    text-align: center!important;
}
.abs-content .img-right-side a img {
    height: 165px;
    text-align: center!important;
}
    }
    @media  only screen and (max-width: 900px) {
        .abs-content {
    width: 70%;
    margin: 0 auto;
    padding: 170px 0px;
}
    .img-left-side {
    width: 50%;
    float: initial;
    box-sizing: border-box;
}
.abs-content .img-left-side a{
        display: block;
        text-align: center;
    }
.img-right-side {
    width: 100%;
    float: initial;
    box-sizing: border-box;
}
.img-right-side {
    width: 100%;
    float: initial;
    box-sizing: border-box;
}
.abs-content .img-right-side a {
    display: block;
    text-align: center;
}
.abs-content .img-left-side a img {
    height: 90px;
    text-align: center!important;
}
.abs-content .img-right-side a img {
    height: 165px;
    text-align: center!important;
}
    }
</style>
        
</head>
    <body>
        <div class="main-home">
            <div class="abs-content">
                <div class="img-left-side">
                    <a href="https://ecocolourchem.com/" class="">
                        <img  src="<?php echo e(url('/storage/uploads/logo1.png')); ?>" class="img-fluid">
                    </a>
                </div>
                <div class="img-right-side">
                    <a href="https://ecocolourchem.com/" target="_blank" class="text-right">
                        <img src="<?php echo e(url('/storage/uploads/logo1.png')); ?>" class="img-fluid">
                    </a>
                </div>
            </div>
        </div> 

        <script type="text/javascript">
            setTimeout(function () {    
                window.location.href = '<?php echo e(url('new_home_page')); ?>'; 
            }, 2000).fadeOut();
        </script>
    </body>
</html>