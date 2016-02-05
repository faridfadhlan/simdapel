<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\PeminjamanPerangkatLunak;
use App\PerangkatLunak;
use App\Http\Requests;
use Illuminate\Support\Facades\Cookie;
use App\Http\Controllers\Controller;

class PeminjamanPerangkatLunakController extends Controller
{
    public function index() {
        $transaksis = PeminjamanPerangkatLunak::paginate(10);
        return view('peminjaman_pl.index', ['transaksis'=>$transaksis]);
    }
    
    public function pilihdulu() {
        
    }
    
    public function create() {
        $peminjaman = new PeminjamanPerangkatLunak;
        $pl_id = Cookie::get('pl_id');
        if($pl_id != NULL) {
            $pl_data = PerangkatLunak::find($pl_id);
            return view('peminjaman_pl.create',[
                'peminjaman'=>$peminjaman,
                'pl_data'=>$pl_data
            ]);
        }
        else {
            $this->pilihdulu();
        }
    }
}
