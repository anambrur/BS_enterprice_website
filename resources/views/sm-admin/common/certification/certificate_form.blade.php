<?php
/**
 * Created by PhpStorm.
 * User: mrksohag
 * Date: 8/12/17
 * Time: 9:59 AM
 */
?>
<article class="col-xs-12 col-sm-12 col-md-8 col-lg-8">

    <!-- Widget ID (each widget will need unique ID)-->
    <div class="jarviswidget" id="wid-add-slider-main" data-widget-editbutton="false" data-widget-deletebutton="false">

        <header>
            <span class="widget-icon"> <i class="fa fa-sliders"></i> </span>
            <h2>{{ $f_name }} {{ __('common.certifictions') }}</h2>

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
                    @include('sm-admin.common.common.title_n_slug', [
                        'isEnabledSlug' => false,
                        'table' => 'certifications',
                    ])
                    <div class="sm-form{{ $errors->has('description') ? ' has-error' : '' }}">
                        {!! Form::label('description', __('common.description')) !!}
                        {!! Form::textarea('description', $certification[0]->description ?? null, ['class' => 'form-control', 'placeholder' => __('common.description')]) !!}
                        @if ($errors->has('description'))
                            <span class="help-block">
                                <strong>{{ $errors->first('description') }}</strong>
                            </span>
                        @endif
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
    <div class="jarviswidget" id="wid-add-user-publish" data-widget-editbutton="false" data-widget-deletebutton="false">

        <header>
            <span class="widget-icon"> <i class="fa fa-save"></i> </span>
            <h2>{{ __('common.certifictions') }} {{ __('common.publish') }}</h2>

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
				if (SM::is_admin() || isset( $permission ) && isset( $permission['sliders']['slider_status_update'] ) && $permission['sliders']['slider_status_update'] == 1)
				{
				?>
                <div class="form-group{{ $errors->has('status') ? ' has-error' : '' }}">
                    {!! Form::label('status', __('common.certifictions') . ' ' . __('common.publicationStatus')) !!}
                    {!! Form::select('status', ['1' => 'Publish', '2' => 'Pending / Draft', '3' => 'Cancel'], null, [
                        'required' => '',
                        'class' => 'form-control',
                    ]) !!}
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
                    <button class="btn btn-success btn-block" type="submit">
                        <i class="fa fa-save"></i>
                        {{ $btn_name }} {{ __('common.certifictions') }}
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

if (old('image')) {
    $image = old('image');
} elseif (isset($certification[0]->image)) {
    $image = $certification[0]->image;
} else {
    $image = '';
}
?>
@include('sm-admin/common/common/image_form', ['header_name' => 'Certifictions', 'image' => $image])
