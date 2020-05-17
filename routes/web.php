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

Auth::routes();

Route::group(['middleware' => 'home'], function(){
    Route::get('/', 'HomeController@getLogin')->name('home.login');
    Route::post('/', 'HomeController@postLogin')->name('home.login.post');
    Route::get('/register', 'HomeController@getRegister')->name('home.register');
    Route::post('/register', 'HomeController@postRegister')->name('home.register.post');
});

Route::group(['middleware' => 'admin'], function(){
    Route::get('/logout','HomeController@postLogout')->name('home.logout');
    Route::get('/employees', 'EmployeeController@index')->name('employees.index');
    Route::get('/employees/create','EmployeeController@create')->name('employees.create');
    Route::post('/employees/store','EmployeeController@store')->name('employees.store');
    Route::get('/employees/{id}/edit','EmployeeController@edit')->name('employees.edit');
    Route::post('/employee/{id}/update/','EmployeeController@update')->name('employees.update');
    Route::get('/employees/{id}/delete','EmployeeController@destroy')->name('employees.destroy');

    Route::get('/products/{id}', 'ProductController@index')->name('products.index');
    Route::get('/products/{id}/createproduct', 'ProductController@create')->name('products.create');
    Route::post('/products/{id}/storeproduct', 'ProductController@store')->name('products.store');
    Route::get('/products/editproduct/{id}', 'ProductController@edit')->name('products.edit');
    Route::post('/products/updateproduct/{id}', 'ProductController@update')->name('products.update');
    Route::get('/products/deleteproduct/{id}', 'ProductController@delete')->name('products.delete');
});







