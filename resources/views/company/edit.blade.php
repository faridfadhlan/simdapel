@extends('layouts.main')
@section('title')
Sistem Informasi Data Inventori dan Perangkat Lunak
@endsection


@section('content')
<div class="content-wrapper">
          <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            Master Company Perangkat Lunak
            <!--<small>Control panel</small>-->
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li>Master Company Perangkat Lunak</li>
            <li class="active">Edit Company Perangkat Lunak</li>
          </ol>
        </section>


<section class="content">
<div class="box box-primary">
                <div class="box-header with-border">
                  <h3 class="box-title">Edit Company Perangkat Lunak</h3>
                </div><!-- /.box-header -->
                <!-- form start -->
                {{ Form::open(array('route' => array('update_company', $company->id), 'method'=>'PUT')) }}
@include('company.form')

</section>
    </div>



@endsection