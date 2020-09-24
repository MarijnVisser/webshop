<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Http\Request;

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
    return view('index');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

// Categories routes
Route::resource('categories', 'CategoriesController');

Route::get('categories/categories', 'CategoriesController@index');

Route::get('categories/category/{id}', 'CategoriesController@show');


// products routes
Route::resource('products', 'ProductsController');

Route::get('/products/{id}', 'ProductsController@show')->name('products.show');

Route::get('/add-to-cart/{id}', 'ProductsController@addToCart')->name('products.addToCart');

Route::get('/reduce/{id}', 'ProductsController@getReduceByOne')->name('products.reduceByOne');

Route::get('/remove/{id}', 'ProductsController@getRemoveItem')->name('products.remove');

Route::get('/shoppingcart', 'ProductsController@getCart')->name('products.shoppingcart');

Route::get('/checkout', 'ProductsController@getCheckout')->name('checkout');

Route::post('/checkout', 'ProductsController@postCheckout')->name('checkout');
