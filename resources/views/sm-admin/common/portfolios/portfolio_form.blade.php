<!-- NEW WIDGET START -->

<article class="col-xs-12 col-sm-12 col-md-8 col-lg-8">

    <!-- Widget ID (each widget will need unique ID)-->

    <div class="jarviswidget" id="" data-widget-editbutton="false" data-widget-deletebutton="false">

        <header>

            <span class="widget-icon"> <i class="fa fa-user"></i> </span>

            <h2>{{ $f_name }} Gallery</h2>

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

                    @include("sm-admin.common.common.title_n_slug", ['isEnabledSlug'=>true, 'table'=>'Gallery'])

                    <div class="col-md-12 hidden">

                        <div class="col-md-6">

                            <div class="form-group{{ $errors->has('link') ? ' has-error' : '' }}">

                                {!! Form::label('link','Portfolio Link')!!}

                                {!! Form::text('link', null,['class'=>'form-control', 'placeholder' => 'www.example.com']) !!}

                                @if ($errors->has('link'))

                                    <span class="help-block">

                                <strong>{{ $errors->first('link') }}</strong>

                            </span>

                                @endif

                            </div>

                        </div>

                        <div class="col-md-6">

                            <div class="form-group{{ $errors->has('duration') ? ' has-error' : '' }}">

                                {!! Form::label('duration','Duration')!!}

                                {!! Form::text('duration', null,['class'=>'form-control', 'placeholder' => 'Duration']) !!}

                                @if ($errors->has('duration'))

                                    <span class="help-block">

                                <strong>{{ $errors->first('duration') }}</strong>

                            </span>

                                @endif

                            </div>

                        </div>

                    </div>





                    <div class="col-sm-12" style="padding: 0px;">

                        <div class="form-group{{ $errors->has('description') ? ' has-error' : '' }}">

                            {!! Form::label('description','Gallery Description')!!}

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

    <div class="jarviswidget" id="wid-id-category-publish" data-widget-editbutton="false"

         data-widget-deletebutton="false">

        <header>

            <span class="widget-icon"> <i class="fa fa-save"></i> </span>

            <h2>Gallery Category</h2>

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

                <div class="form-group">

                    {!! Form::label('sortby','Sort By')!!}

                    {!! Form::text('sortby', null,['placeholder'=>'Sort By sortby','class'=>'form-control']) !!}

                </div>

                <div class="sm-form form-group {{ $errors->has('parent_id') ? ' has-error' : '' }}">



                    {!! Form::label('categories','Gallery Categories') !!}

                    <?php

                    if ( isset( $all_categories ) && count( $all_categories ) > 0 ) {

                        foreach ( $all_categories as $category ) {

                            $cat_select_array[ $category->id ] = $category->title;

                            $return_val                        = SM::category_tree_for_select_option( $category->id, 0 );

                            $cat_select_array                  = SM::sm_multi_array_to_sangle_array( $cat_select_array, $return_val );

                        }

                    } else {

                        $cat_select_array[0] = 'Select Category';

                    }

                    ?>



                    {!! Form::select('categories[]', $cat_select_array, null, ['class'=>'select2','multiple'=>'']) !!}

                    @if ($errors->has('categories'))

                        <span class="help-block dark-red">

                          <strong>{{ $errors->first('categories') }}</strong>

                       </span>

                    @endif

                </div>

                <div class="form-group">

                    {!! Form::label('tags','Gallery Teconology')!!}

                    {!! Form::text('tags', null,['placeholder'=>'Type and enter your tag','class'=>'form-control', 'data-role'=>'tagsinput']) !!}

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

    <div class="jarviswidget" id="" data-widget-editbutton="false" data-widget-deletebutton="false">

        <header>

            <span class="widget-icon"> <i class="fa fa-save"></i> </span>

            <h2>Gallery Publish</h2>

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

                <div class="form-group">

                    <button class="btn btn-success btn-block" type="submit">

                        <i class="fa fa-save"></i>

                        {{ $btn_name }} Gallery

                    </button>

                </div>

            </div>

            <!-- end widget content -->

        </div>

        <!-- end widget div -->

    </div>

    <!-- end widget -->

</article><!-- WIDGET END -->

<?php

if (old('image')) {

    $image = old('image');

} elseif (isset($blog_info->image)) {

    $image = $blog_info->image;

} else {

    $image = '';

}



if (old('image_gallery')) {

   $image_gallery = old('image_gallery');

} elseif (isset($blog_info->image_gallery)) {

  $image_gallery = json_decode($blog_info->image_gallery);

  $image_gallery = implode(',',$image_gallery);

} else {

   $image_gallery = '';

}



// $image_gallery='';

// var_dump($image_gallery);

// exit;
// dd($image_gallery);
?>



@include(('sm-admin/common/common/gallary_form'),['header_name'=>'Gallery', 'image_gallery'=>$image_gallery])

@include('sm-admin/common/common/image_form',['header_name'=>'Gallery','image'=>$image])

{{--@include('sm-admin/common/common/meta_info',['header_name'=>'Gallery', 'width'=>'col-lg-8'])--}}

