<?php

namespace App;

use Illuminate\Auth\Authenticatable;
 use Illuminate\Database\Eloquent\Model;

class Fleet extends Model
{

    protected $casts = [
        'armament' => 'array'
    ];

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'class','crew', 'image','value','status', 'armament'
    ];

    /**
     * The attributes excluded from the model's JSON form.
     *
     * @var array
     */
    protected $hidden = [

    ];


}
