<?php

function datetime_to_tanggal($datetime) {
    if($datetime != NULL) {
    $bulan = [
        '1'=>'Januari',
        '2'=>'Februari',
        '3'=>'Maret',
        '4'=>'April',
        '5'=>'Mei',
        '6'=>'Juni',
        '7'=>'Juli',
        '8'=>'Agustus',
        '9'=>'September',
        '10'=>'Oktober',
        '11'=>'Nopember',
        '12'=>'Desember',
    ];
    $waktu = explode(" ", $datetime);
    $n = str_replace("-0", "-", $waktu[0]);
    $tanggal = explode("-", $n);
    return $tanggal[2].' '.$bulan[$tanggal[1]].' '.$tanggal[0];
    }
}