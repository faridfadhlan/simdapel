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
            <li class="active">Data Pengguna</li>
          </ol>
            <br />
            <div>
                <a class="btn btn-block btn-primary" style="display:inline;" href="{{ URL::to('user/create') }}">Tambah Pengguna</a>
            </div>
        </section>
        <section class="content">
              <div class="box box-primary">
                  
                <div class="box-body">
                  <table id="tabel1" class="table table-bordered table-striped">
                    <thead>
                      <tr>
                          <th class="text-center">ID</th>
                        <th class="text-center">Nama</th>
                        <th class="text-center">Username</th>
                        <th class="text-center">Email</th>
                        <th class="text-center">Seksi</th>
                        <th class="text-center">Role</th>
                        <th class="text-center">Aksi</th>
                      </tr>
                    </thead>
                    <tbody>
                    @foreach($users as $user)
                      <tr>
                          <td class="text-center">{{ $user->id }}</td>
                        <td>{{ $user->nama }}</td>
                        <td>{{ $user->username }}</td>
                        <td>{{ $user->email }}</td>
                        <td>{{ $user->seksi_id!=NULL?$user->seksi->nama_seksi:'' }}</td>
                        <td>{{ $user->getRole->name }}</td>
                        <td align="center">      
                            {{ link_to('user/edit/'.$user->id, $title = '', $attributes = array('class'=>'fa fa-edit')) }}
                            {{ link_to('user/remove/'.$user->id, $title = '', $attributes = array('class'=>'fa fa-remove', 'onclick'=>'return confirm("Hapus '.$user->nama.'?")')) }}
                        </td>
                      </tr>
                    @endforeach
                    </tbody>
                  </table>
                    <div style='float:right;'>{{ $users->render() }}</div>
                    <div style='clear:both;'></div>
                </div>
              </div>
        </section>
      </div>
@endsection
