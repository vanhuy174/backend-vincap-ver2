<?php

use Illuminate\Support\Facades\Route;

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
    return view('frontend.home.index');
});

Route::get('lang/{lang}', function (){
    $langActive = ['en', 'vi'];
    $lang = request('lang');
    if (in_array($lang, $langActive)) {
        request()->session()->put('lang', $lang);
    }
    return redirect()->back();
})->name('lang');


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
