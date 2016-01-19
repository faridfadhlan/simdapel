@extends('layouts.main')
@section('title')
Sistem Informasi Data Inventori dan Perangkat Lunak
@endsection


@section('content')
<div class="content-wrapper">
          <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            Master Media Perangkat Lunak
            <!--<small>Control panel</small>-->
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li>Master Media Perangkat Lunak</li>
            <li class="active">Tambah Media Penyimpanan Perangkat Lunak</li>
          </ol>
        </section>


<section class="content">
    <div class="box box-primary">
<div class="box-header with-border">
                  <h3 class="box-title">Tambah Media Penyimpanan Perangkat Lunak</h3>
                </div><!-- /.box-header -->
                <!-- form start -->
                {{ Form::open(array('route' => array('simpan_media'), 'method'=>'POST')) }}
@include('media.form')
<div class="box-footer">
                    <button type="submit" class="btn btn-primary">Simpan</button>
                  </div>
                {{ Form::close() }}
    </div>

</section>
    </div>



@endsection