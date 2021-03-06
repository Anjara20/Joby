<?php

use GuzzleHttp\Middleware;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Auth\ApiAuthController;
use App\Http\Controllers\CompanyApiController;
use App\Http\Controllers\JobApiController;

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

/**
 * Concerning Auth
 * 
 */

Route::middleware(['cors', 'json.response','auth:api'])->get('/user',function(Request $request) {
    return $request->user();
});


/**
 * 
 * Authentication 
 * */
Route::group(['middleware' => ['cors', 'json.response']], function (){
    Route::post('login', [ApiAuthController::class,'login'])->name('login.api');
    Route::post('register', [ApiAuthController::class, 'register'])->name('register.api');
});

Route::group(['middleware' => ['auth:api']],function () {
    Route::post('logout', [ApiAuthController::class, 'logout']);
});

/**
 * Api
 */
Route::group(['middleware' => ['auth:api','cors','json.response']], function (){
    Route::apiResource('job',JobApiController::class)->middleware(['api.candidate','api.admin']);
    Route::apiResource('company',CompanyApiController::class)->middleware('api.admin');
});


