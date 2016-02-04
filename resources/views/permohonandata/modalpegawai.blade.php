
<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Pilih Pegawai</h4>
      </div>
      <div class="modal-body">
        <table id="tabel_pegawai" class="table table-bordered table-striped">
            <thead>
              <tr>
                <th>NIP</th>
                <th>Nama</th>
                <th>Seksi</th>
                <th>Bidang</th>
                <th>Aksi</th>
              </tr>
            </thead>
            <tbody>
                @foreach($users as $user)
                @if( $user->nip != NULL )
                <tr>
                    <td>{{ $user->nip }}</td>
                    <td>{{ $user->nama }}</td>
                    <td>{{ $user->seksi_id }}</td>
                    <td>{{ $user->seksi->bidang_id }}</td>
                    <td><a href='#' onclick="return pilih_pegawai('{{ $user->id }}', '{{ $user->nama }}', '{{$user->seksi->nama_seksi }}')">Pilih</a></td>
                </tr>
                @endif
                @endforeach
            </tbody>
        </table>
      </div>
    </div>
  </div>
</div>