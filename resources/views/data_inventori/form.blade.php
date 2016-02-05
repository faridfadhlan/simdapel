
                  <div class="form-group">
                      {{ Form::label('subjek_id', 'Nama Subjek Data') }}
                      {{ Form::select('subjek_id', $subjeks, $data->subjek_id, $attributes=array('class'=>'form-control','placeholder' => 'Pilih Subjek Data...')) }}
                    </div>
                    <div class="form-group">
                      {{ Form::label('no_cd', 'No CD') }}
                      {{ Form::text('no_cd', $value=$data->no_cd, $attributes=array('class'=>'form-control','placeholder'=>'No CD')) }}
                    </div>
                    <div class="form-group">
                      {{ Form::label('label_cd', 'Label CD') }}
                      {{ Form::text('label_cd', $value=$data->label_cd, $attributes=array('class'=>'form-control','placeholder'=>'Label CD')) }}
                    </div>
                    <div class="form-group">
                      {{ Form::label('nama_data', 'Nama Data') }}
                      {{ Form::text('nama_data', $value=$data->nama_data, $attributes=array('class'=>'form-control','placeholder'=>'Nama Data')) }}
                    </div>
                    <div class="form-group">
                      {{ Form::label('tahun', 'Tahun') }}
                      {{ Form::text('tahun', $value=$data->tahun, $attributes=array('class'=>'form-control','placeholder'=>'Tahun')) }}
                    </div>
                  
                    <div class="form-group">
                      {{ Form::label('rincian', 'Rincian') }}
                      {{ Form::text('rincian', $value=$data->rincian, $attributes=array('class'=>'form-control','placeholder'=>'Rincian')) }}
                    </div>
                    
                </div>
                      <div class="col-md-6">
                          <div class="form-group">
                      {{ Form::label('format', 'Format') }}
                      {{ Form::text('format', $value=$data->format, $attributes=array('class'=>'form-control','placeholder' => 'Format')) }}
                    </div>
                    <div class="form-group">
                      {{ Form::label('jumlah_rec', 'Jumlah Record') }}
                      {{ Form::text('jumlah_rec', $value=$data->jumlah_rec, $attributes=array('class'=>'form-control', 'placeholder'=>'Jumlah Record')) }}
                    </div>
                    <div class="form-group">
                      {{ Form::label('file_size', 'Ukuran File') }}
                      {{ Form::text('file_size', $value=$data->file_size, $attributes=array('class'=>'form-control', 'placeholder'=>'Ukuran File')) }}
                    </div>
                    <div class="form-group">
                      {{ Form::label('keterangan', 'Keterangan') }}
                      {{ Form::textarea('keterangan', $value=$data->keterangan, $attributes=array('class'=>'form-control', 'placeholder'=>'Keterangan', 'rows'=>'5')) }}
                    </div>
                    <div class="form-group">
                      {{ Form::label('nama_layout', 'Layout Data') }}
                      {{ Form::file('nama_layout', $attributes=['class'=>'form-control']) }}
                    </div>
                    