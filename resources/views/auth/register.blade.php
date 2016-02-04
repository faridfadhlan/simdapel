@extends('auth.layouts')

@section('content')
<body class="register-page">
    <div class="register-container">
        <div class="register-logo">
            Sistem Informasi Manajemen Data dan Perangkat Lunak
            
        </div>
        <div class="box box-primary">
            <div class="box-header with-border">
                  <a href="{{ URL::to('/') }}"><b>Pendaftaran Pengguna Layanan Konsultasi Statistik</b></a>
                </div><!-- /.box-header -->
<form action="{{ URL::to('register') }}" method="post">
      <div class="box-body">
        
        
            <div class="col-xs-6">
                {!! csrf_field() !!}
                <div class="form-group has-feedback{{ $errors->has('nama') ? ' has-error' : '' }}">
                    {{ Form::label('nama', 'Nama Lengkap') }}    
                    @if ($errors->has('nama'))
                        {{ Form::label('inputError', $errors->first('nama'), ['class'=>'control-label']) }}
                    @endif
                    <input type="text" name="nama" class="form-control" placeholder="Nama Lengkap" value="{{ old('nama') }}">            
                </div>
            <div class="form-group has-feedback{{ $errors->has('username') ? ' has-error' : '' }}">
                {{ Form::label('username', 'Username') }}
                @if ($errors->has('username'))
              <label class="control-label" for="inputError">{{ $errors->first('username') }}</label>
              @endif
            <input type="text" name="username" class="form-control" placeholder="Username" value="{{ old('username') }}">
            
          </div>
          <div class="form-group has-feedback{{ $errors->has('email') ? ' has-error' : '' }}">
              {{ Form::label('email', 'Email') }}
              @if ($errors->has('email'))
              <label class="control-label" for="inputError">{{ $errors->first('email') }}</label>
              @endif
            <input type="email" name="email" class="form-control" placeholder="Email" value="{{ old('email') }}">
            
          </div>
          <div class="form-group has-feedback{{ $errors->has('password') ? ' has-error' : '' }}">
              {{ Form::label('password', 'Password') }}
              @if ($errors->has('password'))
              <label class="control-label" for="inputError">{{ $errors->first('password') }}</label>
              @endif
            <input type="password" name="password" class="form-control" placeholder="Password" >
            
          </div>
          <div class="form-group has-feedback{{ $errors->has('password_confirmation') ? ' has-error' : '' }}">
              {{ Form::label('password_confirmation', 'Konfirmasi Password') }}
              @if ($errors->has('password_confirmation'))
              <label class="control-label" for="inputError">{{ $errors->first('password_confirmation') }}</label>
              @endif
            <input type="password" name="password_confirmation" class="form-control" placeholder="Konfirmasi password">
            
          </div>
            
            <div class="form-group has-feedback{{ $errors->has('jenis_identitas') ? ' has-error' : '' }}">
                {{ Form::label('jenis_identitas', 'Jenis Identitas') }}        
                @if ($errors->has('jenis_identitas'))
                        <label class="control-label" for="inputError">{{ $errors->first('jenis_identitas') }}</label>
                        @endif
                        <input type="text" name="jenis_identitas" class="form-control" placeholder="Jenis Identitas" value="{{ old('jenis_identitas') }}">
                      
                    </div>
                <div class="form-group has-feedback{{ $errors->has('no_identitas') ? ' has-error' : '' }}">
                    {{ Form::label('no_identitas', 'No Identitas') }}    
                    @if ($errors->has('no_identitas'))
                        <label class="control-label" for="inputError">{{ $errors->first('no_identitas') }}</label>
                        @endif
                        <input type="text" name="no_identitas" class="form-control" placeholder="No Identitas" value="{{ old('no_identitas') }}">
                      
                    </div>
                <div class="form-group has-feedback{{ $errors->has('umur') ? ' has-error' : '' }}">
                    {{ Form::label('umur', 'Umur') }}    
                    @if ($errors->has('umur'))
                        <label class="control-label" for="inputError">{{ $errors->first('umur') }}</label>
                        @endif
                        <input type="text" name="umur" class="form-control" placeholder="Umur" value="{{ old('umur') }}">
                      
                    </div>
            </div>
            <div class="col-xs-6">
                    
                <div class="form-group has-feedback{{ $errors->has('jk') ? ' has-error' : '' }}">
                    {{ Form::label('jk', 'Jenis Kelamin') }}    
                    @if ($errors->has('jk'))
                        <label class="control-label" for="inputError">{{ $errors->first('jk') }}</label>
                        @endif
                        <input type="text" name="jk" class="form-control" placeholder="Jenis Kelamin" value="{{ old('jk') }}">
                      
                    </div>
                <div class="form-group has-feedback{{ $errors->has('pendidikan_terakhir') ? ' has-error' : '' }}">
                    {{ Form::label('pendidikan_terakhir', 'Pendidikan Terakhir') }}    
                    @if ($errors->has('pendidikan_terakhir'))
                        <label class="control-label" for="inputError">{{ $errors->first('pendidikan_terakhir') }}</label>
                        @endif
                        <input type="text" name="pendidikan_terakhir" class="form-control" placeholder="Pendidikan Terakhir" value="{{ old('pendidikan_terakhir') }}">
                      
                    </div>
                <div class="form-group has-feedback{{ $errors->has('alamat') ? ' has-error' : '' }}">
                    {{ Form::label('alamat', 'Alamat') }}    
                    @if ($errors->has('alamat'))
                        {{ Form::label('inputError', $errors->first('alamat'), ['class'=>'control-label']) }}
                    @endif
                    {{ Form::textarea('alamat', $value=old('alamat'), ['placeholder'=>'Alamat', 'class'=>'form-control', 'rows'=>'8']) }}
                        
                    </div>
                <div class="form-group has-feedback{{ $errors->has('telp') ? ' has-error' : '' }}">
                    {{ Form::label('telp', 'Telepon') }}    
                    @if ($errors->has('telp'))
                        <label class="control-label" for="inputError">{{ $errors->first('telp') }}</label>
                        @endif
                        <input type="text" name="telp" class="form-control" placeholder="No Telepon" value="{{ old('telp') }}">
                      
                    </div>
                <div class="form-group has-feedback{{ $errors->has('pekerjaan') ? ' has-error' : '' }}">
                    {{ Form::label('pekerjaan', 'Pekerjaan') }}    
                    @if ($errors->has('pekerjaan'))
                        <label class="control-label" for="inputError">{{ $errors->first('pekerjaan') }}</label>
                        @endif
                        <input type="text" name="pekerjaan" class="form-control" placeholder="Pekerjaan" value="{{ old('pekerjaan') }}">
                     
                    </div>
                <div class="form-group has-feedback{{ $errors->has('instansi_pekerjaan') ? ' has-error' : '' }}">
                    {{ Form::label('instansi_pekerjaan', 'Instansi Pekerjaan') }}    
                    @if ($errors->has('instansi_pekerjaan'))
                        <label class="control-label" for="inputError">{{ $errors->first('instansi_pekerjaan') }}</label>
                        @endif
                        <input type="text" name="instansi_pekerjaan" class="form-control" placeholder="Instansi Pekerjaan" value="{{ old('instansi_pekerjaan') }}">
                      
                    </div>
            </div>
          
          </div>
                <div class="box-footer">
                    <div class="form-group col-md-3">
                    <button type="submit" class="btn btn-primary btn-block btn-flat">Daftar</button>
                    <!--<a href="{{ URL::to('login') }}" class="text-center" style="text-decoration: underline;">I already have a membership</a>-->
                    </div>
                    <div class="col-md-9" style="margin:5px 0;"><a href="{{ URL::to('login') }}" class="text-center" style="text-decoration: underline;">Saya sudah mendaftar</a></div>
                  </div>
            
        </form>
        
      </div><!-- /.form-box -->
      
    </div><!-- /.register-box -->
    </div>

    <!-- jQuery 2.1.4 -->
    <script src="{{ asset('/public/plugins/jQuery/jQuery-2.1.4.min.js') }}"></script>
    <!-- Bootstrap 3.3.5 -->
    <script src="{{ asset('/public/bootstrap/js/bootstrap.min.js') }}"></script>
    <!-- iCheck -->
    <script src="{{ asset('/public/plugins/iCheck/icheck.min.js') }}"></script>
    <script>
      $(function () {
        $('input').iCheck({
          checkboxClass: 'icheckbox_square-blue',
          radioClass: 'iradio_square-blue',
          increaseArea: '20%' // optional
        });
      });
    </script>
  </body>
  @endsection