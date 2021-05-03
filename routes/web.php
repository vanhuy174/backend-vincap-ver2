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


Route::get('lang/{lang}', function (){
    $langActive = ['en', 'vi'];
    $lang = request('lang');
    if (in_array($lang, $langActive)) {
        request()->session()->put('lang', $lang);
    }
    return redirect()->back();
})->name('lang');

Route::group([], function (){
    Route::resource('/', \App\Http\Controllers\HomeController::class);
    Route::resource('/blogs', \App\Http\Controllers\BlogController::class);
    Route::resource('about', \App\Http\Controllers\AboutController::class);
    Route::resource('contact', \App\Http\Controllers\ContactController::class);
    Route::resource('data', \App\Http\Controllers\DataController::class);
    Route::resource('product', \App\Http\Controllers\ProductController::class);
    Route::resource('service', \App\Http\Controllers\ServiceController::class);
    Route::resource('project', \App\Http\Controllers\ProjectController::class);
});

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
