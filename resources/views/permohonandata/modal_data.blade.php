<!-- Modal -->
<div class="modal fade bs-example-modal-lg" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Pilih Data</h4>
      </div>
        <div class="modal-body">
            
        
<table id="tabel_data" class="table table-bordered table-striped">
    <thead>
        <tr>
            <th>Id</th>
            <th>No CD</th>
            <th>Label CD</th>
            <th>Nama Data</th>
            <th>Rincian</th>
            <th>Tahun</th>
            <th>Action</th>
        </tr>
    </thead>
    <tbody>
        @foreach($datas as $data)
        <tr>
            <td>{{ $data->id }}</td>
            <td>{{ $data->no_cd }}</td>
            <td>{{ $data->label_cd }}</td>
            <td>{{ $data->nama_data }}</td>
            <td>{{ $data->rincian }}</td>
            <td>{{ $data->tahun }}</td>
            <td><a onclick="pilih_data('{{ $data->id }}', '{{ $data->nama_data }}', '{{ $data->rincian }}', '{{ $data->tahun }}')" class="btn btn-xs btn-primary"><i class="glyphicon glyphicon-edit"></i> Pilih Data</a></td>
        </tr>
        @endforeach
    </tbody>
</table>

      </div>
    </div>
  </div>
</div>