<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::post('register', 'Api\AuthController@register');
Route::post('login', 'Api\AuthController@login');
Route::get('email/verify/{id}', 'Api\VerificationController@verify')->name('verificationapi.verify');
Route::get('email/resend', 'Api\VerificationController@resend')->name('verificationapi.resend');

Route::group(['middleware' => 'auth:api'], function() {
    Route::get('student', 'Api\StudentController@index');
    Route::get('student/{id}', 'Api\StudentController@show');
    Route::post('student', 'Api\StudentController@store');
    Route::put('student/{id}', 'Api\StudentController@update');
    Route::delete('student/{id}', 'Api\StudentController@destroy');

    Route::get('user', 'Api\UserController@index');
    Route::get('user/{id}', 'Api\UserController@show');
    Route::post('user', 'Api\UserController@store');
    Route::put('user/{id}', 'Api\UserController@update');
    Route::delete('user/{id}', 'Api\UserController@destroy');

    Route::get('makanan', 'Api\MakananController@index');
    Route::get('makanan/{id}', 'Api\MakananController@show');
    Route::post('makanan', 'Api\MakananController@store');
    Route::put('makanan/{id}', 'Api\MakananController@update');
    Route::delete('makanan/{id}', 'Api\MakananController@destroy');

    Route::get('drink', 'Api\DrinkController@index');
    Route::get('drink/{id}', 'Api\DrinkController@show');
    Route::post('drink', 'Api\DrinkController@store');
    Route::put('drink/{id}', 'Api\DrinkController@update');
    Route::delete('drink/{id}', 'Api\DrinkController@destroy');

    Route::get('voucher', 'Api\VoucherController@index');
    Route::get('voucher/{id}', 'Api\VoucherController@show');
    Route::post('voucher', 'Api\VoucherController@store');
    Route::put('voucher/{id}', 'Api\VoucherController@update');
    Route::delete('voucher/{id}', 'Api\VoucherController@destroy');
});