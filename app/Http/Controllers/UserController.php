<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use \App\User;
use App\Http\Requests;
use App\Http\Controllers\Controller;

class UserController extends Controller
{
    public function index() {
        $users = \App\User::paginate(10);
        return view('user.index', ['users'=>$users]);
    }
    
    public function create() {
        $user = new \App\User;
        $seksis = \App\Seksi::lists('nama_seksi', 'id');
        $bidangs = \App\Bidang::lists('nama_bidang', 'id');
        $roles = \App\Role::where('id', '<>', '3')->lists('description', 'id');
        return view('user.create', ['user'=>$user, 'seksis'=>$seksis, 'bidangs'=>$bidangs, 'roles'=>$roles]);
    }
    
    public function save(Request $request) {
        $user = new \App\User;
        
        $messages = array(
            'required'=>'Field :attribute harus diisi',
        );
        
        $validator = \Illuminate\Support\Facades\Validator::make($request->all(), [
            'nama' => 'required|max:255',
            'username' => 'required|unique:user',
            'password' => 'required|confirmed|min:6',
            'email' => 'required|email',
            'seksi_id' => 'required',
            'role_id' => 'required'
        ], $messages);
        
        if($validator->fails()) {
            return redirect('user/create')
                        ->withErrors($validator)
                        ->withInput();
        }
        
        $user->nama = $request->input('nama');
        $user->nip = $request->input('nip');
        $user->username = $request->input('username');
        $user->password = bcrypt($request->input('password'));
        $user->email = $request->input('email');
        $user->seksi_id = $request->input('seksi_id');
        $user->role_id = $request->input('role_id');
        $user->save();
        return redirect('user/index');
        
    }
    
    public function edit($id) {
        $user = User::findOrFail($id);
        $seksis = \App\Seksi::lists('nama_seksi', 'id');
        $bidangs = \App\Bidang::lists('nama_bidang', 'id');
        $roles = \App\Role::where('id', '<>', '3')->lists('description', 'id');
        if($user->role_id!='3') {
            return view('user.edit', [
                'user'=>$user,
                'seksis'=>$seksis,
                'bidangs'=>$bidangs,
                'roles'=>$roles
            ]);
        }
    }
    
    public function update(Request $request, $id) {
        
        $messages = array(
            'required'=>'Field :attribute harus diisi',
        );
        
        $validator = \Illuminate\Support\Facades\Validator::make($request->all(), [
            'nama' => 'required|max:255',
            'username' => 'required',
            'email' => 'required|email',
            'seksi_id' => 'required',
            'role_id' => 'required'
        ], $messages);
        
        if($validator->fails()) {
            return redirect('user/edit/'.$id)
                        ->withErrors($validator);
        }
        
        $user = User::findOrFail($id);
        $user->nama = $request->input('nama');
        $user->nip = $request->input('nip');
        $user->username = $request->input('username');
        $user->email = $request->input('email');
        $user->seksi_id = $request->input('seksi_id');
        $user->role_id = $request->input('role_id');
        $user->save();
        return redirect('user/index');
    }
}
