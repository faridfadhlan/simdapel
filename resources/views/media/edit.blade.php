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
            <li class="active">Edit Media Perangkat Lunak</li>
          </ol>
        </section>


<section class="content">
    <div class="box box-primary">

@include('media.form')
    </div>

</section>
    </div>



@endsection