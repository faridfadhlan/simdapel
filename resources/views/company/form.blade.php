
                
                  <div class="box-body">
                    <div class="form-group">
                      <label for="nama_company">Nama Company</label>
                      {{ Form::text('nama_company', $value=$company->nama_company, $attributes=array('class'=>'form-control','placeholder'=>'Nama Company')) }}
                      <!--<input type="email" class="form-control" id="company_name" placeholder="Nama Company">-->
                    </div>
                  </div><!-- /.box-body -->

                  <div class="box-footer">
                    <button type="submit" class="btn btn-primary">Submit</button>
                  </div>
                {{ Form::close() }}
          