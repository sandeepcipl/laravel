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

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
//Route::get('/user', 'Admin\UserController@userlist');
Route::post('/create_user', 'HomeController@create_user');




Route::group(['middleware' => ['auth']], function() {
	Route::get('/user', 'Admin\UserController@userlist');
	Route::get('/adduser', 'Admin\UserController@adduser');
	Route::post('/addadminuser', 'Admin\UserController@addadminuser');
});
