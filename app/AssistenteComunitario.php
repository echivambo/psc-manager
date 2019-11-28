<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class AssistenteComunitario extends Model
{
    use SoftDeletes;

    protected $fillable = [
        'nome', 'email', 'contacto', 'user_id'
    ];

    /**
     * The attributes that should be mutated to dates.
     *
     * @var array
     */

    protected $dates = ['deleted_at'];
}
