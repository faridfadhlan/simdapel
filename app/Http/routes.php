<?php

/*
|--------------------------------------------------------------------------
| Routes File
|--------------------------------------------------------------------------
|
| Here is where you will register all of the routes in an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/








/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| This route group applies the "web" middleware group to every route
| it contains. The "web" middleware group is defined in your HTTP
| kernel and includes session state, CSRF protection, and more.
|
*/



Route::group(['middleware' => 'web'], function () {
    Route::auth();    
    
    Route::group(['middleware'=>'auth'],function() {
        Route::get('/', 'HomeController@index');
        Route::get('perangkatlunak', 'PerangkatLunakController@index');
        Route::get('data_inventori', 'DataInventoriController@index');
        Route::get('subjek', 'SubjekController@index');
        Route::get('company', 'CompanyController@index');
        Route::get('license', 'LicenseController@index');
        Route::get('media', 'MediaController@index');
        Route::get('jenis', 'JenisController@index');
    });
    
    Route::group(['middleware' => ['roles','auth'],'roles' => ['administrator', 'operator', 'user_bps']], function () {
        Route::get('perangkat_lunak/get_manual/{manual}', 'PerangkatLunakController@get_manual');
        Route::get('perangkatlunak/get_ajax_data', 'PerangkatLunakController@get_ajax_data');
        Route::get('peminjaman_perangkatlunak/index', 'PeminjamanPerangkatLunakController@index');
        Route::get('perangkatlunak/tambahkan_keranjang/{id}', 'PerangkatLunakController@tambahkan_keranjang');
        Route::get('peminjaman_perangkatlunak/create', 'PeminjamanPerangkatLunakController@create');
    });
    
    Route::group(['middleware' => ['roles','auth'],'roles' => ['administrator']], function () {
        Route::get('user/index', 'UserController@index');
        Route::get('user/create', 'UserController@create');
        Route::post('user/save', 'UserController@save');
        Route::get('user/edit/{id}', 'UserController@edit');
        Route::put('user/update/{id}', 'UserController@update');
    });
    
    Route::group(['middleware' => ['roles','auth'],'roles' => ['administrator', 'operator']], function () {
        Route::get('jenis/create', 'JenisController@create');
        Route::get('jenis/edit/{id}', 'JenisController@edit');
        Route::get('jenis/remove/{id}', 'JenisController@remove');
        Route::put('jenis/update/{id}', [
            'as' => 'update_jenis', 'uses' => 'JenisController@update'
        ]);
        Route::post('jenis/simpan_jenis', [
            'as' => 'simpan_jenis', 'uses' => 'JenisController@save'
        ]);
        
        Route::get('media/create', 'MediaController@create');
        Route::get('media/edit/{id}', 'MediaController@edit');
        Route::get('media/remove/{id}', 'MediaController@remove');
        Route::put('media/update/{id}', [
            'as' => 'update_media', 'uses' => 'MediaController@update'
        ]);
        Route::post('media/simpan_media', [
            'as' => 'simpan_media', 'uses' => 'MediaController@save'
        ]);
        
        
        Route::get('company/create', 'CompanyController@create');
        Route::get('company/edit/{id}', 'CompanyController@edit');
        Route::get('company/remove/{id}', 'CompanyController@remove');
        Route::put('company/update_company/{id}', [
            'as' => 'update_company', 'uses' => 'CompanyController@update'
        ]);
        Route::post('company/simpan_company', [
            'as' => 'simpan_company', 'uses' => 'CompanyController@save'
        ]);
        
        
        Route::get('license/create', 'LicenseController@create');
        Route::get('license/edit/{id}', 'LicenseController@edit');
        Route::get('license/remove/{id}', 'LicenseController@remove');
        Route::put('license/update/{id}', [
            'as' => 'update_license', 'uses' => 'LicenseController@update'
        ]);
        Route::post('license/simpan_license', [
            'as' => 'simpan_license', 'uses' => 'LicenseController@save'
        ]);
        
        Route::get('subjek/create', 'SubjekController@create');
        Route::get('subjek/edit/{id}', 'SubjekController@edit');
        Route::get('subjek/remove/{id}', 'SubjekController@remove');
        Route::put('subjek/update_subjek/{id}', [
            'as' => 'update_subjek', 'uses' => 'SubjekController@update'
        ]);
        Route::post('subjek/simpan_subjek', [
            'as' => 'simpan_subjek', 'uses' => 'SubjekController@save'
        ]);
        
        
        Route::get('perangkatlunak/create', 'PerangkatLunakController@create');
        Route::get('perangkatlunak/edit/{id}', 'PerangkatLunakController@edit');
        Route::get('perangkatlunak/remove/{id}', 'PerangkatLunakController@remove');
        Route::post('perangkatlunak/save', [
            'as' => 'simpan_perangkatlunak', 'uses' => 'PerangkatLunakController@save'
        ]);
        Route::put('perangkatlunak/update/{id}', [
            'as' => 'update_perangkatlunak', 'uses' => 'PerangkatLunakController@update'
        ]);
        Route::get('perangkatlunak/search', 'PerangkatLunakController@search');
        Route::resource('perangkatlunak/test', 'PerangkatLunakController@test');
        Route::get('api/perangkatlunak', array('as'=>'api.perangkatlunak', 'uses'=>'PerangkatLunakController@getDatatable'));
        
        
        Route::get('data_inventori/create', 'DataInventoriController@create');
        Route::get('data_inventori/edit/{id}', 'DataInventoriController@edit');
        Route::get('data_inventori/remove/{id}', 'DataInventoriController@remove');
        Route::put('data_inventori/update/{id}', [
            'as' => 'update_data_inventori', 'uses' => 'DataInventoriController@update'
        ]);
        Route::post('data_inventori/simpan_data_inventori', [
            'as' => 'simpan_data_inventori', 'uses' => 'DataInventoriController@save'
        ]);

        //Action Permohonan Data
        Route::get('permohonan_data/index', 'PermohonanDataBPSController@index');
        Route::get('permohonan_data/create', 'PermohonanDataBPSController@create');
        Route::get('permohonan_data/get_modal_data', 'PermohonanDataBPSController@get_modal_data');
        Route::get('permohonan_data/get_ajax_data', 'PermohonanDataBPSController@get_ajax_data');
        Route::post('permohonan_data/simpan', 'PermohonanDataBPSController@simpan');
        Route::post('permohonan_data/simpan_individu', 'PermohonanDataBPSController@simpan_individu');
        Route::post('permohonan_data/simpan_instansi', 'PermohonanDataBPSController@simpan_instansi');
        
        Route::get('peminjaman_perangkatlunak/get_seksi_from_bidang/{id}', 'PeminjamanPerangkatLunakController@get_seksi_from_bidang');
        Route::get('peminjaman_perangkatlunak/get_user_from_seksi/{id}', 'PeminjamanPerangkatLunakController@get_user_from_seksi');
        Route::post('peminjaman_perangkatlunak/save', 'PeminjamanPerangkatLunakController@save');
    });
    
});
