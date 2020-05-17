<?php
 
namespace App;
 
use Laravel\Passport\HasApiTokens;
use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

 
class User extends Authenticatable
{
    use HasApiTokens, Notifiable;

    public function AauthAcessToken(){
        return $this->hasMany('\App\OauthAccessToken');
    }

    public function addresses(){
        return $this->hasMany(Address::class, 'user_id');
    }

    public function devices(){
        return $this->hasMany(Device::class, 'user_id');
    }

    public function products(){
        return $this->hasMany(Product::class, 'user_id');
    }

    protected $table = "users";
 
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'username', 'email', 'image', 'name', 'mobile', 'fb_id', 'roleId', 'language', 'otp'
    ];
 
    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'device_token', 'password', 'created_at', 'updated_at'
    ];
}