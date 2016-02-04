<?php

namespace App;

use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $table = 'user';
    public $timestamps = false;
    protected $primaryKey = 'id';
    
    protected $fillable = [
        'nama', 
        'username', 
        'email', 
        'password',
        'jenis_identitas',
        'no_identitas',
        'umur',
        'jk',
        'telp',
        'pendidikan_terakhir',
        'alamat',
        'pekerjaan',
        'instansi_pekerjaan',
        'role_id'
    ];

    /**
     * The attributes excluded from the model's JSON form.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];
    
    public function seksi(){
        return $this->belongsTo('\App\Seksi', 'seksi_id', 'id');
    }
    
    public function getRole() {
        return $this->belongsTo('\App\Role', 'role_id', 'id');
    }
    
    public function role()
    {
            return $this->hasOne('App\Role', 'id', 'role_id');
    }

    public function hasRole($roles)
    {
            $this->have_role = $this->getUserRole();

            if(is_array($roles)){
                    foreach($roles as $need_role){
                            if($this->checkIfUserHasRole($need_role)) {
                                    return true;
                            }
                    }
            } else{
                    return $this->checkIfUserHasRole($roles);
            }
            return false;
    }

    private function getUserRole()
    {
            return $this->role()->getResults();
    }

    private function checkIfUserHasRole($need_role)
    {
            return (strtolower($need_role)==strtolower($this->have_role->name)) ? true : false;
    }
}
