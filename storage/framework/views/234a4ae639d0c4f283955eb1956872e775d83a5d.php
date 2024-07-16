

<?php $__env->startSection("title", "FAQ"); ?>

<?php $__env->startSection("content"); ?>

<?php $__env->startPush('css'); ?>

<style type="text/css">

    .accordion-title{

      background: #0d4d62;

    }

    .accordion-title span {

    position: absolute;

    left: 0;

    top: 0;

    height: 100%;

    background: #f68c26;

    font-weight: 700;

    padding: 15px 24px;

    /* vertical-align: middle; */

}

#cr-accordion{

  margin-top: 5px;

}

.pkg-pricing-title h3{

    margin-bottom: 0px; 

}

</style>

<?php $__env->stopPush(); ?>

<?php

   $faq_banner_image = SM::smGetThemeOption( "faq_banner_image" );

   $faq_sections = SM::smGetThemeOption( "faq_sections", [] );

   $faqLoop = 1;

   ?>

<!--BREADCRUMB START-->

<div class="breadcrumb-option"  style="background:url( <?php echo SM::sm_get_the_src($faq_banner_image); ?>) no-repeat scroll center center;background-repeat: no-repeat;

   background-attachment: scroll;

   background-size: cover; " data-black-overlay="7">

   <div class="container">

      <div class="row">

         <div class="col-md-12">

            <div class="cr-breadcrumb text-center">

               <h1>FAQ</h1>

               <p>Faq Subtitle</p>

            </div>

         </div>

      </div>

   </div>

</div>

<!--BREADCRUMB END-->

<?php if(count($faq_sections)>0): ?>

<!-- Accordion Style 1 -->

<section class="accordion-area section-padding-lg bg-grey">

   <div class="container">

      <div class="row"> 

        <div class="col-10 mx-auto"> 

            <div class="accordion-wrap" id="cr-accordion">

               <!-- Single Accordion -->

               <?php $__currentLoopData = $faq_sections; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $section): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

               <?php

                  $faq_section_title = isset( $section['faq_section_title'] ) ? $section['faq_section_title'] : null;

                  $faqs = isset( $section['faqs'] ) ? $section['faqs'] : [];

                  ?>

               <?php if(empty(!$faq_section_title)): ?>

               <div class="row">

                  <div class="col-xl-8 offset-xl-2 col-lg-10 offset-lg-1 col-12 offset-0">

                      <div class="pkg-pricing-title text-center">

                          <h3><?php echo e($faq_section_title); ?></h3>

                      </div>

                  </div>

              </div> 

               <?php endif; ?>

               <div class="accordion accordion-style-2">

                  <!-- <div class="accordion text-center"> -->

                  <?php if(count($faqs)>0): ?>

                  <?php $__currentLoopData = $faqs; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $faqString): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

                  <?php

                     $faq = is_string( $faqString ) ? json_decode( $faqString, true ) : $faqString;

                     $faq_title = isset( $faq['faq_title'] ) ? $faq['faq_title'] : "";

                     $faq_description = isset( $faq['faq_description'] ) ? $faq['faq_description'] : "";

                     ?>

                  <div style="margin-bottom: 20px;" class="accordion-title collapsed" data-toggle="collapse" data-target="#cr-accordion-<?php echo e($faqLoop); ?>">

                        <span>Question <?php echo e($loop->iteration); ?></span> <h5 style="margin-left: 120px;"><?php echo e($faq_title); ?></h5>

                  </div>

                  <div id="cr-accordion-<?php echo e($faqLoop); ?>" class="collapse" data-parent="#cr-accordion-<?php echo e($faqLoop); ?>">

                     <div class="accordion-body">

                        <?php echo $faq_description; ?>


                     </div>

                  </div>

                  <?php

                     $faqLoop ++;

                     ?>

                  <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                  <?php endif; ?>

               </div>

               <!--// Single Accordion --> 

               <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

            </div>

         </div>

      </div>

   </div>

</section>

<!--// Accordion Style 1 -->

<?php endif; ?>

<?php $__env->stopSection(); ?>
<?php echo $__env->make("frontend.master", array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>