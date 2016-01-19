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

Route::get('/', function () {
    return view('index');
});

Route::get('subjek', 'SubjekController@index');
Route::get('subjek/{id}', 'SubjekController@view');

Route::get('perangkatlunak', 'PerangkatLunakController@index');
Route::get('perangkatlunak/create', 'PerangkatLunakController@create');
Route::get('perangkatlunak/edit/{id}', 'PerangkatLunakController@edit');
Route::get('perangkatlunak/remove/{id}', 'PerangkatLunakController@remove');
Route::post('perangkatlunak/save', [
    'as' => 'simpan_perangkatlunak', 'uses' => 'PerangkatLunakController@save'
]);
Route::put('perangkatlunak/update/{id}', [
    'as' => 'update_perangkatlunak', 'uses' => 'PerangkatLunakController@update'
]);


Route::get('company', 'CompanyController@index');
Route::get('company/create', 'CompanyController@create');
Route::get('company/edit/{id}', 'CompanyController@edit');
Route::get('company/remove/{id}', 'CompanyController@remove');
Route::put('company/update_company/{id}', [
    'as' => 'update_company', 'uses' => 'CompanyController@update'
]);
Route::post('company/simpan_company', [
    'as' => 'simpan_company', 'uses' => 'CompanyController@save'
]);

Route::get('license', 'LicenseController@index');
Route::get('license/create', 'LicenseController@create');
Route::get('license/edit/{id}', 'LicenseController@edit');
Route::get('license/remove/{id}', 'LicenseController@remove');
Route::put('license/update/{id}', [
    'as' => 'update_license', 'uses' => 'LicenseController@update'
]);
Route::post('license/simpan_license', [
    'as' => 'simpan_license', 'uses' => 'LicenseController@save'
]);

Route::get('media', 'MediaController@index');
Route::get('media/edit/{id}', 'MediaController@edit');
Route::get('media/remove/{id}', 'MediaController@remove');
Route::put('media/save/{id}', [
    'as' => 'simpan_media', 'uses' => 'MediaController@save'
]);

Route::get('jenis', 'JenisController@index');
Route::get('jenis/edit/{id}', 'JenisController@edit');
Route::get('jenis/remove/{id}', 'JenisController@remove');
Route::put('jenis/save/{id}', [
    'as' => 'simpan_jenis', 'uses' => 'JenisController@save'
]);

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

Route::group(['middleware' => ['web']], function () {
    //
});
