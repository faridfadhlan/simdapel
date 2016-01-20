<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;

use App\Http\Requests;
use App\Http\Controllers\Controller;

class MediaController extends Controller
{
    public function index() {
        return view('media.index', ['medias'=> \App\Media::paginate(10)]);
    }
    
    public function edit($id) {
        $media = \App\Media::find($id);
        return view('media.edit', ['media'=> $media]);
    }
    
    public function update($id) {    
        $media = \App\Media::findOrNew($id);       
        $media->update(array(
            'nama_media'=>Input::get('nama_media')
        ));
        return redirect('media');
    }
    
    public function create() {
        $media = new \App\Media;
        return view(
                'media.create', 
                [
                    'media'=> $media,
                ]);
    }
    
    public function save() {        
        $media = new \App\Media;       
        $media->nama_media = Input::get('nama_media');
        $media->save();
        return redirect('media');
    }
}
