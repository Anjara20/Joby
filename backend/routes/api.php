<?php

use GuzzleHttp\Middleware;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Auth\ApiAuthController;

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
Route::middleware(['cors', 'json.response','auth:api'])->get('/user',function(Request $request) {
    return $request->user();
});

Route::group(['middleware' => ['cors', 'json.response']], function (){
    Route::post('login', [ApiAuthController::class,'login'])->name('login.api');
    Route::post('register', [ApiAuthController::class, 'register'])->name('register.api');
    // Route::post('logout',[ApiAuthController::class,'logout']);
});

Route::group(['middleware' => ['auth:api']],function () {
    Route::post('logout', [ApiAuthController::class, 'logout']);
});