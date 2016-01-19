@extends('layouts.main')
@section('title')
Sistem Informasi Data Inventori dan Perangkat Lunak
@endsection

@section('active_pl')
active
@endsection

@section('active_pl_1')
class='active'
@endsection

@section('script_atas')
<link rel="stylesheet" href="{{ asset('/public/plugins/datatables/dataTables.bootstrap.css') }}">
@endsection

@section('script_bawah')
<script src="{{ asset('/public/plugins/datatables/jquery.dataTables.min.js') }}"></script>
<script src="{{ asset('/public/plugins/datatables/dataTables.bootstrap.min.js') }}"></script>
<!--
<script>
      $(function () {
        $("#tabel1").DataTable({
            ordering:false
        });
      });
</script>
-->
@endsection

@section('content')
<div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            Master Data Inventori
            <!--<small>Control panel</small>-->
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li>Master Data Inventori</li>
            <li class="active">Data Inventori</li>
          </ol>
            <br />
            <div>
                <a class="btn btn-block btn-primary" style="display:inline;" href="{{ action('DataInventoriController@create') }}">Tambah Data Inventori</a>
            </div>
        </section>

        <!-- Main content -->
        <section class="content">
              <div class="box box-primary">
                <div class="box-body">
                  <table id="tabel1" class="table table-bordered table-striped">
                    <thead>
                      <tr>
                        <th style='text-align: center;vertical-align: center;'>No CD</th>
                        <th style='text-align: center;vertical-align: center;'>Label CD</th>
                        <th style='text-align: center;vertical-align: center;'>Nama</th>
                        <th style='text-align: center;vertical-align: center;'>Tahun</th>
                        <th style='text-align: center;vertical-align: center;'>Rincian</th>
                        <th style='text-align: center;vertical-align: center;'>Format</th>
                        <th style='text-align: center;vertical-align: center;'>Aksi</th>
                      </tr>
                    </thead>
                    <tbody>
                    @foreach($data_inventoris as $data)
                      <tr>
                        <td align='center'>{{ $data->no_cd }}</td>
                        <td>{{ $data->label_cd }}</td>
                        <td>{{ $data->nama_data }}</td>
                        <td align='center'>{{ $data->tahun }}</td>
                        <td>{{ $data->rincian }}</td>
                        <td>{{ $data->format }}</td>
                        <td align='center'>
                            <a href="{{ action('DataInventoriController@edit', ['id'=>$data->id]) }}" class="fa fa-edit"></a>
                            <a href="{{ action('DataInventoriController@remove', ['id'=>$data->id]) }}" class="fa fa-remove"></a>
                        </td>
                      </tr>
                    @endforeach
                    </tbody>
                  </table>
                    <div style='float:right;'>{{ $data_inventoris->render() }}</div>
                    <div style='clear:both;'></div>
                </div><!-- /.box-body -->
              </div><!-- /.box -->
        </section><!-- /.content -->
      </div><!-- /.content-wrapper -->

@endsection