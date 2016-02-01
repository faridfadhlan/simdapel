
    @foreach($datas as $data)
    <tr>
        <td>{{ $data->no_cd }}</td>
        <td>{{ $data->label_cd }}</td>
        <td>{{ $data->nama_data }}</td>
        <td>{{ $data->tahun }}</td>
        <td><a href='#' onclick="return pilih_data('{{ $data->id }}', '{{ $data->nama_data }}', '{{$data->tahun }}')">Pilih</a></td>
    </tr>
    @endforeach
