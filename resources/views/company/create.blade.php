@extends('layouts.main')
@section('title')
Sistem Informasi Data Inventori dan Perangkat Lunak
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
            <li>Master Company Perangkat Lunak</li>
            <li class="active">Tambah Company Perangkat Lunak</li>
          </ol>
        </section>


<section class="content">
    <div class="box box-primary">
                <div class="box-header with-border">
                  <h3 class="box-title">Tambah Company Perangkat Lunak</h3>
                </div><!-- /.box-header -->
                
                 
                <!-- form start -->
                {{ Form::open(array('route' => array('simpan_company'), 'method'=>'POST')) }}

@include('company.form')
    </div>
</section>
    </div>



@endsection