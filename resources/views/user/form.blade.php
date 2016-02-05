{{ Form::open(['url' => 'user/save', 'method'=>'POST']) }}
<div class="box-header"><h3 class="box-title">Tambah Pengguna</h3></div>
<div class="box-body">

        @if (count($errors) > 0)
        <div class="row">
        <div class="col-md-12">
            <div class="alert alert-danger">

                <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
              </div>
        </div>
            </div>
        @endif

    <div class="row">
        <div class="col-md-6">
            <div class="form-group">
                {{ Form::label('nip', 'NIP') }}
                {{ Form::text('nip', $value=$user->nip, $attributes=array('class'=>'form-control','placeholder'=>'NIP')) }}
            </div>
            <div class="form-group">
                {{ Form::label('nama', 'Nama Lengkap') }}
                {{ Form::text('nama', $value=$user->nama, $attributes=array('class'=>'form-control','placeholder'=>'Nama Lengkap')) }}
            </div>
            <div class="form-group">
                {{ Form::label('username', 'Username') }}
                {{ Form::text('username', $value=$user->username, $attributes=array('class'=>'form-control','placeholder'=>'Username')) }}
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
                {{ Form::text('email', $value=$user->email, $attributes=array('class'=>'form-control','placeholder'=>'Email')) }}
            </div>

            <div class="form-group">
                {{ Form::label('bidang', 'Bidang') }}
                {{ Form::select('bidang', $bidangs, $value='', $attributes=array('class'=>'form-control','placeholder'=>'Pilih Bidang...')) }}
            </div>
            <div class="form-group">
                {{ Form::label('seksi_id', 'Seksi') }}
                {{ Form::select('seksi_id', $seksis, $value=$user->seksi_id, $attributes=array('class'=>'form-control','placeholder'=>'Pilih Seksi...')) }}
            </div>
            <div class="form-group">
                {{ Form::label('role_id', 'Role') }}
                {{ Form::select('role_id', $roles, $value=$user->role_id, $attributes=array('class'=>'form-control','placeholder'=>'Pilih Role...')) }}
            </div>
        </div>
    </div>
</div>
<div class="box-footer">
    <button type="submit" class="btn btn-primary">Simpan</button>
</div>
{{ Form::close() }}