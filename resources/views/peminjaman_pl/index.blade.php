@extends('layouts.main')
@section('title')
Sistem Informasi Data Inventori dan Perangkat Lunak
@endsection



@section('content')
<div class="content-wrapper">
        <section class="content-header">
          <h1>
            Peminjaman Perangkat Lunak
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li>Master Peminjaman Perangkat Lunak</li>
            <li class="active">Data Peminjaman Perangkat Lunak</li>
          </ol>
            <br />
            <div>
                <a class="btn btn-block btn-primary" style="display:inline;" href="{{ URL::to('peminjaman_perangkatlunak/create') }}">Tambah Peminjaman</a>
            </div>
        </section>
        <section class="content">
              <div class="box box-primary">
                  
                <div class="box-body">
                  <table id="tabel1" class="table table-bordered table-striped">
                    <thead>
                      <tr>
                          <th class="text-center">ID</th>
                        <th class="text-center">Nama</th>
                        <th class="text-center">Perangkat Lunak</th>
                        <th class="text-center">Tanggal Pinjam</th>
                        <th class="text-center">Tanggal Kembali</th>
                        <th class="text-center">Aksi</th>
                      </tr>
                    </thead>
                    <tbody>
                    @foreach($transaksis as $transaksi)
                      <tr>
                          <td class="text-center">{{ $transaksi->id }}</td>
                        <td>{{ $transaksi->peminjam->nama }}</td>
                        <td>{{ $transaksi->perangkatlunak->nama }}</td>
                        <td>{{ $transaksi->tgl_pinjam }}</td>
                        <td>{{ $transaksi->tgl_kembali }}</td>
                        <td align="center">      
                            {{ link_to('user/edit/'.$transaksi->id, $title = '', $attributes = array('class'=>'fa fa-edit')) }}
                            {{ link_to('user/remove/'.$transaksi->id, $title = '', $attributes = array('class'=>'fa fa-remove', 'onclick'=>'return confirm("Hapus '.$transaksi->id.'?")')) }}
                        </td>
                      </tr>
                    @endforeach
                    </tbody>
                  </table>
                    <div style='float:right;'>{{ $transaksis->render() }}</div>
                    <div style='clear:both;'></div>
                </div>
              </div>
        </section>
      </div>
@endsection
