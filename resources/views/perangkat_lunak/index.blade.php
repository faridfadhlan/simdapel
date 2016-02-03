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
        $('#tabel1').DataTable({
            processing: true,
            serverSide: true,
            ajax: '{{ URL::to('perangkatlunak/get_ajax_data') }}'
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
            @if(Auth::user()->role_id=='1' || Auth::user()->role_id=='4') 
            <a href="{{ URL::to('perangkatlunak/create') }}" class="btn btn-default pull-left"><i class="fa fa-plus"></i> Tambah Perangkat Lunak</a>
            <div class='clearfix'></div>
            @endif
        </section>

        <!-- Main content -->
        <section class="content">
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
                            <th style='text-align: center;vertical-align: center;'>Manual</th>
                          </tr>
                        </thead>                        
                      </table>
                    
                </div><!-- /.box-body -->
              </div><!-- /.box -->
        </section><!-- /.content -->
      </div><!-- /.content-wrapper -->

@endsection