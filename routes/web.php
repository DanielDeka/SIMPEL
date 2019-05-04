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
    return view('welcome');
});
Route::get('/test', 'TestController@createDummyAbsensi');

Route::get('/login_guru', function () {
    return view('login_guru');
});

Route::post('/post_guru', 'GuruController@cekGuru');

Route::get('/login_ortu', function () {
    return view('login_ortu');
});

Route::post('/post_ortu', 'OrtuController@cekOrtu');

Route::group(['prefix' => 'guru', 'middleware' => 'sessionkw'], function(){
    Route::get('', 'GuruController@index');
    Route::get('/daftar_siswa', 'GuruController@daftarSiswa');
    Route::get('/absensi', 'GuruController@absensiSiswa');
    Route::get('/form_laporan', 'GuruController@formLaporan');
    Route::post('/laporan', 'GuruController@createLaporan');
    Route::get('/laporan/{id}', 'GuruController@comment');
    Route::get('/daftar_laporan', 'GuruController@daftarLaporan');
    Route::get('/form_nilai', 'GuruController@formNilai');
    Route::post('/post_absen', 'GuruController@inputAbsen');
});

Route::group(['prefix' => 'ortu', 'middleware' => 'sessionkw'], function(){
	Route::get('', 'OrtuController@index');
	Route::get('/absensi', 'OrtuController@absensi');
	Route::get('/laporan', 'OrtuController@laporan');
	Route::get('/raport', 'OrtuController@raport');
	Route::get('/laporan/{id}', 'OrtuController@comment');
});




