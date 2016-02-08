@extends('layouts.main')
@section('title')
Sistem Informasi Data Inventori dan Perangkat Lunak
@endsection



@section('content')
<div class="content-wrapper">
        <section class="content-header">
          <h1>
            Transaksi Peminjaman Software
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li>Transaksi Peminjaman Software</li>
            <li class="active">Tambah Peminjaman Software</li>
          </ol>
            
        </section>
        <section class="content">
              <div class="box box-primary">                  
                <div class="box-body">
                    @include('peminjaman_pl.form')
              </div>
              </div>
        </section>
      </div>
@endsection
