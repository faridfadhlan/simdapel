<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;

use App\Http\Requests;
use App\Http\Controllers\Controller;

class MediaController extends Controller
{
    public function index() {
        return view('media.index', ['medias'=> \App\Media::all()]);
    }
    
    public function edit($id) {
        $media = \App\Media::find($id);
        return view('media.edit', ['media'=> $media]);
    }
    
    public function save($id) {    
        $media = \App\Media::findOrNew($id);       
        $media->update(array(
            'nama_media'=>Input::get('nama_media')
        ));
        return redirect('media');
    }
}
