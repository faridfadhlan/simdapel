@extends('layouts.main')
@section('title')
Sistem Informasi Data Inventori dan Perangkat Lunak
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
            Daftar Permohonan Data
            <!--<small>Control panel</small>-->
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li>Master Data Perangkat Lunak</li>
            <li class="active">Data Perangkat Lunak</li>
          </ol>
            <br />
            <div>
                <a href="{{ URL::to('permohonan_data/create') }}" class="btn btn-default pull-left"><i class="fa fa-plus"></i> Buat Permohonan Data</a>
            </div>
            <div class="clearfix"></div>
        </section>

        <!-- Main content -->
        <section class="content">
              <div class="box box-primary">
                <div class="box-body">
                  <table id="tabel1" class="table table-bordered table-striped">
                    <thead>
                      <tr>
                        <th class="text-center">ID</th>
                        <th class="text-center">Kategori Pemohon</th>
                        <th class="text-center">No Surat</th>
                        <th class="text-center">Nama Pemohon/Instansi</th>
                        <th class="text-center">Data</th>
                        <th class="text-center">Tanggal Permohonan</th>
                        <th class="text-center">Aksi</th>
                      </tr>
                    </thead>
                    <tbody>
                        <?php $i=0;?>
                    @foreach($datas as $data)
                    <?php $i++;$jenis = ['1'=>'Pegawai BPS', '2'=>'Individu', '3'=>'Instansi/Lembaga'];?>
                      <tr>
                        <td class="text-center">{{ $i }}</td>
                        <td>{{ $data->jk!=NULL?"Individu":$jenis[$data->flag_user] }}</td>
                        <td>{{ $data->no_surat }}</td>
                        <td>{{ ($data->flag_user=='2')?$data->nama:(($data->flag_user=='1')?$data->peminjam_bps->nama:$data->nama_instansi) }}</td>
                        <td>{{ $data->data_inventori->nama_data }}</td>
                        <td class="text-center">{{ datetime_to_tanggal($data->create_time) }}</td>
                        <td align='center'>
                            <a href="#" class="fa fa-edit"></a>
                            <a href="#" class="fa fa-remove"></a>
                        </td>
                      </tr>
                    @endforeach
                    </tbody>
                  </table>
                    <div style='float:right;'>{{ $datas->render() }}</div>
                    <div style='clear:both;'></div>
                </div><!-- /.box-body -->
              </div><!-- /.box -->
        </section><!-- /.content -->
      </div><!-- /.content-wrapper -->

@endsection