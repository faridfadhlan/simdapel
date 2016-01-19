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
            Test
            <!--<small>Control panel</small>-->
          </h1>
          
        </section>

        <!-- Main content -->
        <section class="content">
          
              <!-- TO DO List -->
              <div class="box box-primary">
                
                
                <div class="box-body">
                  {!! Datatable::table()->addColumn('id','Nama')->setUrl(route('api.perangkatlunak'))->render() !!}
                    
                </div><!-- /.box-body -->
              
              </div><!-- /.box -->
                     

        </section><!-- /.content -->
      </div><!-- /.content-wrapper -->

@endsection
