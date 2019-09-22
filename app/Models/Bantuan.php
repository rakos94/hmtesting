<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\UserAsker;
use Illuminate\Http\Request;
use DB;

class Bantuan extends Model
{
    protected $table = 'bantuan';
    protected $guarded = [];

    public function asker()
    {
        return $this->belongsTo(UserAsker::class,'asker_user_id');
    }

    public function bantuan_giver()
    {
        return $this->hasMany(BantuanGiver::class,'bantuan_id');
    }
    
    public function createBantuanGiver(Request $request)
    {
        $request->validate([
            'nilai_bantuan' => 'required|integer|min:100000|max:5000000',
        ]);
        DB::beginTransaction();
        $bantuan_giver = $this->bantuan_giver()->create([
            'giver_user_id'     => auth()->user()->id,
            'tanggal_dibantu'   => date('Y-m-d'),
            'nilai_bantuan'     => $request->nilai_bantuan
        ]);
        $doKurang = auth()->user()->saldo->kurangiSaldo($request->nilai_bantuan);
        if(!$doKurang) DB::rollBack();
        DB::commit();

        return $this->hasMany(BantuanGiver::class,'bantuan_id');
    }
    
}
