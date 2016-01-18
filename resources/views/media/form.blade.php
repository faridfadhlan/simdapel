

                <div class="box-header with-border">
                  <h3 class="box-title">Edit Media</h3>
                </div><!-- /.box-header -->
                <!-- form start -->
                {{ Form::open(array('route' => array('simpan_media', $media->id), 'method'=>'PUT')) }}
                  <div class="box-body">
                    <div class="form-group">
                      <label for="nama_company">Nama Media</label>
                      {{ Form::text('nama_media', $value=$media->nama_media, $attributes=array('class'=>'form-control','placeholder'=>'Nama Media')) }}
                      <!--<input type="email" class="form-control" id="company_name" placeholder="Nama Company">-->
                    </div>
                  </div><!-- /.box-body -->

                  <div class="box-footer">
                    <button type="submit" class="btn btn-primary">Submit</button>
                  </div>
                {{ Form::close() }}
         