<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Address extends Model
{
    protected $fillable = [
    	'address', 'lat', 'lng', 'user_id'
    ];

    public function users()
    {
        return $this->belongsTo('User', 'id');
    }
}
