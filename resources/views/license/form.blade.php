

                <div class="box-header with-border">
                  <h3 class="box-title">Edit License</h3>
                </div><!-- /.box-header -->
                <!-- form start -->
                {{ Form::open(array('route' => array('simpan_license', $license->id), 'method'=>'PUT')) }}
                  <div class="box-body">
                    <div class="form-group">
                      <label for="nama_company">Nama License</label>
                      {{ Form::text('nama_license', $value=$license->nama_license, $attributes=array('class'=>'form-control','placeholder'=>'Nama License')) }}
                      <!--<input type="email" class="form-control" id="company_name" placeholder="Nama Company">-->
                    </div>
                  </div><!-- /.box-body -->

                  <div class="box-footer">
                    <button type="submit" class="btn btn-primary">Submit</button>
                  </div>
                {{ Form::close() }}
         