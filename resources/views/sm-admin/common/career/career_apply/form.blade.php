<!-- NEW WIDGET START -->
<article class="col-xs-12 col-sm-12 col-md-8 col-lg-8">

    <!-- Widget ID (each widget will need unique ID)-->
    <div class="jarviswidget" id="wid-add-category-main" data-widget-editbutton="false"
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
            <h2>{{ $f_name }} Career</h2>

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
                        @include("sm-admin.common.common.title_n_slug", ['isEnabledSlug'=>true, 'table'=>'careers', 'name'=>'title'])
                    </div>
                    <div class="col-sm-6">
                        <div class="form-group{{ $errors->has('start_date') ? ' has-error' : '' }}">
                            {!! Form::label('start_date','Start Date')!!}
                            {!! Form::text('start_date', null,['class'=>'form-control datepicker', 'placeholder' => 'Start Date']) !!}
                            @if ($errors->has('start_date'))
                                <span class="help-block">
                                    <strong>{{ $errors->first('start_date') }}</strong>
                                 </span>
                            @endif
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="form-group{{ $errors->has('end_date') ? ' has-error' : '' }}">
                            {!! Form::label('end_date','End Date')!!}
                            {!! Form::text('end_date', null,['class'=>'form-control datepicker', 'placeholder' => 'End Date']) !!}
                            @if ($errors->has('end_date'))
                                <span class="help-block">
                                    <strong>{{ $errors->first('end_date') }}</strong>
                                 </span>
                            @endif
                        </div>
                    </div>
                    <div class="col-sm-12">
                        <div class="form-group{{ $errors->has('content') ? ' has-error' : '' }}">
                            {!! Form::label('content','Career Content')!!}
                            {!! Form::textarea('content', null,['class'=>'form-control ckeditor ']) !!}
                            @if ($errors->has('content'))
                                <span class="help-block">
                                    <strong>{{ $errors->first('content') }}</strong>
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
    <div class="jarviswidget" id="wid-id-category-publish" data-widget-editbutton="false"
         data-widget-deletebutton="false">

        <header>
            <span class="widget-icon"> <i class="fa fa-save"></i> </span>
            <h2>Career Publish</h2>

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
                if (SM::is_admin() || isset($permission) && isset($permission['career']['career_status_update']) && $permission['career']['career_status_update'] == 1)
                {
                ?>
                <div class="form-group{{ $errors->has('status') ? ' has-error' : '' }}">
                    {!! Form::label('status', 'Publication Status') !!}
                    {!! Form::select('status',['1'=>'Publish','2'=>'Pending / Draft', '3'=>'Cancel'],null,['required'=>'','class'=>'form-control']) !!}
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
                        {{ $btn_name }} Career
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
if (old('banner_image')) {
    $image = old('banner_image');
} elseif (isset($career_info->banner_image)) {
    $image = $career_info->banner_image;
} else {
    $image = '';
}
?>
@include('sm-admin/common/common/image_form',['header_name'=>'Career Banner',
'image'=>$image])
@include('sm-admin/common/common/meta_info',['header_name'=>'Career',
'width'=>'col-lg-12'])