@section('script_atas')
<link rel="stylesheet" href="{{ asset('/public/plugins/iCheck/square/blue.css') }}">
@endsection


@section('script_bawah')
<script src="{{ asset('/public/plugins/datepicker/bootstrap-datepicker.js') }}"></script>
<link rel="stylesheet" href="{{ asset('/public/plugins/datepicker/datepicker3.css') }}">
<script src="{{ asset('/public/plugins/iCheck/icheck.min.js') }}"></script>
<script>   
     $("body").on('change','#pilih_bidang', function(){
            $.ajax({
                url: "{{ URL::to('peminjaman_perangkatlunak/get_seksi_from_bidang/') }}/"+$(this).val(), 
                success: function(result){
                    //alert(result);
                    $("select[name='seksi_id']").remove();
                    $("#seksi_container").append(result);
                }
            });
        });
    
    $("body").on('change','#seksi', function(e){
            $.ajax({
                url: "{{ URL::to('peminjaman_perangkatlunak/get_user_from_seksi/') }}/"+$(this).val(), 
                success: function(result){
                    //alert(result);
                    $("select[name='user_id']").remove();
                    $("#user_container").append(result);
                    
                }
            });
        });
        
        $("input[name='duplikasi']").on('click', function(e){
            //alert('d');
            
            if ($(this).is(':checked')) {
                $(".tgl_kembali_container").html("");
            }
            else {
                $(".tgl_kembali_container").html('{!! Form::label('tgl_targetkembali', 'Tanggal Kembali').Form::text('tgl_targetkembali', $value=$peminjaman->tgl_targetkembali, $attributes=array('class'=>'form-control datepicker','placeholder'=>'Tanggal Kembali')) !!}');
                    $(".datepicker").datepicker({
                format: 'yyyy-mm-dd',
            });
        }
            
        });
    $(function () {
        
         $(".datepicker").datepicker({
            format: 'yyyy-mm-dd',
        });
       
        
        
        
        
      });
</script>
@endsection


{{ Form::open(['url' => 'peminjaman_perangkatlunak/save', 'method'=>'POST']) }}
<div class="box-header"><h3 class="box-title">Tambah Peminjaman Software</h3></div>
<div class="box-body">
    <div class="row">
        <div class="col-md-12">
    <div id="tabel-pinjam-pl">
        <table class="table table-bordered table-striped">
            <thead>
                <tr>
                    <th>Kode</th>
                    <th>Nama Perangkat Lunak</th>
                    <th>Kategori</th>
                    <th>Jumlah Media</th>
                    <th>Lisensi</th>
                </tr>
            </thead>
            <tbody>
                @if($pl_data == NULL)
                <tr><td colspan="5">Software belum dipilih. {{ link_to('perangkatlunak', 'Pilih Software') }}</td></tr>
                @else
                <tr>
                    <td>{{ $pl_data->kode }} {{ Form::hidden('pl_data_id', $pl_data->id) }}</td>
                    <td>{{ $pl_data->nama }} ({{ link_to('perangkatlunak', 'Ganti') }})</td>
                    <td>{{ $pl_data->jenis->nama_jenis }}</td>
                    <td>{{ $pl_data->jumlah_media }}</td>
                    <td>{{ $pl_data->license->nama_license }}</td>
                </tr>
                @endif
                
            </tbody>
        </table>
    </div>
        </div></div>

        @if (count($errors) > 0)
        <div class="row">
        <div class="col-md-12">
            <div class="alert alert-danger">

                <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
              </div>
        </div>
            </div>
        @endif

    <div class="row">
        <div class="col-md-6">
            <div class="form-group">
                {{ Form::label('bidang_id', 'Unit Kerja / Bidang Peminjam') }}
                {{ Form::select('bidang_id', $bidangs, $value=null, $attributes=array('class'=>'form-control','placeholder'=>'Pilih Bidang Peminjam...', 'id'=>'pilih_bidang')) }}
            </div>
            <div class="form-group" id="seksi_container">
                {{ Form::label('seksi_id', 'Seksi Peminjam') }}
                {{ Form::select('seksi_id', $seksis, $value=null,/*$value=$peminjaman->peminjam->seksi_id,*/ $attributes=array('class'=>'form-control','placeholder'=>'Pilih Seksi Peminjam...', 'id'=>'seksi')) }}
            </div>
            <div class="form-group" id="user_container">
                {{ Form::label('user_id', 'Nama Peminjam') }}
                <select name="user_id" class="form-control" placeholder="Pilih Nama Peminjam" id="user"></select>

                
            </div>
            <div class="form-group">
                    <input type="checkbox" name="duplikasi" id="duplikasi"> Buat Duplikasi Baru
                
            </div>
        </div>
        <div class="col-md-6">
            
            <div class="form-group">
                {{ Form::label('tgl_pinjam', 'Tanggal Pinjam') }}
                {{ Form::text('tgl_pinjam', $value=$peminjaman->tgl_pinjam, $attributes=array('class'=>'form-control datepicker','placeholder'=>'Tanggal Pinjam')) }}
            </div>
            <div class="form-group tgl_kembali_container">
                {{ Form::label('tgl_targetkembali', 'Tanggal Kembali') }}
                {{ Form::text('tgl_targetkembali', $value=$peminjaman->tgl_targetkembali, $attributes=array('class'=>'form-control datepicker','placeholder'=>'Tanggal Kembali')) }}
            </div>            
            
            <div class="form-group">
                {{ Form::label('keterangan', 'Keterangan') }}
                {{ Form::textarea('keterangan', $value=$peminjaman->keterangan, $attributes=array('class'=>'form-control','placeholder'=>'Keterangan', 'rows'=>'4')) }}
            </div>
        </div>
    </div>
</div>
<div class="box-footer">
    <button type="submit" class="btn btn-primary">Simpan</button>
</div>
{{ Form::close() }}