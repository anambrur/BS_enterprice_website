
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
            <div class="col-md-9">
                <div class="product-details">
                    <div class="col-md-12">
                        <div class="product-gallary">
                            <div class="col-md-6">
                                <div class="slider slider-single">
                                    <div>
                                        <img src="https://imgbd.weyesimg.com/prod/moving/img/9089be2c330eb867513fd03afa0e0a4a/56daeeb33e7fb8d507f4e2466ec9af22.jpg?x-oss-process=image/resize,m_lfit,w_768/format,webp/quality,80" alt="">
                                    </div>
                                    <div>
                                        <img src="https://imgbd.weyesimg.com/prod/moving/img/9089be2c330eb867513fd03afa0e0a4a/1bd2f6ea59d90cb625c4b6207f60be1a.jpg?x-oss-process=image/resize,m_lfit,w_768/format,webp/quality,80" alt="">
                                    </div>
                                    <div>
                                        <img src="https://imgbd.weyesimg.com/prod/moving/img/9089be2c330eb867513fd03afa0e0a4a/afc794a05cb2a8f47be392e65dc4dc37.jpg?x-oss-process=image/resize,m_lfit,w_768/format,webp/quality,80" alt="">
                                    </div>
                                    <div>
                                        <img src="https://imgbd.weyesimg.com/prod/moving/img/9089be2c330eb867513fd03afa0e0a4a/37063246ca6016f91c6bb140c3f3f272.jpg?x-oss-process=image/resize,m_lfit,w_768/format,webp/quality,80" alt="">
                                    </div>
                                    <div>
                                        <img src="https://imgbd.weyesimg.com/prod/moving/img/9089be2c330eb867513fd03afa0e0a4a/718efa8a0e14c9d06e6144dc3be6a69d.jpg?x-oss-process=image/resize,m_lfit,w_768/format,webp/quality,80" alt="">
                                    </div>
                                </div>
                                <div class="slider slider-nav">
                                    <div>
                                        <img src="https://imgbd.weyesimg.com/prod/moving/img/9089be2c330eb867513fd03afa0e0a4a/56daeeb33e7fb8d507f4e2466ec9af22.jpg?x-oss-process=image/resize,m_lfit,w_768/format,webp/quality,80" alt="">
                                    </div>
                                    <div>
                                        <img src="https://imgbd.weyesimg.com/prod/moving/img/9089be2c330eb867513fd03afa0e0a4a/1bd2f6ea59d90cb625c4b6207f60be1a.jpg?x-oss-process=image/resize,m_lfit,w_768/format,webp/quality,80" alt="">
                                    </div>
                                    <div>
                                        <img src="https://imgbd.weyesimg.com/prod/moving/img/9089be2c330eb867513fd03afa0e0a4a/afc794a05cb2a8f47be392e65dc4dc37.jpg?x-oss-process=image/resize,m_lfit,w_768/format,webp/quality,80" alt="">
                                    </div>
                                    <div>
                                        <img src="https://imgbd.weyesimg.com/prod/moving/img/9089be2c330eb867513fd03afa0e0a4a/37063246ca6016f91c6bb140c3f3f272.jpg?x-oss-process=image/resize,m_lfit,w_768/format,webp/quality,80" alt="">
                                    </div>
                                    <div>
                                        <img src="https://imgbd.weyesimg.com/prod/moving/img/9089be2c330eb867513fd03afa0e0a4a/718efa8a0e14c9d06e6144dc3be6a69d.jpg?x-oss-process=image/resize,m_lfit,w_768/format,webp/quality,80" alt="">
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="product-information">
                                    <h4> Honghao Chemical Co., Ltd - Acid dye leveling agent non-anionic surfactant excellent leveling for nylon fabric HT-HTW Dye Fixing Agent </h4>
                                    <article>
                                        <p> High-end technologies are utilized to manufacture the product, making sure that the product is made to be of stable performance and high quality.It has great uses in a wide range of fields, including Chemical Auxiliary Agent. </p>
                                    </article>
                                    <div class="contact-info">
                                        <button class="btn" data-toggle="modal" data-target="#exampleModalCenter"> Contact Information </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="product-description">
                            <div class="tab-wrapper">
                                <nav class="tab-nav">
                                    <button class="is-active" data-tab-target="tab-content-1">Description</button>
                                    <button data-tab-target="tab-content-2">Application</button>
                                </nav>
                                <?php $__currentLoopData = $categoryInfo->products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $Key=> $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <div class="tab-content">
                                    <div class="tab-target is-active" id="tab-content-1">
                                        <?php echo e(strip_tags($product->description)); ?>

                                    </div>
                                    <div class="tab-target" id="tab-content-2">
                                        <?php echo e($product->batch_no); ?>

                                    </div>
                                </div>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <div class="related-product">
                    <div class="related-product col-md-12">
                        <h4> Related Product </h4>
                    </div>
                    <div class="col-md-12 mb-3">
                        <div class="card">
                            <div class="card-body">
                                <a href="#">
                                    <div class="product-img">
                                        <img src="https://imgbd.weyesimg.com/prod/moving/img/9089be2c330eb867513fd03afa0e0a4a/d4951fca47ee9242e65f62897fa55361.jpg?x-oss-process=image/resize,m_lfit,w_768/format,webp/quality,80" alt="">
                                    </div>
                                    <div class="product-description">
                                        <h4> Super soft and fluffy silicone SILISOFT180 is multi-component amino-modified polysiloxane. </h4>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12 mb-3">
                        <div class="card">
                            <div class="card-body">
                                <a href="#">
                                    <div class="product-img">
                                        <img src="https://imgbd.weyesimg.com/prod/moving/img/9089be2c330eb867513fd03afa0e0a4a/d4951fca47ee9242e65f62897fa55361.jpg?x-oss-process=image/resize,m_lfit,w_768/format,webp/quality,80" alt="">
                                    </div>
                                    <div class="product-description">
                                        <h4> Super soft and fluffy silicone SILISOFT180 is multi-component amino-modified polysiloxane. </h4>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12 mb-3">
                        <div class="card">
                            <div class="card-body">
                                <a href="#">
                                    <div class="product-img">
                                        <img src="https://imgbd.weyesimg.com/prod/moving/img/9089be2c330eb867513fd03afa0e0a4a/d4951fca47ee9242e65f62897fa55361.jpg?x-oss-process=image/resize,m_lfit,w_768/format,webp/quality,80" alt="">
                                    </div>
                                    <div class="product-description">
                                        <h4> Super soft and fluffy silicone SILISOFT180 is multi-component amino-modified polysiloxane. </h4>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12 mb-3">
                        <div class="card">
                            <div class="card-body">
                                <a href="#">
                                    <div class="product-img">
                                        <img src="https://imgbd.weyesimg.com/prod/moving/img/9089be2c330eb867513fd03afa0e0a4a/d4951fca47ee9242e65f62897fa55361.jpg?x-oss-process=image/resize,m_lfit,w_768/format,webp/quality,80" alt="">
                                    </div>
                                    <div class="product-description">
                                        <h4> Super soft and fluffy silicone SILISOFT180 is multi-component amino-modified polysiloxane. </h4>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12 mb-3">
                        <div class="card">
                            <div class="card-body">
                                <a href="#">
                                    <div class="product-img">
                                        <img src="https://imgbd.weyesimg.com/prod/moving/img/9089be2c330eb867513fd03afa0e0a4a/d4951fca47ee9242e65f62897fa55361.jpg?x-oss-process=image/resize,m_lfit,w_768/format,webp/quality,80" alt="">
                                    </div>
                                    <div class="product-description">
                                        <h4> Super soft and fluffy silicone SILISOFT180 is multi-component amino-modified polysiloxane. </h4>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-9" style="display: none;">
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
                                <td> </td>                                
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

