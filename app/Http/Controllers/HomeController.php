<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Bantuan;
use App\Models\BantuanGiver;
use App\UserAsker;
use Illuminate\Http\Request;

class HomeController extends Controller
{

  public function home(){
    $bantuan = Bantuan::get();
    
    return view('home', compact('bantuan')); 
  }

  public function detail($id){
    $bantuan = Bantuan::find($id);
    
    return view('detail', compact('bantuan')); 
  }
  
  public function beriBantuan(Request $request, $id){
    $bantuan = Bantuan::find($id)->createBantuanGiver($request);
    
    $request->session()->flash('status', 'BANTUAN TERKIRIM TERIMAKASIH ATAS BANTUAN ANDA');
    return redirect()->back(); 
  }

  public function terpenuhi(){
    $bantuan = Bantuan::whereHas('bantuan_giver')->get();
    $terpenuhi = [];
    foreach ($bantuan as $key => $value) {
      if($value->bantuan_giver->sum('nilai_bantuan') >= $value->jumlah_bantuan)
        array_push($terpenuhi,$value);
    }
    
    return view('terpenuhi', compact('terpenuhi')); 
  }
  
}