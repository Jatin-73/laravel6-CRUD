<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $fillable = [
        'product_title', 'product_description', 'product_review', 'user_id'
    ];

    public function users()
    {
        return $this->belongsTo('User', 'id');
    }
}
