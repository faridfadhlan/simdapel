@extends('layouts.main')
@section('title')
Sistem Informasi Data Inventori dan Perangkat Lunak
@endsection


@section('content')
<div class="content-wrapper">
          <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            Master Data Inventori
            <!--<small>Control panel</small>-->
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li>Master Data Inventori</li>
            <li class="active">Edit Data Inventori</li>
          </ol>
        </section>


<section class="content">
    <div class="box box-primary">
                <div class="box-header with-border">
                  <h3 class="box-title">Edit Data Inventori</h3>
                </div><!-- /.box-header -->
                
                 <div class="box-body">
                    <div class="row">
                        <div class="col-md-6">
                <!-- form start -->
                {{ Form::open(array('route' => array('update_data_inventori', $data->id), 'method'=>'PUT')) }}

@include('data_inventori.form')

</div>
                        </div>
                    </div>
                    
                  <div class="box-footer">
                    <button type="submit" class="btn btn-primary">Submit</button>
                  </div>
                {{ Form::close() }}
    </div>
</section>
    </div>



@endsection