<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\User;

class BantuanGiver extends Model
{
    protected $table = 'bantuan_giver';
    protected $guarded = [];

    public function giver()
    {
        return $this->belongsTo(User::class);
    }
    
    public function bantuan()
    {
        return $this->belongsTo(Bantuan::class,'bantuan_id');
    }
}
