<!-- NEW WIDGET START -->
<article class="col-xs-12 col-sm-12 col-md-8 col-lg-8">
   <!-- Widget ID (each widget will need unique ID)-->
   <div class="jarviswidget" id="" data-widget-editbutton="false" data-widget-deletebutton="false">
      <header>
         <span class="widget-icon"> <i class="fa fa-user"></i> </span>
         <h2>{{ $f_name }} Services</h2>
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
                  @include("sm-admin.common.common.title_n_slug", ['isEnabledSlug'=>true, 'table'=>'services'])
               </div>
               <div class="col-sm-12">
                  <div class="form-group{{ $errors->has('description') ? ' has-error' : '' }}">
                     {!! Form::label('description','Services Description')!!}
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
         <h2>Services Category</h2>
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
            <div class="form-group{{ $errors->has('categories') ? ' has-error' : '' }}">
               {!! Form::label('categories','Select Main Category') !!} 
               {!! Form::select('categories',$category_lists,null,['class'=>'select2 selectMCategories', 'required'=>'true', 'placeholder'=>'Please Select...']) !!}
               @if ($errors->has('categories'))
               <span class="help-block">
               <strong>{{ $errors->first('categories') }}</strong>
               </span>
               @endif  
            </div>
            <div class="form-group{{ $errors->has('sCategories') ? ' has-error' : '' }}">
               {!! Form::label('sCategories','Select Sub Category') !!}

                <select required="" name="state" id="state" class="form-control state p_complete" required="" data-onload="<?php echo isset($user->categories->title) ? $user->categories->title : ""; ?>">
                    <option value="#">Select State / Province</option>
                </select>

               <select name="sCategories" id="sCategories" class="form-control selectSCategories" >
                  <option value="" selected="true">---Select Sub Category---</option>
               </select>
               @if ($errors->has('sCategories'))
               <span class="help-block">
               <strong>{{ $errors->first('sCategories') }}</strong>
               </span>
               @endif  
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
         <h2>Services Publish</h2>
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
               {{ $btn_name }} Services
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
   } elseif (isset($user->image)) {
       $image = $user->image;
   } else {
       $image = '';
   }
   ?>
@include(('sm-admin/common/common/image_form'),['header_name'=>'Services', 'image'=>$image])
@include('sm-admin/common/common/meta_info',['header_name'=>'Services', 'width'=>'col-lg-12'])