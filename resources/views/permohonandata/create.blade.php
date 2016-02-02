@extends('layouts.main')

@section('content')
<div class="content-wrapper">
    <section class="content-header">
        <h1>
            Entri Permohonan Data
            <!--<small>Control panel</small>-->
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li>Permohonan Data</li>
            <li class="active">Entri Permohonan Data</li>
          </ol>
    </section>
    <section class="content">
        <div class="nav-tabs-custom">
                <ul class="nav nav-tabs">
                  <li class="active"><a href="#tab_1" data-toggle="tab">BPS</a></li>
                  <li><a href="#tab_2" data-toggle="tab">Personal / Individu</a></li>
                  <li><a href="#tab_3" data-toggle="tab">Instansi / Organisasi / Perusahaan</a></li>
                </ul>
                <div class="tab-content">
                    <div class="tab-pane active" id="tab_1">
                    @include('permohonandata.bps')
                    </div>
                  <div class="tab-pane" id="tab_2">
                      @include('permohonandata.individu')
                  </div><!-- /.tab-pane -->
                  <div class="tab-pane" id="tab_3">
                      @include('permohonandata.instansi')
                  </div>
                </div><!-- /.tab-content -->
              </div><!-- nav-tabs-custom -->
    </section>
</div>
@include('permohonandata.modalpegawai')
@include('permohonandata.modal_data')


@endsection

@section('script_atas')
<link rel="stylesheet" type="text/css" href="{{ asset('/public/plugins/datatables/new/css/dataTables.bootstrap.min.css') }}">
@endsection

@section('script_bawah')
<script src="{{ asset('/public/plugins/datatables/new/js/jquery.dataTables.min.js') }}"></script>
<script src="{{ asset('/public/plugins/datatables/new/js/dataTables.bootstrap.min.js') }}"></script>

<script>
    
    $("#submit_instansi").click(function() {
        //alert($("select[name='proses_data']").val());
        //alert($("input[name='size']").val());
        $("#form_instansi").submit();
    });
    
    function pembayaran(id) {

        if(id==='1') {
            //$(".pnbp-container").append('<div class="tambah_pnbp"><br><select name="proses_data" class="form-control pembayaran"><option value="1">Dengan Proses Data</option><option value="2">Tanpa Proses Data</option></select><br><div class="input-group"><input class="form-control ukuran" placeholder="Ukuran File..." name="size" type="text"><span class="input-group-addon">KB</span></div></div>')
            $("#xxx").append('<div class="form-group tambah_pnbp">{{ Form::label('opsi_data', 'Pilihan Data') }}<select name="proses_data" class="form-control"><option value="1">Dengan Proses Data</option><option value="2">Tanpa Proses Data</option></select><div class="input-group"><input class="form-control" placeholder="Ukuran File..." name="size" type="text"><span class="input-group-addon">KB</span></div></div>');
        }
        else {
            $("div.tambah_pnbp").remove();
        }
    }
    
    function pilih_pegawai(id, nama, seksi){
        $('#myModal').modal('hide');
        $("#label_pegawai_id").html(nama+" - "+seksi);
        $("#pegawai_id").val(id);
    }
      
    function pilih_data(id,nama,rincian,tahun) {
        $('#myModal2').modal('hide');
        $("#tes tbody").html("<tr id='data_"+id+"'><td>"+id+"</td><td>"+nama+"</td><td>"+rincian+"</td><td>"+tahun+"</td><td><a href='#' onclick='hapus("+id+")'>Remove</a></td></tr>");
        //document.getElementById('data_inventori_id').value=id;
        $(".data_inventori_id").val(id);
    }
      
    function hapus(id) {
        $("tr#data_"+id).remove();
        $(".data_inventori_id").val('');
    }

    $('#tabel_pegawai').DataTable();
    $('#tabel_data').DataTable();

    $('#myModal2').on('hidden.bs.modal', function (e) {  
        $("#div1").html("");
    });
      
</script>
@endsection