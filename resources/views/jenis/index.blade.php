@extends('layouts.main')
@section('title')
Sistem Informasi Data Inventori dan Perangkat Lunak
@endsection


@section('script_atas')
<link rel="stylesheet" href="{{ asset('/public/plugins/datatables/dataTables.bootstrap.css') }}">
@endsection

@section('content')
<div class="content-wrapper">
        <section class="content-header">
          <h1>
            Master Jenis Perangkat Lunak
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li>Master Perangkat Lunak</li>
            <li class="active">Master Jenis Perangkat Lunak</li>
          </ol>
            <br />
            <div>
                <a class="btn btn-block btn-primary" style="display:inline;" href="{{ action('JenisController@create') }}">Tambah Jenis Perangkat Lunak</a>
            </div>
        </section>
        <section class="content">
              <div class="box box-primary">
                <div class="box-body">
                  <table id="tabel1" class="table table-bordered table-striped">
                    <thead>
                      <tr>
                        <th width='10%' style='text-align: center;vertical-align: center;'>ID</th>
                        <th style='text-align: center;vertical-align: center;'>JENIS PERANGKAT LUNAK</th>
                        <th style='text-align: center;vertical-align: center;'>AKSI</th>
                      </tr>
                    </thead>
                    <tbody>
                    @foreach($jenises as $jenis)
                      <tr>
                        <td align='center'>{{ $jenis->id }}</td>
                        <td>{{ $jenis->nama_jenis }}</td>
                        <td align="center">      
                            {{ link_to_action('JenisController@edit', $title = '', $parameters = array($jenis->id), $attributes = array('class'=>'fa fa-edit')) }}
                            {{ link_to_action('JenisController@remove', $title = '', $parameters = array($jenis->id), $attributes = array('class'=>'fa fa-remove', 'onclick'=>'return confirm("Hapus Jenis '.$jenis->nama_jenis.'?")')) }}
                        </td>
                      </tr>
                    @endforeach
                    </tbody>
                  </table>
                    <div style='float:right;'>{{ $jenises->render() }}</div>
                    <div style='clear:both;'></div>
                </div>
              </div>
        </section>
      </div>
@endsection
