<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('login');
});
Route::get('/login', 'Auth\LoginController@showLoginForm')->name('login');
Route::post('/login', 'Auth\LoginController@login')->name('login.post');
Route::get('/logout', 'Auth\LoginController@logout')->name('logout');

Route::get('/register', 'Auth\RegisterController@showRegistrationForm')->name('register');
Route::post('/register/create', 'Auth\RegisterController@register')->name('register.create');

Route::group(['middleware' => ['auth']], function () {
    Route::get('/home', 'HomeController@home')->name('home');
    Route::get('/terpenuhi', 'HomeController@terpenuhi')->name('terpenuhi');
    Route::get('/detail/{id}', 'HomeController@detail')->name('detail');
    Route::post('/beriBantuan/{id}', 'HomeController@beriBantuan')->name('beriBantuan');
});