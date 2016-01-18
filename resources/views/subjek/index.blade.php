@extends('index')
@section('content')
@foreach($subjeks as $subjek)
{{ $subjek->nama_subjek }} <br />
@endforeach