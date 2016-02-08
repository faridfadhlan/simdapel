
                  
                    
                    <div class="form-group">
                      {{ Form::label('nama', 'Nama') }}
                      {{ Form::text('nama', $value=$pl_data->nama, $attributes=array('class'=>'form-control','placeholder'=>'Nama')) }}
                    </div>
                    <div class="form-group">
                      {{ Form::label('duplikat', 'Jumlah Duplikat') }}
                      {{ Form::text('duplikat', $value=$pl_data->duplikat, $attributes=array('class'=>'form-control','placeholder'=>'Jumlah Duplikat...')) }}
                    </div>
                    <div class="form-group">
                      {{ Form::label('jumlah_media', 'Jumlah Media Per Duplikat') }}
                      {{ Form::text('jumlah_media', $value=$pl_data->jumlah_media, $attributes=array('class'=>'form-control','placeholder'=>'Jumlah Media Per Duplikat...')) }}
                    </div>
                    <div class="form-group">
                      {{ Form::label('manual', 'Manual') }}
                      {{ Form::file('manual', $attributes=array('class'=>'form-control')) }}
                      <p class="help-block">{{ $pl_data->manual }}</p>
                    </div>
                  
                    <div class="form-group">
                      {{ Form::label('tgl_terima', 'Tanggal Terima') }}
                      {{ Form::text('tgl_terima', $value=$pl_data->tgl_terima, $attributes=array('class'=>'form-control datepicker','placeholder'=>'Tanggal Terima')) }}
                    </div>
                    <div class="form-group">
                      {{ Form::label('media_id', 'Media Penyimpanan') }}
                      {{ Form::select('media_id', $medias, $pl_data->media_id, $attributes=array('class'=>'form-control','placeholder' => 'Pilih Media Penyimpanan...')) }}
                    </div>
                </div>
                      <div class="col-md-6">
                    <div class="form-group">
                      {{ Form::label('license_id', 'Lisensi') }}
                      {{ Form::select('license_id', $licenses, $pl_data->license_id, $attributes=array('class'=>'form-control', 'placeholder'=>'Pilih Lisensi...')) }}
                    </div>
                    <div class="form-group">
                      {{ Form::label('jenis_id', 'Jenis Perangkat Lunak') }}
                      {{ Form::select('jenis_id', $jenises, $pl_data->jenis_id, $attributes=array('class'=>'form-control', 'placeholder'=>'Pilih Jenis Perangkat Lunak...')) }}
                    </div>
                    <div class="form-group">
                      {{ Form::label('company_id', 'Nama Company') }}
                      {{ Form::select('company_id', $companies, $pl_data->company_id, $attributes=array('class'=>'form-control', 'placeholder'=>'Pilih Company...')) }}
                    </div>
                    <div class="form-group">
                      {{ Form::label('tgl_expired', 'Tanggal Expired') }}
                      {{ Form::text('tgl_expired', $value=$pl_data->tgl_expired, $attributes=array('class'=>'form-control datepicker','placeholder'=>'Tanggal Expired...')) }}
                    </div>
                    <div class="form-group">
                      {{ Form::label('ket', 'Keterangan') }}
                      {{ Form::textarea('ket', $value=$pl_data->ket, $attributes=array('class'=>'form-control','placeholder'=>'Keterangan...','rows'=>'8')) }}
                    </div>
                  </div>
                        </div>
                    </div>
                    
                  <div class="box-footer">
                    <button type="submit" class="btn btn-primary">Submit</button>
                  </div>
                {{ Form::close() }}
                
                

