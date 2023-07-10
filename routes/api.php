<?php

use App\Http\Controllers\BarangController;
use App\Http\Controllers\PelangganController;
use App\Http\Controllers\PenjualanController;
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

// Pelanggan
Route::resource('pelanggan', PelangganController::class);

// Barang
Route::resource('barang', BarangController::class);

// Penjualan
Route::resource('penjualan', PenjualanController::class);

// Alternatif Pelanggan
// Route::post('pelanggan', [PelangganController::class, 'store']);
// Route::get('pelanggan', [PelangganController::class, 'index']);
// Route::get('pelanggan/{ID_PELANGGAN}', [PelangganController::class, 'show']);
// Route::put('update', [PelangganController::class, 'update']);

// Alternatif Barang
// Route::post('barang', [BarangController::class, 'store']);
// Route::get('barang', [BarangController::class, 'index']);
// Route::get('barang/{KODE}', [BarangController::class, 'show']);
// Route::put('update', [BarangController::class, 'update']);

// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });
