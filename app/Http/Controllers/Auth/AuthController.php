<?php

namespace App\Http\Controllers\Auth;

use App\User;
use Validator;
use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\ThrottlesLogins;
use Illuminate\Foundation\Auth\AuthenticatesAndRegistersUsers;

class AuthController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Registration & Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users, as well as the
    | authentication of existing users. By default, this controller uses
    | a simple trait to add these behaviors. Why don't you explore it?
    |
    */

    use AuthenticatesAndRegistersUsers, ThrottlesLogins;
    
    //Kolom username
    protected $username = 'username';
    //protected $loginPath = 'auth/login';

    /**
     * Where to redirect users after login / registration.
     *
     * @var string
     */
    protected $redirectTo = '/';

    /**
     * Create a new authentication controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest', ['except' => 'logout']);
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'nama' => 'required|max:255',
            'username' => 'required|max:15|unique:user',
            'email' => 'required|email|max:255|unique:user',
            'password' => 'required|confirmed|min:6',
            'jenis_identitas' => 'required',
            'no_identitas' => 'required',
            'umur' => 'required',
            'jk' => 'required',
            'pendidikan_terakhir' => 'required',
            'alamat' => 'required',
            'telp' => 'required',
            'pekerjaan' => 'required',
            'instansi_pekerjaan' => 'required',
        ]);
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return User
     */
    protected function create(array $data)
    {
        return User::create([
            'nama' => $data['nama'],
            'username' => $data['username'],
            'email' => $data['email'],
            'password' => bcrypt($data['password']),
            'jenis_identitas' => $data['jenis_identitas'],
            'no_identitas' => $data['no_identitas'],
            'umur'=>$data['umur'],
            'jk'=>$data['jk'],
            'pendidikan_terakhir'=>$data['pendidikan_terakhir'],
            'alamat'=>$data['alamat'],
            'telp'=>$data['telp'],
            'pekerjaan'=>$data['pekerjaan'],
            'instansi_pekerjaan'=>$data['instansi_pekerjaan'],
            'role_id' => (isset($data['role_id']))?$data['role_id']:'3',
        ]);
    }
    
    public function is_operator() {
        if($this->user()->level_id == '4') return true;
        return false;
    }
    
    public function is_user_bps() {
        if($this->user()->level_id == '2') return true;
        return false;
    }
}
