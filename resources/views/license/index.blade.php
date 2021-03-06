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
            Master License Perangkat Lunak
            <!--<small>Control panel</small>-->
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li>Master License Perangkat Lunak</li>
            <li class="active">License Perangkat Lunak</li>
          </ol>
          <br />
            <div>
                <a class="btn btn-block btn-primary" style="display:inline;" href="{{ action('LicenseController@create') }}">Tambah License Perangkat Lunak</a>
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
                        <th style='text-align: center;vertical-align: center;'>NAMA LICENSE</th>
                        <th style='text-align: center;vertical-align: center;'>AKSI</th>
                      </tr>
                    </thead>
                    <tbody>
                    @foreach($licenses as $license)
                      <tr>
                        <td align='center'>{{ $license->id }}</td>
                        <td>{{ $license->nama_license }}</td>
                        <td align="center">      
                            {{ link_to_action('LicenseController@edit', $title = '', $parameters = array($license->id), $attributes = array('class'=>'fa fa-edit')) }}
                            {{ link_to_action('LicenseController@remove', $title = '', $parameters = array($license->id), $attributes = array('class'=>'fa fa-remove')) }}
                        </td>
                      </tr>
                    @endforeach
                    </tbody>
                  </table>
                    <div style='float:right;'>{{ $licenses->render() }}</div>
                    <div style='clear:both;'></div>
                </div><!-- /.box-body -->
              
              </div><!-- /.box -->
                     

        </section><!-- /.content -->
      </div><!-- /.content-wrapper -->

@endsection
