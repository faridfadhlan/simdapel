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
<script>
      $(function () {
        $("#tabel1").DataTable({
            ordering:false
        });
      });
</script>
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
            <li>Master Data Perangkat Lunak</li>
            <li class="active">Data Perangkat Lunak</li>
          </ol>
            <br />
            <div>
                <a class="btn btn-block btn-primary" style="display:inline;" href="{{ action('PerangkatLunakController@create') }}">Tambah Perangkat Lunak</a>
            </div>
        </section>

        <!-- Main content -->
        <section class="content">
          
              <!-- TO DO List -->
              <div class="box box-primary">
                
                
                <div class="box-body">
                  <table id="tabel1" class="table table-bordered table-striped">
                    <thead>
                      <tr>
                        <th width='10%' style='text-align: center;vertical-align: center;'>Kode</th>
                        <th style='text-align: center;vertical-align: center;'>Nama</th>
                        <th width='10%' style='text-align: center;vertical-align: center;'>Jumlah Media</th>
                        <th width='20%' style='text-align: center;vertical-align: center;'>Company</th>
                        <th width='20%' style='text-align: center;vertical-align: center;'>Lisensi</th>
                        <th style='text-align: center;vertical-align: center;'>Aksi</th>
                      </tr>
                    </thead>
                    <tbody>
                    @foreach($pl_data as $data)
                      <tr>
                        <td align='center'>{{ $data->kode }}</td>
                        <td>{{ $data->nama }}</td>
                        <td align='center'>{{ $data->jumlah_media }}</td>
                        <td>{{ $data->company['nama_company'] }}</td>
                        <td>{{ $data->license['nama_license'] }}</td>
                        <td align='center'>
                            <a href="{{ action('PerangkatLunakController@edit', ['id'=>$data->id]) }}" class="fa fa-edit"></a>
                            <a href="{{ action('PerangkatLunakController@remove', ['id'=>$data->id]) }}" class="fa fa-remove"></a>
                        </td>
                      </tr>
                    @endforeach
                    </tbody>
                  </table>
                </div><!-- /.box-body -->
              
              </div><!-- /.box -->
                     

        </section><!-- /.content -->
      </div><!-- /.content-wrapper -->

@endsection
