@extends('layouts.main')
@section('title')
Sistem Informasi Data Inventori dan Perangkat Lunak
@endsection
@section('script_bawah')
<script src="{{ asset('/public/plugins/datepicker/bootstrap-datepicker.js') }}"></script>
<link rel="stylesheet" href="{{ asset('/public/plugins/datepicker/datepicker3.css') }}">
<script>      
        $(".datepicker").datepicker({
            format: 'yyyy-mm-dd',
        });
</script>
@endsection


@section('content')
<div class="content-wrapper">
          <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            Master Data Perangkat Lunak
            <!--<small>Control panel</small>-->
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li>Master Data Perangkat Lunak</li>
            <li class="active">Tambah Data Perangkat Lunak</li>
          </ol>
        </section>


<section class="content">
    <div class="box box-primary">
                <div class="box-header with-border">
                  <h3 class="box-title">Tambah Data Perangkat Lunak</h3>
                </div><!-- /.box-header -->
                
                 <div class="box-body">
                    <div class="row">
                        <div class="col-md-6">
                <!-- form start -->
                {{ Form::open(array('route' => array('simpan_perangkatlunak'), 'method'=>'POST', 'files'=>true)) }}

@include('perangkat_lunak.form')
    </div>
</section>
    </div>



@endsection