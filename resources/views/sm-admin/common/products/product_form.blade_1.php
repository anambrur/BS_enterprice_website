<!-- NEW WIDGET START -->
<article class="col-xs-12 col-sm-12 col-md-8 col-lg-8">

    <!-- Widget ID (each widget will need unique ID)-->
    <div class="jarviswidget" id="wid-add-package-main" data-widget-editbutton="false"
         data-widget-deletebutton="false">
        <!-- widget options:
           usage: <div class="jarviswidget" id="wid-id-0" data-widget-editbutton="false">

           data-widget-colorbutton="false"
           data-widget-editbutton="false"
           data-widget-togglebutton="false"
           data-widget-deletebutton="false"
           data-widget-fullscreenbutton="false"
           data-widget-custombutton="false"
           data-widget-collapsed="true"
           data-widget-sortable="false"

        -->
        <header>
            <span class="widget-icon"> <i class="fa fa-building"></i> </span>
            <h2>{{ $f_name }} Package</h2>

        </header>

        <!-- widget div-->
        <div>

            <!-- widget edit box -->
            <div class="jarviswidget-editbox">
                <!-- This area used as dropdown edit box -->
                <input class="form-control" type="text">
            </div>
            <!-- end widget edit box -->

            <!-- widget content -->
            <div class="widget-body padding-10">
                <div class="row">
                    <div class="col-sm-12">
                        @include("sm-admin.common.common.title_n_slug", ['isEnabledSlug'=>true, 'table'=>'packages'])
                    </div>
                    <div class="col-sm-12">
                        <div class="sm-form{{ $errors->has('subtitle') ? ' has-error' : '' }}">
                            {!! Form::label('subtitle','Subtitle') !!}
                            {!! Form::text('subtitle', null,['class'=>'form-control', 'placeholder'=>'Write your subtitle here']) !!}
                            @if ($errors->has('subtitle'))
                                <span class="help-block">
                                    <strong>{{ $errors->first('subtitle') }}</strong>
                                 </span>
                            @endif
                        </div>
                    </div>
                    <div class="col-sm-12">
                        <div class="form-group{{ $errors->has('description') ? ' has-error' : '' }}">
                            {!! Form::label('description','Package Description')!!}
                            {!! Form::textarea('description', null,['class'=>'form-control ckeditor']) !!}
                            @if ($errors->has('description'))
                                <span class="help-block">
                                    <strong>{{ $errors->first('description') }}</strong>
                                 </span>
                            @endif
                        </div>
                    </div>
                    <div class="col-sm-12">
                        <div class="form-group{{ $errors->has('requirements') ? ' has-error' : '' }}">
                            {!! Form::label('requirements','Package Requirements')!!}
                            {!! Form::textarea('requirements', null,['class'=>'form-control ckeditor']) !!}
                            @if ($errors->has('requirements'))
                                <span class="help-block">
                                    <strong>{{ $errors->first('requirements') }}</strong>
                                 </span>
                            @endif
                        </div>
                    </div>

                </div>
            </div>
            <!-- end widget content -->

        </div>
        <!-- end widget div -->

    </div>
    <!-- end widget -->

</article>
<!-- WIDGET END -->
<!-- NEW WIDGET START -->
<article class="col-xs-12 col-sm-12 col-md-4 col-lg-4">

    <!-- Widget ID (each widget will need unique ID)-->
    <div class="jarviswidget" id="wid-id-package-publish" data-widget-editbutton="false"
         data-widget-deletebutton="false">

        <header>
            <span class="widget-icon"> <i class="fa fa-save"></i> </span>
            <h2>Package Publish</h2>
        </header>

        <!-- widget div-->
        <div>

            <!-- widget edit box -->
            <div class="jarviswidget-editbox">
                <!-- This area used as dropdown edit box -->
                <input class="form-control" type="text">
            </div>
            <!-- end widget edit box -->

            <!-- widget content -->
            <div class="widget-body padding-10">
				<?php
				$permission = SM::current_user_permission_array();
				if (SM::is_admin() || isset( $permission ) && isset( $permission['packages']['package_status_update'] ) && $permission['packages']['package_status_update'] == 1)
				{
				?>
                <div class="form-group{{ $errors->has('status') ? ' has-error' : '' }}">
                    {!! Form::label('status', 'Publication Status') !!}
                    {!! Form::select('status',['1'=>'Publish','2'=>'Pending / Draft', '3'=>'Cancel'], null, ['required'=>'','class'=>'form-control']) !!}
                    @if ($errors->has('status'))
                        <span class="help-block">
                             <strong>{{ $errors->first('status') }}</strong>
                          </span>
                    @endif
                </div>
				<?php
				}
				?>
                <div class="form-group">
                    <button class="btn btn-success btn-block sm_post_save_process" id="save_package" type="submit">
                        <i class="fa fa-save"></i>
                        {{ $btn_name }} Package
                    </button>
                </div>

            </div>
            <!-- end widget content -->
        </div>
        <!-- end widget div -->
    </div>
    <!-- end widget -->

</article>
<!-- WIDGET END -->


<?php
if ( old( 'image' ) ) {
	$image = old( 'image' );
} elseif ( isset( $package_info->image ) ) {
	$image = $package_info->image;
} else {
	$image = '';
}
?>
@include('sm-admin/common/common/image_form',['header_name'=>'Package Banner',
'image'=>$image])
<?php
if ( old( 'mover_img' ) ) {
	$mover_img = old( 'mover_img' );
} elseif ( isset( $package_info->mover_img ) ) {
	$mover_img = $package_info->mover_img;
} else {
	$mover_img = '';
}
?>
@include('sm-admin/common/common/image_form',['header_name'=>'Package Mover',
'image'=>$mover_img, 'input_holder'=>'mover_img', 'img_holder'=>'second_ph'])
<!-- NEW WIDGET START -->
<article class="col-xs-12 col-sm-12 col-md-12 col-lg-12">

    <!-- Widget ID (each widget will need unique ID)-->
    <div class="jarviswidget" id="wid-id-package-extra">
        <!-- widget options:
           usage: <div class="jarviswidget" id="wid-id-0" data-widget-editbutton="false">

           data-widget-colorbutton="false"
           data-widget-editbutton="false"
           data-widget-togglebutton="false"
           data-widget-deletebutton="false"
           data-widget-fullscreenbutton="false"
           data-widget-custombutton="false"
           data-widget-collapsed="true"
           data-widget-sortable="false"

        -->
        <header>
            <span class="widget-icon"> <i class="fa fa-list"></i> </span>
            <h2>Package Extra </h2>

        </header>

        <!-- widget div-->
        <div>

            <!-- widget edit box -->
            <div class="jarviswidget-editbox">
                <!-- This area used as dropdown edit box -->
                <input class="form-control" type="text">
            </div>
            <!-- end widget edit box -->

            <!-- widget content -->
            <div class="widget-body">
                <div class="">
                    <div class="col-sm-12">
                        <div class="sm-form ">
                            {!! Form::label('extra_pricing_info_title','Package Pricing Title') !!}
                            {!! Form::text('extra[pricing_info_title]', null, ['class'=>'form-control','id'=>'extra_pricing_info_title']) !!}
                        </div>
                        <div class="sm-form ">
                            {!! Form::label('extra_step_title','Package Step Title') !!}
                            {!! Form::text('extra[step_title]', null, ['class'=>'form-control','id'=>'extra_step_title']) !!}
                        </div>
                        <div class="sm-form ">
                            {!! Form::label('extra_step_subtitle','Package Step Sub Title') !!}
                            {!! Form::text('extra[step_subtitle]', null, ['class'=>'form-control','id'=>'extra_step_subtitle']) !!}
                        </div>
                    </div>
		            <?php
		            $options = [
			            "type"  => "upload",
			            "label" => "Package Step Image"
		            ];
		            $step_image = isset( $package_info->extra['step_image'] ) ? $package_info->extra['step_image'] : null;
		            SM::smUpload( $options, "step_image", '', $step_image, "extra", 1 );
		            ?>
                </div>
            </div>
            <!-- end widget content -->

        </div>
        <!-- end widget div -->

    </div>
    <!-- end widget -->

