<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Saldo extends Model
{
    protected $table = 'user_saldo';
    protected $guarded = [];

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function kurangiSaldo($amount){
        return $this->update(['saldo' => $this->saldo - $amount]);
    }
}
