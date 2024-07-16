
<?php $__env->startSection("title", "Product -"); ?>
<?php $__env->startSection("content"); ?>

<?php
    $wwrTitle = SM::smGetThemeOption( "wwr_title" );
    $wwrSubtitle = SM::smGetThemeOption( "wwr_subtitle" );
    $wwrDescription = SM::smGetThemeOption( "wwr_description" );
    $ourMission = SM::smGetThemeOption( "our_mission" );
    $ourVision = SM::smGetThemeOption( "our_vision" );
    $histories = SM::smGetThemeOption( "histories" );
    $title = SM::smGetThemeOption( "about_banner_title" );
    $subtitle = SM::smGetThemeOption( "about_banner_subtitle" );
    $bannerImage = SM::smGetThemeOption( "about_banner_image" );
?>

<?php $__env->startPush('css'); ?>
<?php $__env->stopPush(); ?>

<div class="breadcrumb-option"  style="background:url( <?php echo SM::sm_get_the_src( $bannerImage ); ?>) no-repeat scroll center center;background-repeat: no-repeat;
        background-attachment: scroll;
        background-size: cover; " data-black-overlay="7">
    <div class="container">
        <div class="row">
            <div class="col-xl-8 offset-xl-2 col-lg-10 offset-lg-1">
                <div class="cr-breadcrumb text-center">
                     
                        <h1>Our Products</h1>
                
                    <?php if(isset($subtitle) && $subtitle != ''): ?>
                        <p><?php echo e($subtitle); ?></p>
                    <?php endif; ?> 
                </div>
            </div>
        </div>
    </div>
</div>

<div class="product-view-section">
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <div class="nav-title">
                    <h5> Category </h5>
                </div>
                <nav class = "navbar">
                    <ul>
                        <?php $__currentLoopData = $categorys; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $Key=> $category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <li class="nav-item">
                                    <a href="<?php echo e(url('productview/'.$category->slug)); ?>" class="nav-link category-title <?php echo e((request()->is('productview/'.$category->slug)) ? 'active' : ''); ?>"> <?php echo e($category->title); ?> </a>
                                    <ul class="category-items">                            
                                        <?php $__currentLoopData = $category->subcategories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $subcategory): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <li class="nav-item">
                                            <a href="<?php echo e(url('productview/'.$subcategory->slug)); ?>" class="nav-link <?php echo e((request()->is('productview/'.$category->slug)) ? 'active' : ''); ?>"> <?php echo e($subcategory->title); ?> </a>
                                        </li>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    </ul>
                                </li>                            
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    </ul>
                </nav>
            </div>
            <div class="col-md-9">
                <div class="category-title">
                    <h4>
                    <?php if($categoryInfo->title): ?>
                    <?php echo e($categoryInfo->title); ?>

                    <?php endif; ?>
                    </h4>
                </div>
                <table>
                    <thead>
                        <tr>
                            <th style="width: 20%"> PRODUCTS </th>
                            <th style="width: 50%"> DESCRIPTION </th>
                            <th style="width: 30%"> APPLICATION </th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php $__currentLoopData = $categoryInfo->products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $Key=> $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <tr>
                                <th> <?php echo e($product->title); ?></th>
                                <td><?php echo e(strip_tags($product->description)); ?> </td>                                
                                <td> <?php echo e($product->batch_no); ?> </td>
                            </tr>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        
                        <?php $__currentLoopData = $categoryInfo->subcategories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $subcategory): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <?php $__currentLoopData = $subcategory->products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $Key=> $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <tr>
                                    <th> <?php echo e($product->title); ?></th>
                                    <td><?php echo e(strip_tags($product->description)); ?> </td>                                
                                    <td> <?php echo e($product->batch_no); ?> </td>
                                </tr>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

<script>

    function getCategory () {
        
        const categoryParent = document.querySelectorAll('.category-items')
        const category = document.querySelectorAll('.navbar ul .nav-item')
        
        categoryParent.forEach ((items, index) => {
            items.style.display = "none"
        })
        
        category.forEach((items, index) => {
            items.addEventListener("click", (event) => {
                const itemsWrapper = items.children[1]
                const addActive = itemsWrapper.className = 'active'
                if(itemsWrapper.classList == "active") {
                    itemsWrapper.style.display = "block"
                } else{
                    itemsWrapper.style.display = "none"
                }
            });
        })
    }

    getCategory ()


</script>

<?php $__env->stopSection(); ?>




<?php echo $__env->make("frontend.master", array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>