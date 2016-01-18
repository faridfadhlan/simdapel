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
        $("#tabel1").DataTable();
      });
</script>
@endsection

@section('content')
<div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            Dashboard
            <small>Control panel</small>
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active">Dashboard</li>
          </ol>
        </section>

        <!-- Main content -->
        <section class="content">
          <!-- Small boxes (Stat box) -->
          <div class="row">
            <div class="col-lg-3 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-aqua">
                <div class="inner">
                  <h3>150</h3>
                  <p>Perangkat Lunak</p>
                </div>
                <div class="icon">
                  <i class="ion ion-android-desktop"></i>
                </div>
                <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div><!-- ./col -->
            <div class="col-lg-3 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-green">
                <div class="inner">
                  <h3>150</h3>
                  <p>Data Inventori</p>
                </div>
                <div class="icon">
                  <i class="ion ion-stats-bars"></i>
                </div>
                <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div><!-- ./col -->
            <div class="col-lg-3 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-yellow">
                <div class="inner">
                  <h3>105</h3>
                  <p>Pegawai</p>
                </div>
                <div class="icon">
                  <i class="ion ion-person-add"></i>
                </div>
                <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div><!-- ./col -->
            <div class="col-lg-3 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-red">
                <div class="inner">
                  <h3>32</h3>
                  <p>Peminjaman Data Inventori</p>
                </div>
                <div class="icon">
                  <i class="ion ion-pie-graph"></i>
                </div>
                <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div><!-- ./col -->
          </div><!-- /.row -->
          <!-- Main row -->
         
            

              <!-- TO DO List -->
              <div class="box box-primary">
                
                <div class="box-header">
                  <h3 class="box-title">Data Peminjaman</h3>
                </div><!-- /.box-header -->
                <div class="box-body">
                  <table id="tabel1" class="table table-bordered table-striped">
                    <thead>
                      <tr>
                        <th>Tanggal Kembali</th>
                        <th>Nama Peminjam</th>
                        <th>Data Dipinjam</th>
                        <th>Tanggal Pinjam</th>
                        <th>Status</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>14 Januari 2016</td>
                        <td>Muhammad Farid Fadhlan</td>
                        <td>CD Microsoft Office 2010</td>
                        <td>8 Januar 2015</td>
                        <td>Belum Kembali</td>
                      </tr>
                      <tr>
                        <td>14 Januari 2016</td>
                        <td>Muhammad Farid Fadhlan</td>
                        <td>CD Microsoft Office 2010</td>
                        <td>8 Januar 2015</td>
                        <td>Belum Kembali</td>
                      </tr>
                      <tr>
                        <td>14 Januari 2016</td>
                        <td>Muhammad Farid Fadhlan</td>
                        <td>CD Microsoft Office 2010</td>
                        <td>8 Januar 2015</td>
                        <td>Belum Kembali</td>
                      </tr>
                      <tr>
                        <td>14 Januari 2016</td>
                        <td>Muhammad Farid Fadhlan</td>
                        <td>CD Microsoft Office 2010</td>
                        <td>8 Januar 2015</td>
                        <td>Belum Kembali</td>
                      </tr>
                      <tr>
                        <td>14 Januari 2016</td>
                        <td>Muhammad Farid Fadhlan</td>
                        <td>CD Microsoft Office 2010</td>
                        <td>8 Januar 2015</td>
                        <td>Belum Kembali</td>
                      </tr>
                      <tr>
                        <td>14 Januari 2016</td>
                        <td>Muhammad Farid Fadhlan</td>
                        <td>CD Microsoft Office 2010</td>
                        <td>8 Januar 2015</td>
                        <td>Belum Kembali</td>
                      </tr>
                      <tr>
                        <td>14 Januari 2016</td>
                        <td>Muhammad Farid Fadhlan</td>
                        <td>CD Microsoft Office 2010</td>
                        <td>8 Januar 2015</td>
                        <td>Belum Kembali</td>
                      </tr>
                      <tr>
                        <td>14 Januari 2016</td>
                        <td>Muhammad Farid Fadhlan</td>
                        <td>CD Microsoft Office 2010</td>
                        <td>8 Januar 2015</td>
                        <td>Belum Kembali</td>
                      </tr>
                      <tr>
                        <td>14 Januari 2016</td>
                        <td>Muhammad Farid Fadhlan</td>
                        <td>CD Microsoft Office 2010</td>
                        <td>8 Januar 2015</td>
                        <td>Belum Kembali</td>
                      </tr>
                      <tr>
                        <td>14 Januari 2016</td>
                        <td>Muhammad Farid Fadhlan</td>
                        <td>CD Microsoft Office 2010</td>
                        <td>8 Januar 2015</td>
                        <td>Belum Kembali</td>
                      </tr>
                      <tr>
                        <td>14 Januari 2016</td>
                        <td>Muhammad Farid Fadhlan</td>
                        <td>CD Microsoft Office 2010</td>
                        <td>8 Januar 2015</td>
                        <td>Belum Kembali</td>
                      </tr>
                      <tr>
                        <td>14 Januari 2016</td>
                        <td>Muhammad Farid Fadhlan</td>
                        <td>CD Microsoft Office 2010</td>
                        <td>8 Januar 2015</td>
                        <td>Belum Kembali</td>
                      </tr>
                      <tr>
                        <td>14 Januari 2016</td>
                        <td>Muhammad Farid Fadhlan</td>
                        <td>CD Microsoft Office 2010</td>
                        <td>8 Januar 2015</td>
                        <td>Belum Kembali</td>
                      </tr>
                      <tr>
                        <td>14 Januari 2016</td>
                        <td>Muhammad Farid Fadhlan</td>
                        <td>CD Microsoft Office 2010</td>
                        <td>8 Januar 2015</td>
                        <td>Belum Kembali</td>
                      </tr>
                      <tr>
                        <td>14 Januari 2016</td>
                        <td>Muhammad Farid Fadhlan</td>
                        <td>CD Microsoft Office 2010</td>
                        <td>8 Januar 2015</td>
                        <td>Belum Kembali</td>
                      </tr>
                      <tr>
                        <td>14 Januari 2016</td>
                        <td>Muhammad Farid Fadhlan</td>
                        <td>CD Microsoft Office 2010</td>
                        <td>8 Januar 2015</td>
                        <td>Belum Kembali</td>
                      </tr>
                      <tr>
                        <td>14 Januari 2016</td>
                        <td>Muhammad Farid Fadhlan</td>
                        <td>CD Microsoft Office 2010</td>
                        <td>8 Januar 2015</td>
                        <td>Belum Kembali</td>
                      </tr>
                      <tr>
                        <td>14 Januari 2016</td>
                        <td>Muhammad Farid Fadhlan</td>
                        <td>CD Microsoft Office 2010</td>
                        <td>8 Januar 2015</td>
                        <td>Belum Kembali</td>
                      </tr>
                      <tr>
                        <td>14 Januari 2016</td>
                        <td>Muhammad Farid Fadhlan</td>
                        <td>CD Microsoft Office 2010</td>
                        <td>8 Januar 2015</td>
                        <td>Belum Kembali</td>
                      </tr>
                      <tr>
                        <td>14 Januari 2016</td>
                        <td>Muhammad Farid Fadhlan</td>
                        <td>CD Microsoft Office 2010</td>
                        <td>8 Januar 2015</td>
                        <td>Belum Kembali</td>
                      </tr>
                      <tr>
                        <td>14 Januari 2016</td>
                        <td>Muhammad Farid Fadhlan</td>
                        <td>CD Microsoft Office 2010</td>
                        <td>8 Januar 2015</td>
                        <td>Belum Kembali</td>
                      </tr>
                      <tr>
                        <td>14 Januari 2016</td>
                        <td>Muhammad Farid Fadhlan</td>
                        <td>CD Microsoft Office 2010</td>
                        <td>8 Januar 2015</td>
                        <td>Belum Kembali</td>
                      </tr>
                    </tbody>
                  </table>
                </div><!-- /.box-body -->
              
                <div class="box-body">
                  <ul class="todo-list">
                    <li>
                      <!-- drag handle -->
                      <span class="handle">
                        <i class="fa fa-ellipsis-v"></i>
                        <i class="fa fa-ellipsis-v"></i>
                      </span>
                      <!-- checkbox -->
                      <input type="checkbox" value="" name="">
                      <!-- todo text -->
                      <span class="text">Design a nice theme</span>
                      <!-- Emphasis label -->
                      <small class="label label-danger"><i class="fa fa-clock-o"></i> 2 mins</small>
                      <!-- General tools such as edit or delete-->
                      <div class="tools">
                        <i class="fa fa-edit"></i>
                        <i class="fa fa-trash-o"></i>
                      </div>
                    </li>
                    <li>
                      <span class="handle">
                        <i class="fa fa-ellipsis-v"></i>
                        <i class="fa fa-ellipsis-v"></i>
                      </span>
                      <input type="checkbox" value="" name="">
                      <span class="text">Make the theme responsive</span>
                      <small class="label label-info"><i class="fa fa-clock-o"></i> 4 hours</small>
                      <div class="tools">
                        <i class="fa fa-edit"></i>
                        <i class="fa fa-trash-o"></i>
                      </div>
                    </li>
                    <li>
                      <span class="handle">
                        <i class="fa fa-ellipsis-v"></i>
                        <i class="fa fa-ellipsis-v"></i>
                      </span>
                      <input type="checkbox" value="" name="">
                      <span class="text">Let theme shine like a star</span>
                      <small class="label label-warning"><i class="fa fa-clock-o"></i> 1 day</small>
                      <div class="tools">
                        <i class="fa fa-edit"></i>
                        <i class="fa fa-trash-o"></i>
                      </div>
                    </li>
                    <li>
                      <span class="handle">
                        <i class="fa fa-ellipsis-v"></i>
                        <i class="fa fa-ellipsis-v"></i>
                      </span>
                      <input type="checkbox" value="" name="">
                      <span class="text">Let theme shine like a star</span>
                      <small class="label label-success"><i class="fa fa-clock-o"></i> 3 days</small>
                      <div class="tools">
                        <i class="fa fa-edit"></i>
                        <i class="fa fa-trash-o"></i>
                      </div>
                    </li>
                    <li>
                      <span class="handle">
                        <i class="fa fa-ellipsis-v"></i>
                        <i class="fa fa-ellipsis-v"></i>
                      </span>
                      <input type="checkbox" value="" name="">
                      <span class="text">Check your messages and notifications</span>
                      <small class="label label-primary"><i class="fa fa-clock-o"></i> 1 week</small>
                      <div class="tools">
                        <i class="fa fa-edit"></i>
                        <i class="fa fa-trash-o"></i>
                      </div>
                    </li>
                    <li>
                      <span class="handle">
                        <i class="fa fa-ellipsis-v"></i>
                        <i class="fa fa-ellipsis-v"></i>
                      </span>
                      <input type="checkbox" value="" name="">
                      <span class="text">Let theme shine like a star</span>
                      <small class="label label-default"><i class="fa fa-clock-o"></i> 1 month</small>
                      <div class="tools">
                        <i class="fa fa-edit"></i>
                        <i class="fa fa-trash-o"></i>
                      </div>
                    </li>
                  </ul>
                </div><!-- /.box-body -->
                <div class="box-footer clearfix no-border">
                  <button class="btn btn-default pull-right"><i class="fa fa-plus"></i> Add item</button>
                </div>
              </div><!-- /.box -->

              <!-- quick email widget -->
              <div class="box box-info">
                <div class="box-header">
                  <i class="fa fa-envelope"></i>
                  <h3 class="box-title">Quick Email</h3>
                  <!-- tools box -->
                  <div class="pull-right box-tools">
                    <button class="btn btn-info btn-sm" data-widget="remove" data-toggle="tooltip" title="Remove"><i class="fa fa-times"></i></button>
                  </div><!-- /. tools -->
                </div>
                <div class="box-body">
                  <form action="#" method="post">
                    <div class="form-group">
                      <input type="email" class="form-control" name="emailto" placeholder="Email to:">
                    </div>
                    <div class="form-group">
                      <input type="text" class="form-control" name="subject" placeholder="Subject">
                    </div>
                    <div>
                      <textarea class="textarea" placeholder="Message" style="width: 100%; height: 125px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"></textarea>
                    </div>
                  </form>
                </div>
                <div class="box-footer clearfix">
                  <button class="pull-right btn btn-default" id="sendEmail">Send <i class="fa fa-arrow-circle-right"></i></button>
                </div>
              </div>

            </section><!-- /.Left col -->
            
          </div><!-- /.row (main row) -->

        </section><!-- /.content -->
      </div><!-- /.content-wrapper -->

@endsection