</article>
<!-- WIDGET END -->
<!-- NEW WIDGET START -->
<article class="col-xs-12 col-sm-12 col-md-12 col-lg-12">

    <!-- Widget ID (each widget will need unique ID)-->
    <div class="jarviswidget" id="wid-add-package-pricing-main" data-widget-editbutton="false"
         data-widget-deletebutton="false">
        <!-- widget options:
           usage: <div class="jarviswidget" id="wid-id-0" data-widget-editbutton="false">

           data-widget-colorbutton="false"
           data-widget-editbutton="false"
           data-widget-togglebutton="false"
           data-widget-deletebutton="false"
           data-widget-fullscreenbutton="false"
           data-widget-custombutton="false"
           data-widget-collapsed="true"
           data-widget-sortable="false"

        -->
        <header>
            <span class="widget-icon"> <i class="fa fa-building"></i> </span>
            <h2>{{ $f_name }} Package Pricing</h2>

        </header>

        <!-- widget div-->
        <div>

            <!-- widget edit box -->
            <div class="jarviswidget-editbox">
                <!-- This area used as dropdown edit box -->
                <input class="form-control" type="text">
            </div>
            <!-- end widget edit box -->

            <!-- widget content -->
            <div class="widget-body padding-10">
                <div class="row">
                    <div class=" smthemeoptionfield">
                        <div class="col-md-2">
                            {!! Form::label('type', 'Package Type') !!}
                        </div>
                        <div class="col-md-10">
                            <div class="form-group">
                                {!! Form::select('type',[
                                '1'=>'Pricing Plan 3 Columns',
                                '2'=>'Pricing Plan 4 Columns',
                                '3'=>'Pricing Plan 4 Columns Duration Tab',
                                '4'=>'Content Marketing',
                                '5'=>'Social Media Marketing 3 Columns',
                                '6'=>'Social Media Marketing 4 Columns'
                                ], null, ['required'=>'','class'=>'form-control']) !!}
                            </div>
                            @if ($errors->has('type'))
                                <span class="help-block">
                                     <strong>{{ $errors->first('type') }}</strong>
                                </span>
                            @endif

                        </div>
                        <div class="clearfix"></div>
                    </div>

                    <div class="div_package div_package_1">
						<?php
						$isPackageDetail1 = isset( $package_info ) && $package_info->type == 1 ? true : false;
						$hasContentAdvanced = ( $isPackageDetail1 && isset( $package_info->content[0] ) ) ? true : false;
						$contentAdvanced = ( $hasContentAdvanced ) ? $package_info->content[0] : [];
						$particular_title = $isPackageDetail1 && isset( $package_info->pricing_detail ) ? $package_info->pricing_detail : "PARTICULARS";
						$advanced_pricing_title = isset( $contentAdvanced->title ) ? $contentAdvanced->title : "ADVANCED";
						$priceType = isset( $contentAdvanced->price_type ) ? $contentAdvanced->price_type : 5;
						$price_advanced = isset( $contentAdvanced->price ) ? $contentAdvanced->price : "";
						$pd_id_price_advanced = isset( $contentAdvanced->id ) ? $contentAdvanced->id : 0;
						?>
                        <div class="smthemeoptionfield">
                            <div class="col-sm-6">
                                <div class="sm-form ">
                                    {!! Form::label('pricing_detail_1_price_type','Price Types') !!}
                                    {!! Form::select('pricing_detail_1[price_type]', SM::packagePaymentType(), $priceType, ['class'=>'form-control','id'=>'pricing_detail_1_price_type']) !!}
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="sm-form">
                                    {!! Form::label('pricing_detail_1_particular_title','Particular Title') !!}
                                    {!! Form::text('pricing_detail_1[particular_title]', $particular_title,['class'=>'form-control', 'placeholder'=>'Write your Particular Title here', 'id'=>'pricing_detail_1_particular_title']) !!}
                                </div>
                            </div>

                            <div class="col-sm-6">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="sm-form">
                                            {!! Form::label('pricing_detail_1_advanced_pricing_title','Advanced Pricing Title') !!}
                                            {!! Form::text('pricing_detail_1[advanced_pricing_title]', $advanced_pricing_title,['class'=>'form-control', 'placeholder'=>'Write your Advanced Pricing Title here', 'id'=>'pricing_detail_1_advanced_pricing_title']) !!}
                                        </div>
                                    </div>
                                    <div class="col-sm-12">
                                        <div class="sm-form">
                                            {!! Form::label('pricing_detail_1_price_advanced','Advanced Price in USD') !!}
                                            {!! Form::number('pricing_detail_1[price_advanced]', $price_advanced, ['class'=>'form-control', 'placeholder'=>'Write your Advanced Price in USD here', 'id'=>'pricing_detail_1_price_advanced']) !!}
                                            {!! Form::hidden('pricing_detail_1[pd_id_price_advanced]', $pd_id_price_advanced) !!}
                                        </div>
                                    </div>
                                </div>
                            </div>
							<?php
							$hasContentProfessional = ( $isPackageDetail1 && isset( $package_info->content[1] ) ) ? true : false;
							$contentProfessional = ( $hasContentProfessional ) ? $package_info->content[1] : [];
							$professional_pricing_title = isset( $contentProfessional->title ) ? $contentProfessional->title : "PROFESSIONAL";
							$price_professional = isset( $contentProfessional->price ) ? $contentProfessional->price : "";
							$pd_id_price_professional = isset( $contentProfessional->id ) ? $contentProfessional->id : 0;
							?>
                            <div class="col-sm-6">
                                <div class="row">

                                    <div class="col-sm-12">
                                        <div class="sm-form">
                                            {!! Form::label('pricing_detail_1_professional_pricing_title','Professional Pricing Title') !!}
                                            {!! Form::text('pricing_detail_1[professional_pricing_title]', $professional_pricing_title,['class'=>'form-control', 'placeholder'=>'Write your Professional Pricing Title here', 'id'=>'pricing_detail_1_price_advanced']) !!}
                                        </div>
                                    </div>

                                    <div class="col-sm-12">
                                        <div class="sm-form">
                                            {!! Form::label('pricing_detail_1_price_professional','Professional Price in USD') !!}
                                            {!! Form::number('pricing_detail_1[price_professional]', $price_professional,['class'=>'form-control', 'placeholder'=>'Write your Professional Price in USD here', 'id'=>'pricing_detail_1_price_professional']) !!}
                                            {!! Form::hidden('pricing_detail_1[pd_id_price_professional]', $pd_id_price_professional) !!}
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="margin-top-15">
							<?php
							$options = [
								"type"           => "addable-popup",
								"label"          => "Pricing Plan Info",
								"desc"           => "Add your Pricing Plan Info by clicking here",
								"single_title"   => "Pricing Plan Info",
								"add_more_title" => "Add more Pricing Plan Info",
								"template"       => "particular_title",
								"fields"         => [
									"particular_title" => [
										"label" => "Particular Title",
										"type"  => "textarea",
										"extra" => [
											"rows" => 4
										]
									],
									"advanced"         => [
										"label" => "Advanced Plan Description",
										"type"  => "textarea",
										"extra" => [
											"rows" => 4
										]
									],
									"professional"     => [
										"label" => "Professional Plan Description",
										"type"  => "textarea",
										"extra" => [
											"rows" => 4
										]
									],
									"sub"              => [
										"type"           => "addable-popup",
										"label"          => "Sub Pricing Info",
										"desc"           => "Add your Sub Pricing Info by clicking here",
										"single_title"   => "Sub Pricing Info",
										"add_more_title" => "Add more Sub Pricing Info",
										"template"       => "particular_title",
										"fields"         => [
											"particular_title" => [
												"label" => "Particular Title",
												"type"  => "textarea",
												"extra" => [
													"rows" => 4
												]
											],
											"advanced"         => [
												"label" => "Advanced Plan Description",
												"type"  => "textarea",
												"extra" => [
													"rows" => 3
												]
											],
											"professional"     => [
												"label" => "Professional Plan Description",
												"type"  => "textarea",
												"extra" => [
													"rows" => 3
												]
											]
										]
									]
								]
							];
							$pricing_info = ( $isPackageDetail1 && isset( $package_info->pricing_info ) ) ? $package_info->pricing_info : array();
							SM::smAddablePopup( $options, "pricing_info", "Pricing Info", $pricing_info, "pricing_detail_1", 1 );
							?>
                        </div>
                    </div>
                    <div class="div_package div_package_2">
						<?php
						$isPackageDetail2 = isset( $package_info ) && $package_info->type == 2 ? true : false;
						$hasContentBasic = ( $isPackageDetail2 && isset( $package_info->content[0] ) ) ? true : false;
						$contentBasic = ( $hasContentBasic ) ? $package_info->content[0] : [];
						$pd_id_price_basic = isset( $contentBasic->id ) ? $contentBasic->id : 0;
						$priceType = isset( $contentBasic->price_type ) ? $contentBasic->price_type : 5;
						$basic_pricing_title = isset( $contentBasic->title ) ? $contentBasic->title : "BASIC";
						$price_basic = isset( $contentBasic->price ) ? $contentBasic->price : "";
						?>
                        <div class=" smthemeoptionfield">
                            <div class="col-md-2">
                                {!! Form::label('pricing_detail_2_price_type','Pricing Types') !!}
                            </div>
                            <div class="col-md-9">
                                <div class="form-group">
                                    {!! Form::select('pricing_detail_2[price_type]', SM::packagePaymentType(), $priceType, ['class'=>'form-control','id'=>'pricing_detail_2_price_type']) !!}

                                </div>

                                @if ($errors->has('type'))
                                    <span class="help-block">
                                     <strong>{{ $errors->first('type') }}</strong>
                                </span>
                                @endif

                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="smthemeoptionfield">
                            <div class="col-sm-12">
                                <div class="row">
                                    <div class="col-sm-4">
                                        <div class="row">
                                            <div class="col-sm-12">
                                                <div class="sm-form">
                                                    {!! Form::label('pricing_detail_2_basic_pricing_title','Basic Pricing Title') !!}
                                                    {!! Form::text('pricing_detail_2[basic_pricing_title]', $basic_pricing_title,['class'=>'form-control', 'placeholder'=>'Write your Basic Pricing Title here', 'id'=>'pricing_detail_2_basic_pricing_title']) !!}
                                                </div>
                                            </div>
                                            <div class="col-sm-12">
                                                <div class="sm-form">
                                                    {!! Form::label('pricing_detail_2_price_basic','Basic Price in USD') !!}
                                                    {!! Form::number('pricing_detail_2[price_basic]', $price_basic,['class'=>'form-control', 'placeholder'=>'Write your Basic Price in USD here', 'id'=>'pricing_detail_2_price_basic']) !!}
                                                    {!! Form::hidden('pricing_detail_2[pd_id_price_basic]', $pd_id_price_basic) !!}
                                                </div>
                                            </div>
                                        </div>
                                    </div>
									<?php
									$hasContentSilver = ( $isPackageDetail2 && isset( $package_info->content[1] ) ) ? true : false;
									$contentSilver = ( $hasContentSilver ) ? $package_info->content[1] : [];

									$pd_id_price_silver = isset( $contentSilver->id ) ? $contentSilver->id : 0;
									$silver_pricing_title = isset( $contentSilver->title ) ? $contentSilver->title : "SILVER";
									$price_silver = isset( $contentSilver->price ) ? $contentSilver->price : "";
									?>
                                    <div class="col-sm-4">
                                        <div class="row">
                                            <div class="col-sm-12">
                                                <div class="sm-form">
                                                    {!! Form::label('pricing_detail_2_silver_pricing_title','Silver Pricing Title') !!}
                                                    {!! Form::text('pricing_detail_2[silver_pricing_title]', $silver_pricing_title,['class'=>'form-control', 'placeholder'=>'Write your Silver Pricing Title here', 'id'=>'pricing_detail_2_silver_pricing_title']) !!}
                                                </div>
                                            </div>
                                            <div class="col-sm-12">
                                                <div class="sm-form">
                                                    {!! Form::label('pricing_detail_2_price_silver','Silver Price in USD') !!}
                                                    {!! Form::number('pricing_detail_2[price_silver]', $price_silver,['class'=>'form-control', 'placeholder'=>'Write your Silver Price in USD here', 'id'=>'pricing_detail_2_price_silver']) !!}
                                                    {!! Form::hidden('pricing_detail_2[pd_id_price_silver]', $pd_id_price_silver) !!}
                                                </div>
                                            </div>
                                        </div>
                                    </div>
									<?php
									$hasContentGold = ( $isPackageDetail2 && isset( $package_info->content[2] ) ) ? true : false;
									$contentGold = ( $hasContentGold ) ? $package_info->content[2] : [];
									$pd_id_price_gold = isset( $contentGold->id ) ? $contentGold->id : 0;
									$gold_pricing_title = isset( $contentGold->title ) ? $contentGold->title : "GOLD";
									$price_gold = isset( $contentGold->price ) ? $contentGold->price : "";
									?>
                                    <div class="col-sm-4">
                                        <div class="row">
                                            <div class="col-sm-12">
                                                <div class="sm-form">
                                                    {!! Form::label('pricing_detail_2_gold_pricing_title','Gold Pricing Title') !!}
                                                    {!! Form::text('pricing_detail_2[gold_pricing_title]', $gold_pricing_title,['class'=>'form-control', 'placeholder'=>'Write your Gold Pricing Title here', 'id'=>'pricing_detail_2_gold_pricing_title']) !!}
                                                </div>
                                            </div>
                                            <div class="col-sm-12">
                                                <div class="sm-form">
                                                    {!! Form::label('pricing_detail_2_price_gold','Gold Price in USD') !!}
                                                    {!! Form::number('pricing_detail_2[price_gold]', $price_gold,['class'=>'form-control', 'placeholder'=>'Write your Gold Price in USD here', 'id'=>'pricing_detail_2_price_gold']) !!}
                                                    {!! Form::hidden('pricing_detail_2[pd_id_price_gold]', $pd_id_price_gold) !!}
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
						<?php
						$options = [
							"type"           => "addable-popup",
							"label"          => "Pricing Plan Info",
							"desc"           => "Add your Pricing Plan Info by clicking here",
							"single_title"   => "Pricing Plan Info",
							"add_more_title" => "Add more Pricing Plan Info",
							"template"       => "pricing_info_title",
							"fields"         => [
								"pricing_info_title" => [
									"label" => "Pricing info Title",
									"type"  => "textarea",
									"extra" => [
										"rows" => 4
									]
								],
								"basic"              => [
									"label" => "Basic Plan Description",
									"type"  => "textarea",
									"extra" => [
										"rows" => 4
									]
								],
								"silver"             => [
									"label" => "Silver Plan Description",
									"type"  => "textarea",
									"extra" => [
										"rows" => 4
									]
								],
								"gold"               => [
									"label" => "Gold Plan Description",
									"type"  => "textarea",
									"extra" => [
										"rows" => 4
									]
								],
							]
						];
						$pricing_info = ( $isPackageDetail2 && isset( $package_info->pricing_info ) ) ? $package_info->pricing_info : array();
						SM::smAddablePopup( $options, "pricing_info", "Pricing Info", $pricing_info, "pricing_detail_2", 1 );
						?>
                    </div>
                    <div class="div_package div_package_3">
						<?php
						$isPackageDetail3 = isset( $package_info ) && $package_info->type == 3 ? true : false;

						$hasContentBasic = ( $isPackageDetail3 && isset( $package_info->content[0] ) ) ? true : false;
						$contentBasic = ( $hasContentBasic ) ? $package_info->content[0] : [];
						$basic_pricing_title = isset( $contentBasic->title ) ? $contentBasic->title : "BASIC";
						$priceType = isset( $contentBasic->price_type ) ? $contentBasic->price_type : 5;
						$price_basic = isset( $contentBasic->price ) ? $contentBasic->price : "";
						$pd_id_price_basic = isset( $contentBasic->id ) ? $contentBasic->id : 0;
						?>
                        <div class="smthemeoptionfield">
                            <div class="col-sm-12">
                                <div class="row">
                                    <div class="col-sm-4">
                                        <div class="row">
                                            <div class="col-sm-12">
                                                <div class="sm-form">
                                                    {!! Form::label('pricing_detail_3_basic_pricing_title','Basic Pricing Title') !!}
                                                    {!! Form::text('pricing_detail_3[basic_pricing_title]', $basic_pricing_title, ['class'=>'form-control', 'placeholder'=>'Write your Basic Pricing Title here', 'id'=>'pricing_detail_3_basic_pricing_title']) !!}
                                                </div>
                                            </div>
                                            <div class="col-sm-12">
                                                <div class="sm-form">
                                                    {!! Form::label('pricing_detail_3_price_basic1','Monthly Basic Price in USD') !!}
                                                    {!! Form::number('pricing_detail_3[price_basic1]', $price_basic, ['class'=>'form-control', 'placeholder'=>'Write your Basic Price in USD here', 'id'=>'pricing_detail_3_price_basic1']) !!}
                                                    {!! Form::hidden('pricing_detail_3[pd_id_price_basic1]', $pd_id_price_basic) !!}
                                                </div>
                                            </div>
											<?php
											$hasContentBasic3 = ( $isPackageDetail3 && isset( $package_info->content[3] ) ) ? true : false;
											$contentBasic3 = ( $hasContentBasic3 ) ? $package_info->content[3] : [];
											$price_basic3 = isset( $contentBasic3->price ) ? $contentBasic3->price : "";
											$pd_id_price_basic3 = isset( $contentBasic3->id ) ? $contentBasic3->id : 0;
											?>
                                            <div class="col-sm-12">
                                                <div class="sm-form">
                                                    {!! Form::label('pricing_detail_3_price_basic2','Quarterly Basic Price in USD') !!}
                                                    {!! Form::number('pricing_detail_3[price_basic2]', $price_basic3,['class'=>'form-control', 'placeholder'=>'Write your Basic Price in USD here', 'id'=>'pricing_detail_3_price_basic2']) !!}
                                                    {!! Form::hidden('pricing_detail_3[pd_id_price_basic2]', $pd_id_price_basic3) !!}
                                                </div>
                                            </div>
											<?php
											$hasContentBasic6 = ( $isPackageDetail3 && isset( $package_info->content[6] ) ) ? true : false;
											$contentBasic6 = ( $hasContentBasic6 ) ? $package_info->content[6] : [];
											$price_basic6 = isset( $contentBasic6->price ) ? $contentBasic6->price : "";
											$pd_id_price_basic6 = isset( $contentBasic6->id ) ? $contentBasic6->id : 0;
											?>
                                            <div class="col-sm-12">
                                                <div class="sm-form">
                                                    {!! Form::label('pricing_detail_3_price_basic3','Half Yearly Basic Price in USD') !!}
                                                    {!! Form::number('pricing_detail_3[price_basic3]', $price_basic6, ['class'=>'form-control', 'placeholder'=>'Write your Basic Price in USD here', 'id'=>'pricing_detail_3_price_basic3']) !!}
                                                    {!! Form::hidden('pricing_detail_3[pd_id_price_basic3]', $pd_id_price_basic6) !!}
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="row">
											<?php
											$hasContentSilver = ( $isPackageDetail3 && isset( $package_info->content[1] ) ) ? true : false;
											$contentSilver = ( $hasContentSilver ) ? $package_info->content[1] : [];
											$silver_pricing_title = isset( $contentSilver->title ) ? $contentSilver->title : "SILVER";
											$priceType = isset( $contentSilver->price_type ) ? $contentSilver->price_type : 5;
											$price_silver = isset( $contentSilver->price ) ? $contentSilver->price : "";
											$pd_id_price_silver = isset( $contentSilver->id ) ? $contentSilver->id : 0;
											?>
                                            <div class="col-sm-12">
                                                <div class="sm-form">
                                                    {!! Form::label('pricing_detail_3_silver_pricing_title','Silver Pricing Title') !!}
                                                    {!! Form::text('pricing_detail_3[silver_pricing_title]', $silver_pricing_title, ['class'=>'form-control', 'placeholder'=>'Write your Silver Pricing Title here', 'id'=>'pricing_detail_3_silver_pricing_title']) !!}
                                                </div>
                                            </div>
                                            <div class="col-sm-12">
                                                <div class="sm-form">
                                                    {!! Form::label('pricing_detail_3_price_silver1','Monthly Silver Price in USD') !!}
                                                    {!! Form::number('pricing_detail_3[price_silver1]', $price_silver, ['class'=>'form-control', 'placeholder'=>'Write your Silver Price in USD here', 'id'=>'pricing_detail_3_price_silver1']) !!}
                                                    {!! Form::hidden('pricing_detail_3[pd_id_price_silver1]', $pd_id_price_silver) !!}
                                                </div>
                                            </div>
											<?php
											$hasContentSilver4 = ( $isPackageDetail3 && isset( $package_info->content[4] ) ) ? true : false;
											$contentSilver4 = ( $hasContentSilver4 ) ? $package_info->content[4] : [];
											$price_silver4 = isset( $contentSilver4->price ) ? $contentSilver4->price : "";
											$pd_id_price_silver4 = isset( $contentSilver4->id ) ? $contentSilver4->id : 0;
											?>
                                            <div class="col-sm-12">
                                                <div class="sm-form">
                                                    {!! Form::label('pricing_detail_3_price_silver2','Quarterly Silver Price in USD') !!}
                                                    {!! Form::number('pricing_detail_3[price_silver2]', $price_silver4, ['class'=>'form-control', 'placeholder'=>'Write your Silver Price in USD here', 'id'=>'pricing_detail_3_price_silver2']) !!}
                                                    {!! Form::hidden('pricing_detail_3[pd_id_price_silver2]', $pd_id_price_silver4) !!}
                                                </div>
                                            </div>
											<?php
											$hasContentSilver7 = ( $isPackageDetail3 && isset( $package_info->content[7] ) ) ? true : false;
											$contentSilver7 = ( $hasContentSilver7 ) ? $package_info->content[7] : [];
											$price_silver7 = isset( $contentSilver7->price ) ? $contentSilver7->price : "";
											$pd_id_price_silver7 = isset( $contentSilver7->id ) ? $contentSilver7->id : 0;
											?>
                                            <div class="col-sm-12">
                                                <div class="sm-form">
                                                    {!! Form::label('pricing_detail_3_price_silver3','Half Yearly Silver Price in USD') !!}
                                                    {!! Form::number('pricing_detail_3[price_silver3]', $price_silver7, ['class'=>'form-control', 'placeholder'=>'Write your Silver Price in USD here', 'id'=>'pricing_detail_3_price_silver3']) !!}
                                                    {!! Form::hidden('pricing_detail_3[pd_id_price_silver3]', $pd_id_price_silver7) !!}
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="row">

											<?php
											$hasContentGold = ( $isPackageDetail3 && isset( $package_info->content[2] ) ) ? true : false;
											$contentGold = ( $hasContentGold ) ? $package_info->content[2] : [];
											$gold_pricing_title = isset( $contentGold->title ) ? $contentGold->title : "GOLD";
											$priceType = isset( $contentGold->price_type ) ? $contentGold->price_type : 5;
											$price_gold = isset( $contentGold->price ) ? $contentGold->price : "";
											$pd_id_price_gold = isset( $contentGold->id ) ? $contentGold->id : 0;
											?>
                                            <div class="col-sm-12">
                                                <div class="sm-form">
                                                    {!! Form::label('pricing_detail_3_gold_pricing_title','Gold Pricing Title') !!}
                                                    {!! Form::text('pricing_detail_3[gold_pricing_title]', $gold_pricing_title, ['class'=>'form-control', 'placeholder'=>'Write your Gold Pricing Title here', 'id'=>'pricing_detail_3_gold_pricing_title']) !!}
                                                </div>
                                            </div>
                                            <div class="col-sm-12">
                                                <div class="sm-form">
                                                    {!! Form::label('pricing_detail_3_price_gold1','Monthly Gold Price in USD') !!}
                                                    {!! Form::number('pricing_detail_3[price_gold1]', $price_gold, ['class'=>'form-control', 'placeholder'=>'Write your Gold Price in USD here', 'id'=>'pricing_detail_3_price_gold1']) !!}
                                                    {!! Form::hidden('pricing_detail_3[pd_id_price_gold1]', $pd_id_price_gold) !!}
                                                </div>
                                            </div>
											<?php
											$hasContentGold5 = ( $isPackageDetail3 && isset( $package_info->content[5] ) ) ? true : false;
											$contentGold5 = ( $hasContentGold5 ) ? $package_info->content[5] : [];
											$price_gold5 = isset( $contentGold5->price ) ? $contentGold5->price : "";
											$pd_id_price_gold5 = isset( $contentGold5->id ) ? $contentGold5->id : 0;
											?>
                                            <div class="col-sm-12">
                                                <div class="sm-form">
                                                    {!! Form::label('pricing_detail_3_price_gold2','Quarterly Gold Price in USD') !!}
                                                    {!! Form::number('pricing_detail_3[price_gold2]', $price_gold5, ['class'=>'form-control', 'placeholder'=>'Write your Gold Price in USD here', 'id'=>'pricing_detail_3_price_gold2']) !!}
                                                    {!! Form::hidden('pricing_detail_3[pd_id_price_gold2]', $pd_id_price_gold5) !!}
                                                </div>
                                            </div>
											<?php
											$hasContentGold8 = ( $isPackageDetail3 && isset( $package_info->content[8] ) ) ? true : false;
											$contentGold8 = ( $hasContentGold8 ) ? $package_info->content[8] : [];
											$price_gold8 = isset( $contentGold8->price ) ? $contentGold8->price : "";
											$pd_id_price_gold8 = isset( $contentGold8->id ) ? $contentGold8->id : 0;
											?>
                                            <div class="col-sm-12">
                                                <div class="sm-form">
                                                    {!! Form::label('pricing_detail_3_price_gold3','Half Yearly Gold Price in USD') !!}
                                                    {!! Form::number('pricing_detail_3[price_gold3]', $price_gold8, ['class'=>'form-control', 'placeholder'=>'Write your Gold Price in USD here', 'id'=>'pricing_detail_3_price_gold3']) !!}
                                                    {!! Form::hidden('pricing_detail_3[pd_id_price_gold3]', $pd_id_price_gold8) !!}
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
						<?php
						/**
						 * Monthly Info
						 */
						SM::smHidden( [ "label" => "Monthly Price" ], "price_type_1", "Price Monthly", 5, "pricing_detail_3", 1 );
						$options = [
							"type"           => "addable-popup",
							"label"          => "Monthly Pricing Plan Info",
							"desc"           => "Add your Monthly Pricing Plan Info by clicking here",
							"single_title"   => "Monthly Pricing Plan Info",
							"add_more_title" => "Add more Monthly Pricing Plan Info",
							"template"       => "pricing_info_title",
							"fields"         => [
								"pricing_info_title" => [
									"label" => "Pricing info Title",
									"type"  => "textarea",
									"extra" => [
										"rows" => 4
									]
								],
								"basic"              => [
									"label" => "Basic Plan Description",
									"type"  => "textarea",
									"extra" => [
										"rows" => 4
									]
								],
								"silver"             => [
									"label" => "Silver Plan Description",
									"type"  => "textarea",
									"extra" => [
										"rows" => 4
									]
								],
								"gold"               => [
									"label" => "Gold Plan Description",
									"type"  => "textarea",
									"extra" => [
										"rows" => 4
									]
								],
							]
						];
						$pricing_info = ( $isPackageDetail3 && isset( $package_info->pricing_info1 ) ) ? $package_info->pricing_info1 : array();
						SM::smAddablePopup( $options, "pricing_info_1", "Monthly Pricing Info", $pricing_info, "pricing_detail_3", 1 );

						/**
						 * Quarterly Info
						 */
						SM::smHidden( [ "label" => "Quarterly Price" ], "price_type_2", "Price Monthly", 6, "pricing_detail_3", 1 );
						$options = [
							"type"           => "addable-popup",
							"label"          => "Quarterly Pricing Plan Info",
							"desc"           => "Add your Quarterly Pricing Plan Info by clicking here",
							"single_title"   => "Quarterly Pricing Plan Info",
							"add_more_title" => "Add more Quarterly Pricing Plan Info",
							"template"       => "pricing_info_title",
							"fields"         => [
								"pricing_info_title" => [
									"label" => "Pricing info Title",
									"type"  => "textarea",
									"extra" => [
										"rows" => 4
									]
								],
								"basic"              => [
									"label" => "Basic Plan Description",
									"type"  => "textarea",
									"extra" => [
										"rows" => 4
									]
								],
								"silver"             => [
									"label" => "Silver Plan Description",
									"type"  => "textarea",
									"extra" => [
										"rows" => 4
									]
								],
								"gold"               => [
									"label" => "Gold Plan Description",
									"type"  => "textarea",
									"extra" => [
										"rows" => 4
									]
								],
							]
						];
						$pricing_info = ( $isPackageDetail3 && isset( $package_info->pricing_info2 ) ) ? $package_info->pricing_info2 : array();
						SM::smAddablePopup( $options, "pricing_info_2", "Monthly Pricing Info", $pricing_info, "pricing_detail_3", 1 );



						/**
						 * Half Yearly Info
						 */
						SM::smHidden( [ "label" => "Half Yearly Price" ], "price_type_3", "Price Monthly", 7, "pricing_detail_3", 1 );
						$options = [
							"type"           => "addable-popup",
							"label"          => "Half Yearly Pricing Plan Info",
							"desc"           => "Add your Half Yearly Pricing Plan Info by clicking here",
							"single_title"   => "Half Yearly Pricing Plan Info",
							"add_more_title" => "Add more Half Yearly Pricing Plan Info",
							"template"       => "pricing_info_title",
							"fields"         => [
								"pricing_info_title" => [
									"label" => "Pricing info Title",
									"type"  => "textarea",
									"extra" => [
										"rows" => 4
									]
								],
								"basic"              => [
									"label" => "Basic Plan Description",
									"type"  => "textarea",
									"extra" => [
										"rows" => 4
									]
								],
								"silver"             => [
									"label" => "Silver Plan Description",
									"type"  => "textarea",
									"extra" => [
										"rows" => 4
									]
								],
								"gold"               => [
									"label" => "Gold Plan Description",
									"type"  => "textarea",
									"extra" => [
										"rows" => 4
									]
								],
							]
						];
						$pricing_info = ( $isPackageDetail3 && isset( $package_info->pricing_info3 ) ) ? $package_info->pricing_info3 : array();
						SM::smAddablePopup( $options, "pricing_info_3", "Half Yearly Pricing Info", $pricing_info, "pricing_detail_3", 1 );
						?>

                    </div>
                    <div class="div_package div_package_4">
						<?php
						$isPackageDetail4 = isset( $package_info ) && $package_info->type == 4 ? true : false;

						$pricing_detail = ( $isPackageDetail4 && $package_info->pricing_detail != '' ) ? SM::sm_unserialize( $package_info->pricing_detail ) : array();
						$pricing_title = ( isset( $pricing_detail['pricing_title'] ) ) ? $pricing_detail['pricing_title'] : "Package Pricing Table";
						$pricing_subtitle = ( isset( $pricing_detail['pricing_subtitle'] ) ) ? $pricing_detail['pricing_subtitle'] : "software tulad ng Aldus Pagemaker ginamit ang mga bersyon";
						$pricing_calculator_title = ( isset( $pricing_detail['pricing_calculator_title'] ) ) ? $pricing_detail['pricing_calculator_title'] : "Package Price Calculator";
						$pricing_calculator_subtitle = ( isset( $pricing_detail['pricing_calculator_subtitle'] ) ) ? $pricing_detail['pricing_calculator_subtitle'] : "software tulad ng Aldus Pagemaker ginamit ang mga bersyon";
						?>

                        <div class=" smthemeoptionfield">
                            <div class="col-md-2">
                                {!! Form::label('pricing_detail_4_pricing_title','Pricing title') !!}
                            </div>
                            <div class="col-md-9">
                                <div class="sm-form">
                                    {!! Form::text('pricing_detail_4[pricing_title]', $pricing_title, ['class'=>'form-control', 'placeholder'=>'Write your Pricing title here', 'id'=>'pricing_detail_4_pricing_title']) !!}
                                </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class=" smthemeoptionfield">
                            <div class="col-md-2">
                                {!! Form::label('pricing_detail_4_pricing_subtitle','Pricing subtitle') !!}
                            </div>
                            <div class="col-md-9">
                                <div class="sm-form">
                                    {!! Form::text('pricing_detail_4[pricing_subtitle]', $pricing_subtitle, ['class'=>'form-control', 'placeholder'=>'Write your Pricing subtitle here', 'id'=>'pricing_detail_4_pricing_subtitle']) !!}
                                </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class=" smthemeoptionfield">
                            <div class="col-md-2">
                                {!! Form::label('pricing_detail_4_pricing_calculator_title','Pricing Calculator title') !!}
                            </div>
                            <div class="col-md-9">
                                <div class="sm-form">
                                    {!! Form::text('pricing_detail_4[pricing_calculator_title]', $pricing_calculator_title, ['class'=>'form-control', 'placeholder'=>'Write your Pricing calculator title here', 'id'=>'pricing_detail_4_pricing_calculator_title']) !!}
                                </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class=" smthemeoptionfield">
                            <div class="col-md-2">
                                {!! Form::label('pricing_detail_4_pricing_calculator_subtitle','Pricing subtitle') !!}
                            </div>
                            <div class="col-md-9">
                                <div class="sm-form">
                                    {!! Form::text('pricing_detail_4[pricing_calculator_subtitle]', $pricing_calculator_subtitle, ['class'=>'form-control', 'placeholder'=>'Write your Pricing calculator subtitle here', 'id'=>'pricing_detail_4_pricing_calculator_subtitle']) !!}
                                </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
						<?php
						$options = [
							"type"           => "addable-popup",
							"label"          => "Pricing Info",
							"desc"           => "Add your Pricing Info by clicking here",
							"single_title"   => "Pricing Info",
							"add_more_title" => "Add more  Pricing Info",
							"template"       => "pricing_title",
							"fields"         => [
								"pd_id"         => [
									"label"   => "Pricing Title",
									"type"    => "hidden",
									"default" => "0"
								],
								"pricing_title" => [
									"label" => "Pricing Title",
									"type"  => "textarea",
								],
								"price"         => [
									"label" => "Price Per Quantity",
									"type"  => "number",
								],
								"isIncluded"    => [
									"label"   => "Is Included?",
									"type"    => "checkbox",
									"default" => 1,
									"fields"  => [
										1 => "Yes"
									]
								]
							]
						];
						$pricing_content = array();
						if ( $isPackageDetail4 && count( $package_info->content ) > 0 ) {
							$loop = 0;
							foreach ( $package_info->content as $pd2 ) {
								$pricing_content[ $loop ]["pd_id"]         = $pd2->id;
								$pricing_content[ $loop ]["pricing_title"] = $pd2->title;
								$pricing_content[ $loop ]["price"]         = $pd2->price;
								$pricing_content[ $loop ]["isIncluded"]    = $pd2->isIncluded;
								$loop ++;
							}
						}
						SM::smAddablePopup( $options, "pricing_content", "Pricing Detail", $pricing_content, "pricing_detail_4", 1 );
						?>
                    </div>

                    <div class="div_package div_package_5">
						<?php
						$isPackageDetail5 = isset( $package_info ) && $package_info->type == 5 ? true : false;

						$hasContentBasic = ( $isPackageDetail5 && isset( $package_info->content[0] ) ) ? true : false;
						$contentBasic = ( $hasContentBasic ) ? $package_info->content[0] : [];
						$basic_pricing_title = isset( $contentBasic->title ) ? $contentBasic->title : "STARTER";
						$priceType = isset( $contentBasic->price_type ) ? $contentBasic->price_type : 5;
						$price_basic = isset( $contentBasic->price ) ? $contentBasic->price : "";
						$pd_id_price_basic = isset( $contentBasic->id ) ? $contentBasic->id : 0;

						$subtitles = ( $isPackageDetail5 && $package_info->pricing_detail != '' ) ? SM::sm_unserialize( $package_info->pricing_detail ) : array();
						$basic_pricing_subtitle = ( isset( $subtitles['basic_pricing_subtitle'] ) ) ? $subtitles['basic_pricing_subtitle'] : "";
						?>
                        <div class=" smthemeoptionfield">
                            <div class="col-md-2">
                                {!! Form::label('pricing_detail_5_price_type','Pricing Types') !!}
                            </div>
                            <div class="col-md-9">
                                <div class="form-group">
                                    {!! Form::select('pricing_detail_5[price_type]', SM::packagePaymentType(), $priceType, ['class'=>'form-control','id'=>'pricing_detail_5_price_type']) !!}

                                </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="smthemeoptionfield">
                            <div class="col-sm-12">
                                <div class="row">
                                    <div class="col-sm-4">
                                        <div class="row">
                                            <div class="col-sm-12">
                                                <div class="sm-form">
                                                    {!! Form::label('pricing_detail_5_basic_pricing_title','Starter Pricing Title') !!}
                                                    {!! Form::text('pricing_detail_5[basic_pricing_title]', $basic_pricing_title, ['class'=>'form-control', 'placeholder'=>'Write your Starter Pricing Title here', 'id'=>'pricing_detail_5_basic_pricing_title']) !!}
                                                </div>
                                            </div>
                                            <div class="col-sm-12">
                                                <div class="sm-form">
                                                    {!! Form::label('pricing_detail_5_price_basic','Starter Price in USD') !!}
                                                    {!! Form::number('pricing_detail_5[price_basic]', $price_basic, ['class'=>'form-control', 'placeholder'=>'Write your Starter Price in USD here', 'id'=>'pricing_detail_5_price_basic']) !!}
                                                    {!! Form::hidden('pricing_detail_5[pd_id_price_basic]', $pd_id_price_basic) !!}
                                                </div>
                                            </div>
                                            <div class="col-sm-12">
                                                <div class="sm-form">
                                                    {!! Form::label('pricing_detail_5_basic_pricing_subtitle','Starter Pricing Subtitle') !!}
                                                    {!! Form::text('pricing_detail_5[subtitle][basic_pricing_subtitle]', $basic_pricing_subtitle,['class'=>'form-control', 'placeholder'=>'Write your Starter Pricing Subtitle here', 'id'=>'pricing_detail_5_basic_pricing_subtitle']) !!}
                                                </div>
                                            </div>
                                        </div>
                                    </div>
									<?php
									$hasContentSilver = ( $isPackageDetail5 && isset( $package_info->content[1] ) ) ? true : false;
									$contentSilver = ( $hasContentSilver ) ? $package_info->content[1] : [];
									$silver_pricing_title = isset( $contentSilver->title ) ? $contentSilver->title : "STANDARD";
									$price_silver = isset( $contentSilver->price ) ? $contentSilver->price : "";
									$pd_id_price_silver = isset( $contentSilver->id ) ? $contentSilver->id : 0;
									$silver_pricing_subtitle = ( isset( $subtitles['silver_pricing_subtitle'] ) ) ? $subtitles['silver_pricing_subtitle'] : "";
									?>
                                    <div class="col-sm-4">
                                        <div class="row">
                                            <div class="col-sm-12">
                                                <div class="sm-form">
                                                    {!! Form::label('pricing_detail_5_silver_pricing_title','Standard Pricing Title') !!}
                                                    {!! Form::text('pricing_detail_5[silver_pricing_title]', $silver_pricing_title, ['class'=>'form-control', 'placeholder'=>'Write your Standard Pricing Title here', 'id'=>'pricing_detail_5_silver_pricing_title']) !!}
                                                </div>
                                            </div>
                                            <div class="col-sm-12">
                                                <div class="sm-form">
                                                    {!! Form::label('pricing_detail_5_price_silver','Standard Price in USD') !!}
                                                    {!! Form::number('pricing_detail_5[price_silver]', $price_silver, ['class'=>'form-control', 'placeholder'=>'Write your Standard Price in USD here', 'id'=>'pricing_detail_5_price_silver']) !!}
                                                    {!! Form::hidden('pricing_detail_5[pd_id_price_silver]', $pd_id_price_silver) !!}
                                                </div>
                                            </div>
                                            <div class="col-sm-12">
                                                <div class="sm-form">
                                                    {!! Form::label('pricing_detail_5_silver_pricing_subtitle','Standard Pricing Subtitle') !!}
                                                    {!! Form::text('pricing_detail_5[subtitle][silver_pricing_subtitle]', $silver_pricing_subtitle, ['class'=>'form-control', 'placeholder'=>'Write your Standard Pricing Subtitle here', 'id'=>'pricing_detail_5_silver_pricing_subtitle']) !!}
                                                </div>
                                            </div>
                                        </div>
                                    </div>
									<?php
									$hasContentGold = ( $isPackageDetail5 && isset( $package_info->content[2] ) ) ? true : false;
									$contentGold = ( $hasContentGold ) ? $package_info->content[2] : [];
									$gold_pricing_title = isset( $contentGold->title ) ? $contentGold->title : "ADVANCED";
									$price_gold = isset( $contentGold->price ) ? $contentGold->price : "";
									$pd_id_price_gold = isset( $contentGold->id ) ? $contentGold->id : 0;
									$gold_pricing_subtitle = ( isset( $subtitles['gold_pricing_subtitle'] ) ) ? $subtitles['gold_pricing_subtitle'] : "";
									?>
                                    <div class="col-sm-4">
                                        <div class="row">
                                            <div class="col-sm-12">
                                                <div class="sm-form">
                                                    {!! Form::label('pricing_detail_5_gold_pricing_title','Advanced Pricing Title') !!}
                                                    {!! Form::text('pricing_detail_5[gold_pricing_title]', $gold_pricing_title, ['class'=>'form-control', 'placeholder'=>'Write your Advanced Pricing Title here', 'id'=>'pricing_detail_5_gold_pricing_title']) !!}
                                                </div>
                                            </div>
                                            <div class="col-sm-12">
                                                <div class="sm-form">
                                                    {!! Form::label('pricing_detail_5_price_gold','Advanced Price in USD') !!}
                                                    {!! Form::number('pricing_detail_5[price_gold]', $price_gold, ['class'=>'form-control', 'placeholder'=>'Write your Advanced Price in USD here', 'id'=>'pricing_detail_5_price_gold']) !!}
                                                    {!! Form::hidden('pricing_detail_5[pd_id_price_gold]', $pd_id_price_gold) !!}
                                                </div>
                                            </div>
                                            <div class="col-sm-12">
                                                <div class="sm-form">
                                                    {!! Form::label('pricing_detail_5_gold_pricing_subtitle','Advanced Pricing Subtitle') !!}
                                                    {!! Form::text('pricing_detail_5[subtitle][gold_pricing_subtitle]', $gold_pricing_subtitle, ['class'=>'form-control', 'placeholder'=>'Write your Advanced Pricing Subtitle here', 'id'=>'pricing_detail_5_gold_pricing_subtitle']) !!}
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
						<?php
						$options = [
							"type"           => "addable-popup",
							"label"          => "Pricing Plan Info",
							"desc"           => "Add your Pricing Plan Info by clicking here",
							"single_title"   => "Pricing Plan Info",
							"add_more_title" => "Add more Pricing Plan Info",
							"template"       => "basic",
							"fields"         => [
								"basic"  => [
									"label" => "Starter Plan Description",
									"type"  => "textarea",
									"extra" => [
										"rows" => 4
									]
								],
								"silver" => [
									"label" => "Standard Plan Description",
									"type"  => "textarea",
									"extra" => [
										"rows" => 4
									]
								],
								"gold"   => [
									"label" => "Advanced Plan Description",
									"type"  => "textarea",
									"extra" => [
										"rows" => 4
									]
								],
								"sub"    => [
									"type"           => "addable-popup",
									"label"          => "Sub Pricing Info",
									"desc"           => "Add your Sub Pricing Info by clicking here",
									"single_title"   => "Sub Pricing Info",
									"add_more_title" => "Add more Sub Pricing Info",
									"template"       => "basic",
									"fields"         => [
										"basic"  => [
											"label" => "Starter Plan Description",
											"type"  => "textarea",
											"extra" => [
												"rows" => 4
											]
										],
										"silver" => [
											"label" => "Standard Plan Description",
											"type"  => "textarea",
											"extra" => [
												"rows" => 4
											]
										],
										"gold"   => [
											"label" => "Advanced Plan Description",
											"type"  => "textarea",
											"extra" => [
												"rows" => 4
											]
										],
									]
								]
							]
						];
						$pricing_info = ( $isPackageDetail5 && isset( $package_info->pricing_info ) ) ? $package_info->pricing_info : array();
						SM::smAddablePopup( $options, "pricing_info", "Pricing Info", $pricing_info, "pricing_detail_5", 1 );
						?>
                    </div>
                    <div class="div_package div_package_6">
						<?php
						$isPackageDetail6 = isset( $package_info ) && $package_info->type == 6 ? true : false;

						$hasContentBasic = ( $isPackageDetail6 && isset( $package_info->content[0] ) ) ? true : false;
						$contentBasic = ( $hasContentBasic ) ? $package_info->content[0] : [];
						$basic_pricing_title = isset( $contentBasic->title ) ? $contentBasic->title : "STARTER";
						$priceType = isset( $contentBasic->price_type ) ? $contentBasic->price_type : 5;
						$price_basic = isset( $contentBasic->price ) ? $contentBasic->price : "";
						$pd_id_price_basic = isset( $contentBasic->id ) ? $contentBasic->id : 0;

						$subtitles = ( $isPackageDetail6 && $package_info->pricing_detail != '' ) ? SM::sm_unserialize( $package_info->pricing_detail ) : array();
						$basic_pricing_subtitle = ( isset( $subtitles['basic_pricing_subtitle'] ) ) ? $subtitles['basic_pricing_subtitle'] : "";
						?>
                        <div class=" smthemeoptionfield">
                            <div class="col-md-2">
                                {!! Form::label('pricing_detail_6_price_type','Pricing Types') !!}
                            </div>
                            <div class="col-md-9">
                                <div class="form-group">
                                    {!! Form::select('pricing_detail_6[price_type]', SM::packagePaymentType(), $priceType, ['class'=>'form-control','id'=>'pricing_detail_6_price_type']) !!}

                                </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="smthemeoptionfield">
                            <div class="col-sm-12">
                                <div class="row">
                                    <div class="col-sm-3">
                                        <div class="row">
                                            <div class="col-sm-12">
                                                <div class="sm-form">
                                                    {!! Form::label('pricing_detail_6_basic_pricing_title','Starter Pricing Title') !!}
                                                    {!! Form::text('pricing_detail_6[basic_pricing_title]', $basic_pricing_title, ['class'=>'form-control', 'placeholder'=>'Write your Starter Pricing Title here', 'id'=>'pricing_detail_6_basic_pricing_title']) !!}
                                                </div>
                                            </div>
                                            <div class="col-sm-12">
                                                <div class="sm-form">
                                                    {!! Form::label('pricing_detail_6_price_basic','Starter Price in USD') !!}
                                                    {!! Form::number('pricing_detail_6[price_basic]', $price_basic, ['class'=>'form-control', 'placeholder'=>'Write your Starter Price in USD here', 'id'=>'pricing_detail_6_price_basic']) !!}
                                                    {!! Form::hidden('pricing_detail_6[pd_id_price_basic]', $pd_id_price_basic) !!}
                                                </div>
                                            </div>
                                            <div class="col-sm-12">
                                                <div class="sm-form">
                                                    {!! Form::label('pricing_detail_6_basic_pricing_subtitle','Starter Pricing Subtitle') !!}
                                                    {!! Form::text('pricing_detail_6[subtitle][basic_pricing_subtitle]', $basic_pricing_subtitle, ['class'=>'form-control', 'placeholder'=>'Write your Starter Pricing Subtitle here', 'id'=>'pricing_detail_6_basic_pricing_subtitle']) !!}
                                                </div>
                                            </div>
                                        </div>
                                    </div>
									<?php
									$hasContentSilver = ( $isPackageDetail6 && isset( $package_info->content[1] ) ) ? true : false;
									$contentSilver = ( $hasContentSilver ) ? $package_info->content[1] : [];
									$silver_pricing_title = isset( $contentSilver->title ) ? $contentSilver->title : "STANDARD";
									$price_silver = isset( $contentSilver->price ) ? $contentSilver->price : "";
									$pd_id_price_silver = isset( $contentSilver->id ) ? $contentSilver->id : 0;
									$silver_pricing_subtitle = ( isset( $subtitles['silver_pricing_subtitle'] ) ) ? $subtitles['silver_pricing_subtitle'] : "";
									?>
                                    <div class="col-sm-3">
                                        <div class="row">
                                            <div class="col-sm-12">
                                                <div class="sm-form">
                                                    {!! Form::label('pricing_detail_6_silver_pricing_title','Standard Pricing Title') !!}
                                                    {!! Form::text('pricing_detail_6[silver_pricing_title]', $silver_pricing_title, ['class'=>'form-control', 'placeholder'=>'Write your Standard Pricing Title here', 'id'=>'pricing_detail_6_silver_pricing_title']) !!}
                                                </div>
                                            </div>
                                            <div class="col-sm-12">
                                                <div class="sm-form">
                                                    {!! Form::label('pricing_detail_6_price_silver','Standard Price in USD') !!}
                                                    {!! Form::number('pricing_detail_6[price_silver]', $price_silver, ['class'=>'form-control', 'placeholder'=>'Write your Standard Price in USD here', 'id'=>'pricing_detail_6_price_silver']) !!}
                                                    {!! Form::hidden('pricing_detail_6[pd_id_price_silver]', $pd_id_price_silver) !!}
                                                </div>
                                            </div>
                                            <div class="col-sm-12">
                                                <div class="sm-form">
                                                    {!! Form::label('pricing_detail_6_silver_pricing_subtitle','Standard Pricing Subtitle') !!}
                                                    {!! Form::text('pricing_detail_6[subtitle][silver_pricing_subtitle]', $silver_pricing_subtitle, ['class'=>'form-control', 'placeholder'=>'Write your Standard Pricing Subtitle here', 'id'=>'pricing_detail_6_silver_pricing_subtitle']) !!}
                                                </div>
                                            </div>
                                        </div>
                                    </div>
									<?php
									$hasContentGold = ( $isPackageDetail6 && isset( $package_info->content[2] ) ) ? true : false;
									$contentGold = ( $hasContentGold ) ? $package_info->content[2] : [];
									$gold_pricing_title = isset( $contentGold->title ) ? $contentGold->title : "ADVANCED";
									$price_gold = isset( $contentGold->price ) ? $contentGold->price : "";
									$pd_id_price_gold = isset( $contentGold->id ) ? $contentGold->id : 0;
									$gold_pricing_subtitle = ( isset( $subtitles['gold_pricing_subtitle'] ) ) ? $subtitles['gold_pricing_subtitle'] : "";
									?>
                                    <div class="col-sm-3">
                                        <div class="row">
                                            <div class="col-sm-12">
                                                <div class="sm-form">
                                                    {!! Form::label('pricing_detail_6_gold_pricing_title','Advanced Pricing Title') !!}
                                                    {!! Form::text('pricing_detail_6[gold_pricing_title]', $gold_pricing_title, ['class'=>'form-control', 'placeholder'=>'Write your Advanced Pricing Title here', 'id'=>'pricing_detail_6_gold_pricing_title']) !!}
                                                </div>
                                            </div>
                                            <div class="col-sm-12">
                                                <div class="sm-form">
                                                    {!! Form::label('pricing_detail_6_price_gold','Advanced Price in USD') !!}
                                                    {!! Form::number('pricing_detail_6[price_gold]', $price_gold, ['class'=>'form-control', 'placeholder'=>'Write your Advanced Price in USD here', 'id'=>'pricing_detail_6_price_gold']) !!}
                                                    {!! Form::hidden('pricing_detail_6[pd_id_price_gold]', $pd_id_price_gold) !!}
                                                </div>
                                            </div>
                                            <div class="col-sm-12">
                                                <div class="sm-form">
                                                    {!! Form::label('pricing_detail_6_gold_pricing_subtitle','Advanced Pricing Subtitle') !!}
                                                    {!! Form::text('pricing_detail_6[subtitle][gold_pricing_subtitle]', $gold_pricing_subtitle, ['class'=>'form-control', 'placeholder'=>'Write your Advanced Pricing Subtitle here', 'id'=>'pricing_detail_6_gold_pricing_subtitle']) !!}
                                                </div>
                                            </div>
                                        </div>
                                    </div>
									<?php
									$hasContentPremium = ( $isPackageDetail6 && isset( $package_info->content[3] ) ) ? true : false;
									$contentPremium = ( $hasContentPremium ) ? $package_info->content[3] : [];
									$premium_pricing_title = isset( $contentPremium->title ) ? $contentPremium->title : "PREMIUM";
									$price_premium = isset( $contentPremium->price ) ? $contentPremium->price : "";
									$pd_id_price_premium = isset( $contentPremium->id ) ? $contentPremium->id : 0;
									$premium_pricing_subtitle = ( isset( $subtitles['premium_pricing_subtitle'] ) ) ? $subtitles['premium_pricing_subtitle'] : "";
									?>
                                    <div class="col-sm-3">
                                        <div class="row">
                                            <div class="col-sm-12">
                                                <div class="sm-form">
                                                    {!! Form::label('pricing_detail_6_premium_pricing_title','Premium Pricing Title') !!}
                                                    {!! Form::text('pricing_detail_6[premium_pricing_title]', $premium_pricing_title, ['class'=>'form-control', 'placeholder'=>'Write your Premium Pricing Title here', 'id'=>'pricing_detail_6_premium_pricing_title']) !!}
                                                </div>
                                            </div>
                                            <div class="col-sm-12">
                                                <div class="sm-form">
                                                    {!! Form::label('pricing_detail_6_price_premium','Premium Price in USD') !!}
                                                    {!! Form::number('pricing_detail_6[price_premium]', $price_premium, ['class'=>'form-control', 'placeholder'=>'Write your Premium Price in USD here', 'id'=>'pricing_detail_6_price_premium']) !!}
                                                    {!! Form::hidden('pricing_detail_6[pd_id_price_premium]', $pd_id_price_premium) !!}
                                                </div>
                                            </div>
                                            <div class="col-sm-12">
                                                <div class="sm-form">
                                                    {!! Form::label('pricing_detail_6_premium_pricing_subtitle','Premium Pricing Subtitle') !!}
                                                    {!! Form::text('pricing_detail_6[subtitle][premium_pricing_subtitle]', $premium_pricing_subtitle, ['class'=>'form-control', 'placeholder'=>'Write your Premium Pricing Subtitle here', 'id'=>'pricing_detail_6_premium_pricing_subtitle']) !!}
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
						<?php
						$options = [
							"type"           => "addable-popup",
							"label"          => "Pricing Plan Info",
							"desc"           => "Add your Pricing Plan Info by clicking here",
							"single_title"   => "Pricing Plan Info",
							"add_more_title" => "Add more Pricing Plan Info",
							"template"       => "basic",
							"fields"         => [
								"basic"   => [
									"label" => "Starter Plan Description",
									"type"  => "textarea",
									"extra" => [
										"rows" => 4
									]
								],
								"silver"  => [
									"label" => "Standard Plan Description",
									"type"  => "textarea",
									"extra" => [
										"rows" => 4
									]
								],
								"gold"    => [
									"label" => "Advanced Plan Description",
									"type"  => "textarea",
									"extra" => [
										"rows" => 4
									]
								],
								"premium" => [
									"label" => "Premium Plan Description",
									"type"  => "textarea",
									"extra" => [
										"rows" => 4
									]
								],
								"sub"     => [
									"type"           => "addable-popup",
									"label"          => "Sub Pricing Info",
									"desc"           => "Add your Sub Pricing Info by clicking here",
									"single_title"   => "Sub Pricing Info",
									"add_more_title" => "Add more Sub Pricing Info",
									"template"       => "basic",
									"fields"         => [
										"basic"   => [
											"label" => "Starter Plan Description",
											"type"  => "textarea",
											"extra" => [
												"rows" => 4
											]
										],
										"silver"  => [
											"label" => "Standard Plan Description",
											"type"  => "textarea",
											"extra" => [
												"rows" => 4
											]
										],
										"gold"    => [
											"label" => "Advanced Plan Description",
											"type"  => "textarea",
											"extra" => [
												"rows" => 4
											]
										],
										"premium" => [
											"label" => "Premium Plan Description",
											"type"  => "textarea",
											"extra" => [
												"rows" => 4
											]
										],
									]
								]
							]
						];
						$pricing_info = ( $isPackageDetail6 && isset( $package_info->pricing_info ) ) ? $package_info->pricing_info : array();
						SM::smAddablePopup( $options, "pricing_info", "Pricing Info", $pricing_info, "pricing_detail_6", 1 );
						?>
                    </div>
                </div>
            </div>
            <!-- end widget content -->

        </div>
        <!-- end widget div -->

    </div>
    <!-- end widget -->

</article>
<!-- WIDGET END -->
@include('sm-admin/common/common/meta_info',['header_name'=>'Package',
'width'=>'col-lg-12'])