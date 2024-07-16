<!-- NEW WIDGET START -->
<article class="col-xs-12 col-sm-12 col-md-8 col-lg-8">

    <!-- Widget ID (each widget will need unique ID)-->
    <div class="jarviswidget" id="" data-widget-editbutton="false"
         data-widget-deletebutton="false">
        <header>
            <span class="widget-icon"> <i class="fa fa-building"></i> </span>
            <h2>{{ $f_name }} Product</h2>

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
                        @include("sm-admin.common.common.title_n_slug", ['isEnabledSlug'=>true, 'table'=>'products'])
                    </div>
                    <div class="col-sm-12">
                        <div class="sm-form{{ $errors->has('batch_no') ? ' has-error' : '' }}">
                            {!! Form::label('batch_no',__("Application"))!!}
                            {!! Form::text('batch_no', null,['required'=>'','class'=>'form-control', 'placeholder'=>__("Application")]) !!}
                            @if ($errors->has('batch_no'))
                            <span class="help-block">
                                <strong>{{ $errors->first('batch_no') }}</strong>
                            </span>
                            @endif
                        </div>
                    </div>
                    {{-- <div class="col-sm-12">
                        <div class="sm-form{{ $errors->has('packsize') ? ' has-error' : '' }}">
                            {!! Form::label('packsize',__("Packsize"))!!}
                            {!! Form::input('number','packsize', null,['required'=>'','class'=>'form-control', 'placeholder'=>__("Packsize")]) !!}
                            @if ($errors->has('packsize'))
                            <span class="help-block">
                                <strong>{{ $errors->first('packsize') }}</strong>
                            </span>
                            @endif
                        </div>


                    </div> --}}
                    {{-- <div class="col-sm-12">
                        <div class="sm-form{{ $errors->has('buying_price') ? ' has-error' : '' }}">
                            {!! Form::label('buying_price',__("Buying Price"))!!}
                            {!! Form::input('number','buying_price', null,['required'=>'','class'=>'form-control', 'placeholder'=>__("0.00")]) !!}
                            @if ($errors->has('buying_price'))
                            <span class="help-block">
                                <strong>{{ $errors->first('buying_price') }}</strong>
                            </span>
                            @endif
                        </div>
                    </div> --}}
                    {{-- <div class="col-sm-12">
                        <div class="sm-form{{ $errors->has('selling_price') ? ' has-error' : '' }}">
                            {!! Form::label('title',__("Selling Price"))!!}
                            {{ Form::input('number','selling_price', null,['required'=>'','class'=>'form-control', 'placeholder'=>__("0.00")])}}

                            @if ($errors->has('selling_price'))
                            <span class="help-block">
                                <strong>{{ $errors->first('selling_price') }}</strong>
                            </span>
                            @endif
                        </div>
                    </div> --}}
                    <div class="col-sm-12">
                        <div class="form-group{{ $errors->has('description') ? ' has-error' : '' }}">
                            {!! Form::label('description','Product Description')!!}
                            {!! Form::textarea('description', null,['class'=>'form-control ckeditor']) !!}
                            @if ($errors->has('description'))
                            <span class="help-block">
                                <strong>{{ $errors->first('description') }}</strong>
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
    <div class="jarviswidget" id="" data-widget-editbutton="false"
         data-widget-deletebutton="false">

        <header>
            <span class="widget-icon"> <i class="fa fa-save"></i> </span>
            <h2>Categories && Suppliers</h2>
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

                <div class="form-group {{ $errors->has('category_id') ? ' has-error' : '' }}">

                    {!! Form::label('categories','Category') !!}
                    <?php
                    $cat_select_array['0'] = 'Select Category';
                    if (isset($categories) && count($categories) > 0) {
                        foreach ($categories as $category) {
                            $cat_select_array[$category->id] = $category->title;
                            $return_val = SM::category_tree_for_select_option($category->id, 0);
                            $cat_select_array = SM::sm_multi_array_to_sangle_array($cat_select_array, $return_val);
                        }
                    }
                    if (isset($category_info->id) && isset($cat_select_array[$category_info->id])) {
                        unset($cat_select_array[$category_info->id]);
                    }
                    ?>
                    {!! Form::select('category_id',$cat_select_array,null,['class'=>'form-control']) !!}
                    @if ($errors->has('parent_id'))
                    <span class="help-block">
                        <strong>{{ $errors->first('category_id') }}</strong>
                    </span>
                    @endif
                </div>





            </div>
            <!-- end widget content -->
        </div>
        <!-- end widget div -->
    </div>
    <!-- end widget -->

    <!-- Widget ID (each widget will need unique ID)-->
    <div class="jarviswidget" id="" data-widget-editbutton="false"
         data-widget-deletebutton="false">

        <header>
            <span class="widget-icon"> <i class="fa fa-save"></i> </span>
            <h2>Product Publish</h2>
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
                if (SM::is_admin() || isset($permission) && isset($permission['products']['product_status_update']) && $permission['products']['product_status_update'] == 1) {
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
                    <button class="btn btn-success btn-block " id="" type="submit">
                        <i class="fa fa-save"></i>
                        {{ $btn_name }} Product
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
} elseif (isset($package_info->image)) {
    $image = $package_info->image;
} else {
    $image = '';
}
?>
@include('sm-admin/common/common/image_form',['header_name'=>'Product',
'image'=>$image])

