@extends(('sm-admin/master'))
@section('title','Career list')
@section('content')

<?php
$edit_page = SM::check_this_method_access('career', 'edit') ? 1 : 0;
$page_status_update = SM::check_this_method_access('career', 'career_status_update') ? 1 : 0;
$delete_page = SM::check_this_method_access('career', 'delete_page') ? 1 : 0;
$per = $edit_page + $delete_page;
?>
<section id="widget-grid" class="">

   <!-- row -->
   <div class="row">

      <!-- NEW WIDGET START -->
      <article class="col-xs-12 col-sm-12 col-md-12 col-lg-12">

         <!-- Widget ID (each widget will need unique ID)-->
         <div class="jarviswidget" id="page_list_wid">
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
               <span class="widget-icon"> <i class="fa fa-pagelines"></i> </span>
               <h2>Career list </h2>

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
               <div class="widget-body table-responsive">

                  <!-- this is what the user will see -->
                  <table id="manage_page" class="table table-striped table-bordered data_table" width="100%">

                     <thead>
                        <tr>
                           <th>ID</th>
                           <th>Title</th>
                           <th>Applys Count</th>
                           <th>Start</th>
                           <th>End</th>
                           <?php if ($page_status_update != 0): ?>
                              <th class="text-center">Status</th>
                           <?php endif; ?>
                           <?php if ($per != 0): ?>
                              <th class="text-center">Action</th>
                           <?php endif; ?>
                        </tr>
                     </thead>
                     <tbody id="dataBody">
                     @include('sm-admin.common.career.careers')
                     </tbody>
                     <tfoot>
                        <tr>
                           <th>ID</th>
                           <th>Title</th>
                           <th>Applys Count</th>
                           <th>Start</th>
                           <th>End</th>
                           <?php if ($page_status_update != 0): ?>
                              <th class="text-center">Status</th>
                           <?php endif; ?>
                           <?php if ($per != 0): ?>
                              <th class="text-center">Action</th>
                           <?php endif; ?>
                        </tr>
                     </tfoot>

                  </table>
                  @include('sm-admin.common.common.pagination_links', ['smPagination'=>$pages])




               </div>
               <!-- end widget content -->

            </div>
            <!-- end widget div -->

         </div>
         <!-- end widget -->

      </article>
      <!-- WIDGET END -->

   </div>

   <!-- end row -->

</section>
@endsection

