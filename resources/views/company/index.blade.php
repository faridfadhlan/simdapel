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
            Master Company Perangkat Lunak
            <!--<small>Control panel</small>-->
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li>Master Company Perangkat Lunak</li>
            <li class="active">Company Perangkat Lunak</li>
          </ol>
            <br />
            <div>
                <a class="btn btn-block btn-primary" style="display:inline;" href="{{ action('CompanyController@create') }}">Tambah Company Perangkat Lunak</a>
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
                        <th style='text-align: center;vertical-align: center;'>NAMA COMPANY</th>
                        <th style='text-align: center;vertical-align: center;'>AKSI</th>
                      </tr>
                    </thead>
                    <tbody>
                    @foreach($companies as $company)
                      <tr>
                        <td align='center'>{{ $company->id }}</td>
                        <td>{{ $company->nama_company }}</td>
                        <td align="center">      
                            {{ link_to_action('CompanyController@edit', $title = '', $parameters = array($company->id), $attributes = array('class'=>'fa fa-edit')) }}
                            {{ link_to_action('CompanyController@remove', $title = '', $parameters = array($company->id), $attributes = array('class'=>'fa fa-remove', 'onclick'=>'return confirm("Hapus Company '.$company->nama_company.'?")')) }}
                        </td>
                      </tr>
                    @endforeach
                    </tbody>
                  </table>
                    <div style='float:right;'>{{ $companies->render() }}</div>
                    <div style='clear:both;'></div>
                </div><!-- /.box-body -->
              
              </div><!-- /.box -->
                     

        </section><!-- /.content -->
      </div><!-- /.content-wrapper -->  
      
      

@endsection
