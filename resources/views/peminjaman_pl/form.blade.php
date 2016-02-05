{{ Form::open(['url' => 'user/save', 'method'=>'POST']) }}
<div class="box-header"><h3 class="box-title">Tambah Peminjaman Software</h3></div>
<div class="box-body">

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
        <div class="col-md-12">
            <div class="form-group">
                {{ Form::label('tgl_pinjam', 'Tanggal Pinjam') }}
                {{ Form::text('tgl_pinjam', $value=$peminjaman->tgl_pinjam, $attributes=array('class'=>'form-control','placeholder'=>'Tanggal Pinjam')) }}
            </div>
            <div class="form-group">
                {{ Form::label('tgl_targetkembali', 'Tanggal Kembali') }}
                {{ Form::text('tgl_targetkembali', $value=$peminjaman->tgl_targetkembali, $attributes=array('class'=>'form-control','placeholder'=>'Tanggal Kembali')) }}
            </div>
            <div class="form-group">
                {{ Form::label('user_id', 'Peminjam') }}
                {{ Form::text('user_id', $value=$peminjaman->user_id, $attributes=array('class'=>'form-control','placeholder'=>'Peminjam')) }}
            </div>
            <div class="form-group">
                {{ Form::label('keterangan', 'Keterangan') }}
                {{ Form::textarea('keterangan', $value=$peminjaman->keterangan, $attributes=array('class'=>'form-control','placeholder'=>'Keterangan')) }}
            </div>
        </div>
    </div>
</div>
<div class="box-footer">
    <button type="submit" class="btn btn-primary">Simpan</button>
</div>
{{ Form::close() }}