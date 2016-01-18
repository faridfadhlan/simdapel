
<div class="box box-primary">
                <div class="box-header with-border">
                  <h3 class="box-title">Edit Jenis</h3>
                </div><!-- /.box-header -->
                <!-- form start -->
                {{ Form::open(array('route' => array('simpan_jenis', $jenis->id), 'method'=>'PUT')) }}
                  <div class="box-body">
                    <div class="form-group">
                      <label for="nama_jenis">Nama Jenis</label>
                      {{ Form::text('nama_jenis', $value=$jenis->nama_jenis, $attributes=array('class'=>'form-control','placeholder'=>'Nama Jenis')) }}
                      <!--<input type="email" class="form-control" id="company_name" placeholder="Nama Company">-->
                    </div>
                  </div><!-- /.box-body -->

                  <div class="box-footer">
                    <button type="submit" class="btn btn-primary">Submit</button>
                  </div>
                {{ Form::close() }}
          </div><!-- /.box -->