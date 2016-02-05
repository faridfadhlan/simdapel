@extends('layouts.main')
@section('title')
Sistem Informasi Data Inventori dan Perangkat Lunak
@endsection

@section('judul')
Edit Pengguna
@endsection



@section('content')
<div class="content-wrapper">
        <section class="content-header">
          <h1>
            Master Pengguna
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li>Master Pengguna</li>
            <li class="active">Edit Pengguna</li>
          </ol>
        </section>
        <section class="content">
              <div class="box box-primary">
                    @include('user.form_update')
              </div>
        </section>
</div>
@endsection