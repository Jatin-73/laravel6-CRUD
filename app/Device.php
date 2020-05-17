<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Device extends Model
{
    protected $fillable = [
    	'device_token', 'device_type', 'user_id'
    ];

    public function users()
    {
        return $this->belongsTo('User', 'id');
    }
}
