@extends('layouts.main')
@section('title')
Sistem Informasi Data Inventori dan Perangkat Lunak
@endsection


@section('script_atas')
<link rel="stylesheet" href="{{ asset('/public/plugins/datatables/dataTables.bootstrap.css') }}">
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
            <li class="active">Subjek Data Inventori</li>
          </ol>
            <br />
            <div>
                <a class="btn btn-block btn-primary" style="display:inline;" href="{{ action('SubjekController@create') }}">Tambah Subjek Data Inventori</a>
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
                        <th width='10%' style='text-align: center;vertical-align: center;'>ID</th>
                        <th style='text-align: center;vertical-align: center;'>NAMA SUBJEK</th>
                        <th style='text-align: center;vertical-align: center;'>AKSI</th>
                      </tr>
                    </thead>
                    <tbody>
                    @foreach($subjeks as $subjek)
                      <tr>
                        <td align='center'>{{ $subjek->id }}</td>
                        <td>{{ $subjek->nama_subjek }}</td>
                        <td align="center">      
                            {{ link_to_action('SubjekController@edit', $title = '', $parameters = array($subjek->id), $attributes = array('class'=>'fa fa-edit')) }}
                            {{ link_to_action('SubjekController@remove', $title = '', $parameters = array($subjek->id), $attributes = array('class'=>'fa fa-remove', 'onclick'=>'return confirm("Hapus Subjek '.$subjek->nama_subjek.'?")')) }}
                        </td>
                      </tr>
                    @endforeach
                    </tbody>
                  </table>
                    <div style='float:right;'>{{ $subjeks->render() }}</div>
                    <div style='clear:both;'></div>
                </div><!-- /.box-body -->
              
              </div><!-- /.box -->
                     

        </section><!-- /.content -->
      </div><!-- /.content-wrapper -->  
      
      

@endsection
