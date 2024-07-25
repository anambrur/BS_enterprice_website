@extends('sm-admin.master')
@section('title', 'Edit Certification')
@section('content')
    @include('sm-admin/common/media/media_pop_up')
    <section id="widget-grid" class="">

        <!-- row -->
        <div class="row">

            {!! Form::open(['method' => 'patch', 'route' => 'updateCertifications']) !!}
            @include('sm-admin/common/certification/certificate_form', [
                'f_name' => __('common.add'),
                'btn_name' => __('common.save'),
            ])
            {!! Form::close() !!}

        </div>

        <!-- end row -->

    </section>
@endsection