@extends('layouts.main')
@section('title')
Sistem Informasi Data Inventori dan Perangkat Lunak
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
            @if(Auth::user()->role_id=='1' || Auth::user()->role_id=='4')
            <a href="{{ URL::to('data_inventori/create') }}" class="btn btn-default pull-left"><i class="fa fa-plus"></i> Tambah Data Inventori</a>
            <div class="clearfix"></div>
            @endif
        </section>

        <!-- Main content -->
        <section class="content">
              <div class="box box-primary">
                <div class="box-body">
                  <table id="tabel1" class="table table-bordered table-striped">
                    <thead>
                      <tr>
                          <th style='text-align: center;vertical-align: center;'>No</th>
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
                    <?php
                    $page = $data_inventoris->currentPage();
                            $i=0;
                    ?>
                    @foreach($data_inventoris as $data)
                        <?php $i++; ?>
                      <tr>
                          <td align='center'>{{ ((($page-1)*10)+$i) }}</td>
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
                    <div style='float:right;'>{{ $data_inventoris->links() }}</div>
                    <div style='clear:both;'></div>
                </div><!-- /.box-body -->
              </div><!-- /.box -->
        </section><!-- /.content -->
      </div><!-- /.content-wrapper -->

@endsection