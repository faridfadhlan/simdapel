
    <div class="box-body">
        <div class="row">
            <div class="col-md-12">
                <a class="btn btn-block btn-primary" style="display:inline;" href="#" data-toggle="modal" data-target="#myModal2">Pilih Data...</a>
                <br />
                <br />
                <table id="tes" class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Nama Data</th>
                            <th>Rincian Data</th>
                            <th>Tahun</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        
                    </tbody>
                </table>
            </div>
        </div>
     <div class="row">
         <div class="col-md-12"><h3>Identitas Pemohon Data</h3></div>
    <div class="col-md-6">
        {{ Form::open(array('url' => 'permohonan_data/simpan_individu', 'method' => 'post')) }}
    {{ Form::hidden('data_inventori_id', $value=$data->data_inventori_id, $attributes=array('class'=>'data_inventori_id')) }}
    <div class="form-group">
        {{ Form::label('jenis_identitas', 'Jenis Identitas') }}
        {{ Form::select('jenis_identitas', ['1'=>'KTP', '2'=>'SIM', '3'=>'Lainnya'],$value=$data->jenis_identitas, $attributes=array('class'=>'form-control','placeholder'=>'Pilih Identitas...')) }}
    </div>
    <div class="form-group">
        {{ Form::label('no_identitas', 'Nomor Identitas') }}
        {{ Form::text('no_identitas', $value=$data->no_identitas, $attributes=array('class'=>'form-control','placeholder'=>'Nomor Identitas...')) }}
    </div>
    <div class="form-group">
        {{ Form::label('nama', 'Nama') }}
        {{ Form::text('nama', $value=$data->nama, $attributes=array('class'=>'form-control','placeholder'=>'Nama...')) }}
    </div>
    <div class="form-group">
        {{ Form::label('umur', 'Umur') }}
        {{ Form::text('umur', $value=$data->umur, $attributes=array('class'=>'form-control','placeholder'=>'Umur...')) }}
    </div>
    <div class="form-group">
        {{ Form::label('jk', 'Jenis Kelamin') }}
        {{ Form::select('jk', ['1'=>'Laki-Laki', '2'=>'Perempuan'], $value=$data->jk, $attributes=array('class'=>'form-control','placeholder'=>'Pilih Jenis Kelamin...')) }}
    </div>
     <div class="form-group">
        {{ Form::label('pendidikan_terakhir', 'Pendidikan Terakhir') }}
        {{ Form::select('pendidikan_terakhir', ['1'=>'SMA', '2'=>'D1/D2/D3', '3'=>'S1', '4'=>'S2', '5'=>'S3'], $value=$data->pendidikan_terakhir, $attributes=array('class'=>'form-control','placeholder'=>'Pilih Pendidikan Terakhir...')) }}
    </div>
    <div class="form-group">
        {{ Form::label('alamat', 'Alamat') }}
        {{ Form::text('alamat', $value=$data->alamat, $attributes=array('class'=>'form-control','placeholder'=>'Alamat...')) }}
    </div>  
   
    </div>
    <div class="col-md-6">
    
    <div class="form-group">
        {{ Form::label('telp', 'No Telepon') }}
        {{ Form::text('telp', $value=$data->telp, $attributes=array('class'=>'form-control','placeholder'=>'No Telepon...')) }}
    </div>
    <div class="form-group">
        {{ Form::label('pekerjaan', 'Pekerjaan') }}
        {{ Form::text('pekerjaan', $value=$data->pekerjaan, $attributes=array('class'=>'form-control','placeholder'=>'Pekerjaan...')) }}
    </div>
    <div class="form-group">
        {{ Form::label('nama_instansi', 'Instansi Pekerjaan') }}
        {{ Form::text('nama_instansi', $value=$data->nama_instansi, $attributes=array('class'=>'form-control','placeholder'=>'Instansi Pekerjaan...')) }}
    </div>
    <div class="form-group">
        {{ Form::label('email', 'Email') }}
        {{ Form::text('email', $value=$data->email, $attributes=array('class'=>'form-control','placeholder'=>'Email...')) }}
    </div>
    <div class="form-group">
        {{ Form::label('data_diminta', 'Keterangan') }}
        {{ Form::textarea('data_diminta', $value=$data->data_diminta, $attributes=['class'=>'form-control', 'placeholder'=>'Keterangan...']) }}
    </div>
    </div>
     </div>
    <div class="box-footer">
<button type="submit" class="btn btn-primary">Simpan</button>
{{ Form::close() }}
</div>
    </div>