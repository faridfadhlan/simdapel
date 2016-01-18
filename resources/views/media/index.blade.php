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
            Master Media Perangkat Lunak
            <!--<small>Control panel</small>-->
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li>Master Media Perangkat Lunak</li>
            <li class="active">Media Perangkat Lunak</li>
          </ol>
        </section>

        <!-- Main content -->
        <section class="content">
          
              <!-- TO DO List -->
              <div class="box box-primary">
                
                
                <div class="box-body">
                  <table id="tabel1" class="table table-bordered table-striped">
                    <thead>
                      <tr>
                        <th width='10%' style='text-align: center;vertical-align: center;'>ID</th>
                        <th style='text-align: center;vertical-align: center;'>NAMA MEDIA</th>
                        <th style='text-align: center;vertical-align: center;'>AKSI</th>
                      </tr>
                    </thead>
                    <tbody>
                    @foreach($medias as $media)
                      <tr>
                        <td align='center'>{{ $media->id }}</td>
                        <td>{{ $media->nama_media }}</td>
                        <td align="center">      
                            {{ link_to_action('MediaController@edit', $title = '', $parameters = array($media->id), $attributes = array('class'=>'fa fa-edit')) }}
                            {{ link_to_action('MediaController@remove', $title = '', $parameters = array($media->id), $attributes = array('class'=>'fa fa-remove')) }}
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
