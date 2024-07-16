<!-- Breacrumb Area -->

<div class="breadcrumb-option"  style="background:url( <?php echo SM::sm_get_the_src( $image ); ?>) no-repeat scroll center center;background-repeat: no-repeat;

        background-attachment: scroll;

        background-size: cover; " data-black-overlay="7">

    <div class="container">

        <div class="row">

            <div class="col-md-12">

                <div class="cr-breadcrumb">

                      <?php if(empty(!$title)): ?>

                        <h1><?php echo e($title); ?></h1>

                    <?php endif; ?>

                    <?php if(isset($subtitle) && $subtitle != ''): ?>

                        <p><?php echo e($subtitle); ?></p>

                    <?php endif; ?> 

                </div>

            </div>

        </div>

    </div>

</div>

<!--// Breacrumb Area -->

 