<!-- contact information  -->

<div class="contact-info-modal">
    <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLongTitle"> Contact Information </h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <?php
                        $contact_branch_image = SM::smGetThemeOption("contact_branch_image");
                        $contact_branch_title = SM::smGetThemeOption("contact_branch_title");
                        $contact_branch_subtitle = SM::smGetThemeOption("contact_branch_subtitle");
                        $contact_branches = SM::smGetThemeOption("contact_branches");
                        $contact_share_title = SM::smGetThemeOption("contact_share_title");
                        $contact_share_image = SM::smGetThemeOption("contact_share_image");
                        $site_name = SM::sm_get_site_name();
                    ?>
                    <?php if($contact_branches): ?>
                        <?php $__currentLoopData = $contact_branches; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $branch): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <div class="media mb-3">
                                <img class="align-self-start mr-3" src="https://i.pinimg.com/originals/55/0f/49/550f49a459548599a5a4ea1c67fc0244.jpg" alt="Generic placeholder image">
                                <div class="media-body">
                                    <?php if(empty(!$branch['title'])): ?>
                                        <h5><?php echo e($branch['title']); ?></h5>
                                    <?php endif; ?>
                                    <ul>
                                        <?php if(empty(!$branch['mobile'])): ?>
                                            <li><i class="fa fa-phone-square" aria-hidden="true"></i> <span><?php echo e($branch['mobile']); ?></span></li>
                                        <?php endif; ?>
                                        <?php if(empty(!$branch['mobile'])): ?>
                                            <li><i class="fa fa-whatsapp" aria-hidden="true"></i> <span><?php echo e($branch['mobile']); ?></span></li>
                                        <?php endif; ?>
                                        <?php if(empty(!$branch['email'])): ?>
                                            <li><i class="fa fa-envelope" aria-hidden="true"></i> <span><?php echo e($branch['email']); ?></span></li>
                                        <?php endif; ?>
                                        
                                    </ul>
                                </div>
                            </div>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    <?php endif; ?>
                </div>
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