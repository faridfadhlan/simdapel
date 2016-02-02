
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
    <div class="col-md-6">
        {{ Form::open(array('url' => 'permohonan_data/simpan', 'method' => 'post')) }}
        {{ Form::hidden('data_inventori_id', $value=$data->data_inventori_id, $attributes=array('class'=>'data_inventori_id')) }}
        
    <div class="form-group">
        {{ Form::label('no_surat', 'Nomor Surat') }}
        {{ Form::text('no_surat', $value=$data->no_surat, $attributes=array('class'=>'form-control','placeholder'=>'Nomor Surat...')) }}
    </div>
    <div class="form-group">
        {{ Form::label('pegawai_id', 'Data Peminjam') }}
        {{ Form::hidden('pegawai_id', $value=$data->pegawai_id, $attributes=array('id'=>'pegawai_id')) }}
        <br /><a href="#" data-toggle="modal" data-target="#myModal">Browse...</a>
        &nbsp;&nbsp;&nbsp;<span id="label_pegawai_id"></span>
    </div>
    
    </div>
    <div class="col-md-6">
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