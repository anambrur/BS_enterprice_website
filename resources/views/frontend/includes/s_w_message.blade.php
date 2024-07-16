@if(Session::has('flash_message'))
 <div class="col-8 mx-auto">
    <div class="box box-default">
       <!-- /.box-header -->
       <div class="box-body">
          <div class="callout callout-success alert alert-success alert-dismissible s_w_message">
             <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
             <h4><i class="fa fa-check"></i> Success!</h4>
             {!! session('flash_message') !!}
          </div>
       </div>
       <!-- /.box-body -->
    </div>
    <!-- /.box -->
 </div>
 @endif
 <div class="col-8 mx-auto">
    @include ('errors.list') {{-- Including error file --}}
 </div>
 <!-- content -->
 @if(Session::has("w_message"))
 <div class="container">
    <div class="row">
       <div class="col-sm-12">
          <div class="alert alert-warning margin-top-20 s_w_message" role="alert">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span
                        aria-hidden="true">&times;</span></button>
            <i class="fa fa-warning"></i> <strong>Warning!</strong> {{ Session::get("w_message") }}
        </div>
       </div>
    </div>
 </div>
 <?php
    Session::forget( "w_message" );
    Session::save();
    ?>
 @endif
 @if(Session::has("s_message"))
 <div class="container">
    <div class="row">
       <div class="col-sm-12">
         <div class="alert alert-success margin-top-20 s_w_message">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span
                        aria-hidden="true">&times;</span></button>
            <i class="fa fa-check"></i> <strong>Success!</strong> {{ Session::get("s_message") }}
        </div>
       </div>
    </div>
 </div>
 <?php
    Session::forget( "s_message" );
    Session::save();
    ?>
 @endif
 @if(session("status"))
 <div class="container">
    <div class="row">
       <div class="col-sm-12">
           <div class="alert alert-success margin-top-20 s_w_message">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span
                        aria-hidden="true">&times;</span></button>
            <i class="fa fa-check"></i> <strong>Success!</strong> {{ Session::get("status") }}
        </div>
       </div>
    </div>
 </div>
 @endif
@push('js')
    <script>
        window.setTimeout(function () {
            $(".s_w_message").fadeTo(500, 0).slideUp(500, function () {
                $(this).remove();
            });
        }, 4000);
    </script>
@endpush