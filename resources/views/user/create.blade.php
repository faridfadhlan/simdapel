@extends('layouts.main')
@section('title')
Sistem Informasi Data Inventori dan Perangkat Lunak
@endsection



@section('content')
<div class="content-wrapper">
        <section class="content-header">
          <h1>
            Master Pengguna
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li>Master Pengguna</li>
            <li class="active">Tambah Pengguna</li>
          </ol>
        </section>
        <section class="content">
              <div class="box box-primary">
                    {{ Form::open(['url' => 'user/save', 'method'=>'POST']) }}
                    <div class="box-header"><h3 class="box-title">Tambah Pengguna</h3></div>
                    <div class="box-body">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    {{ Form::label('nip', 'NIP') }}
                                    {{ Form::text('nip', $value=old('nip'), $attributes=array('class'=>'form-control','placeholder'=>'NIP')) }}
                                </div>
                                <div class="form-group">
                                    {{ Form::label('nama', 'Nama Lengkap') }}
                                    {{ Form::text('nama', $value=old('nama'), $attributes=array('class'=>'form-control','placeholder'=>'Nama Lengkap')) }}
                                </div>
                                <div class="form-group">
                                    {{ Form::label('username', 'Username') }}
                                    {{ Form::text('username', $value=old('username'), $attributes=array('class'=>'form-control','placeholder'=>'Username')) }}
                                </div>
                                <div class="form-group">
                                    {{ Form::label('password', 'Password') }}
                                    {{ Form::password('password', $attributes=array('class'=>'form-control','placeholder'=>'Password')) }}
                                </div>
                                <div class="form-group">
                                    {{ Form::label('password_confirmation', 'Konfirmasi Password') }}
                                    {{ Form::password('password_confirmation', $attributes=array('class'=>'form-control','placeholder'=>'Konfirmasi Password')) }}
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    {{ Form::label('email', 'Email') }}
                                    {{ Form::text('email', $value=old('email'), $attributes=array('class'=>'form-control','placeholder'=>'Email')) }}
                                </div>
                                
                                <div class="form-group">
                                    {{ Form::label('bidang', 'Bidang') }}
                                    {{ Form::select('bidang', $bidangs, $value='', $attributes=array('class'=>'form-control','placeholder'=>'Pilih Bidang...')) }}
                                </div>
                                <div class="form-group">
                                    {{ Form::label('seksi_id', 'Seksi') }}
                                    {{ Form::select('seksi_id', $seksis, $value=old('seksi_id'), $attributes=array('class'=>'form-control','placeholder'=>'Pilih Seksi...')) }}
                                </div>
                                <div class="form-group">
                                    {{ Form::label('role_id', 'Role') }}
                                    {{ Form::select('role_id', $roles, $value=old('role_id'), $attributes=array('class'=>'form-control','placeholder'=>'Pilih Role...')) }}
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="box-footer">
                        <button type="submit" class="btn btn-primary">Simpan</button>
                    </div>
                    {{ Form::close() }}
              </div>
        </section>
</div>
@endsection