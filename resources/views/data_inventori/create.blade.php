@extends('layouts.main')
@section('title')
Sistem Informasi Data Inventori dan Perangkat Lunak
@endsection


@section('content')
<div class="content-wrapper">
  <section class="content-header">
    <h1>Master Data Inventori</h1>
    <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
      <li>Master Data Inventori</li>
      <li class="active">Tambah Data Inventori</li>
    </ol>
  </section>


<section class="content">
    <div class="box box-primary">
                <div class="box-header with-border">
                  <h3 class="box-title">Tambah Data Inventori</h3>
                </div><!-- /.box-header -->
                
                 <div class="box-body">
                    <div class="row">
                      <div class="col-md-6">
                        {{ Form::open(array('route' => array('simpan_data_inventori'), 'method'=>'POST')) }}
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