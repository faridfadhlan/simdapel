
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
         {{ Form::open(array('url' => 'permohonan_data/simpan_instansi', 'method' => 'post', 'id'=>'form_instansi')) }}
    <div class="col-md-6">
        
    {{ Form::hidden('data_inventori_id', $value=$data->data_inventori_id, $attributes=array('class'=>'data_inventori_id')) }}
    <div class="form-group">
        {{ Form::label('no_surat', 'No Surat') }}
        {{ Form::text('no_surat', $value=$data->no_surat, $attributes=array('class'=>'form-control','placeholder'=>'No Surat...')) }}
    </div>
    <div class="form-group">
        {{ Form::label('nama_instansi', 'Nama Instansi') }}
        {{ Form::text('nama_instansi', $value=$data->nama_instansi, $attributes=array('class'=>'form-control','placeholder'=>'Nomor Instansi...')) }}
    </div>
    <div class="form-group">
        {{ Form::label('kategori_instansi', 'Kategori Instansi') }}
        {{ Form::select('kategori_instansi', [
            '1'=>'Lembaga Pendidikan dan Penelitian',
            '2'=>'Kementerian dan Lembaga Pemerintah',
            '3'=>'Lembaga Internasional',
            '4'=>'Media Massa',
            '5'=>'Pemerintah Daerah',
            '6'=>'Perbankan',
            '7'=>'Swasta',
            '8'=>'Lainnya',
        ], 
        $value=$data->nama, $attributes=array('class'=>'form-control','placeholder'=>'Pilih Kategori Instansi...')) }}
    </div>
    
    <div class="form-group">
        {{ Form::label('alamat', 'Alamat') }}
        {{ Form::text('alamat', $value=$data->alamat, $attributes=array('class'=>'form-control','placeholder'=>'Alamat...')) }}
    </div>  
   <div class="form-group">
        {{ Form::label('telp', 'No Telepon') }}
        {{ Form::text('telp', $value=$data->telp, $attributes=array('class'=>'form-control','placeholder'=>'No Telepon...')) }}
    </div>
    
    
    
    </div>
    <div class="col-md-6">
    
    
    <div class="form-group">
        {{ Form::label('nama_kepala', 'Nama Kepala') }}
        {{ Form::text('nama_kepala', $value=$data->nama_kepala, $attributes=array('class'=>'form-control','placeholder'=>'Nama Kepala...')) }}
    </div>
    <div class="form-group">
        {{ Form::label('data_diminta', 'Keterangan') }}
        {{ Form::textarea('data_diminta', $value=$data->data_diminta, $attributes=['class'=>'form-control', 'placeholder'=>'Keterangan...', 'rows'=>'4']) }}
    </div>
        
    <div class="form-group">
    {{ Form::label('pnbp', 'Pembayaran') }}
    {{ Form::select('pnbp', ['1'=>'PNBP', '2'=>'Non PNBP'], $value=$data->pnbp, $attributes=array('class'=>'form-control','placeholder'=>'Pilih Pembayaran...', 'onchange'=>'pembayaran(this.value)')) }}
    
    </div>
    <div class="form-group" id="xxx">
    </div>
    </div>
         {{ Form::close() }}
     </div>
    <div class="box-footer">
<input type="button" id="submit_instansi" class="btn btn-primary" value="simpan" />
    
</div>
    </div>