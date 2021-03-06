@extends('layouts.main')
@section('title')
Sistem Informasi Data Inventori dan Perangkat Lunak
@endsection

@section('judul')
Tambah Pengguna
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
            <li class="active">Tambah Pengguna</li>
          </ol>
        </section>
        <section class="content">
              <div class="box box-primary">
                    @include('user.form')
              </div>
        </section>
</div>
@endsection