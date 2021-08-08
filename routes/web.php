<?php

Route::get('', 'HomeController@home');

Route::get('admin/login', 'AuthController@login');
Route::post('admin/login', 'AuthController@post_login');
Route::get('admin/logout', 'AuthController@logout');

Route::get('terms', 'PageController@terms');
Route::get('privacy', 'PageController@privacy');

Route::get('activate/{token}', 'AuthController@activate');
Route::get('email_verification', 'AuthController@email_verification');

Route::group(['middleware' => 'admin'], function(){

	Route::get('admin/dashboard', 'Backend\DashboardController@dashboard_index');

	Route::get('admin/user', 'Backend\UserController@user_index');
	Route::get('admin/user/add', 'Backend\UserController@user_create');
	Route::post('admin/user/add', 'Backend\UserController@user_store');
	Route::get('admin/user/view/{id}', 'Backend\UserController@user_show');
	Route::get('admin/user/edit/{id}', 'Backend\UserController@user_edit');
	Route::post('admin/user/edit/{id}', 'Backend\UserController@user_update');
	Route::get('admin/user/delete/{id}', 'Backend\UserController@user_destroy');
	Route::get('admin/user/changeStatus', 'Backend\UserController@user_change_status');
	Route::get('admin/user/view_delete/{id}', 'Backend\UserController@user_view_delete');
	

	Route::get('admin/mearchant', 'Backend\UserController@mearchant_index');
	Route::get('admin/mearchant/add', 'Backend\UserController@mearchant_create');
	Route::post('admin/mearchant/add', 'Backend\UserController@mearchant_store');
	Route::get('admin/mearchant/view/{id}', 'Backend\UserController@mearchant_show');
	Route::get('admin/mearchant/edit/{id}', 'Backend\UserController@mearchant_edit');
	Route::post('admin/mearchant/edit/{id}', 'Backend\UserController@mearchant_update');
	Route::get('admin/mearchant/delete/{id}', 'Backend\UserController@mearchant_destroy');
	Route::get('admin/mearchant/mearchant_delete/{id}', 'Backend\UserController@mearchant_delete');
	Route::get('admin/mearchant/changeStatus', 'Backend\UserController@mearchant_change_status');
	Route::get('admin/mearchant/view_delete/{id}', 'Backend\UserController@mearchant_view_delete');


	Route::get('admin/orders', 'Backend\OrdersController@orders_index');
	// Route::get('admin/orders/add', 'Backend\OrdersController@orders_create');
	// Route::post('admin/orders/add', 'Backend\OrdersController@orders_store');
	// Route::get('admin/orders/edit/{id}', 'Backend\OrdersController@orders_edit');
	// Route::post('admin/orders/edit/{id}', 'Backend\OrdersController@orders_update');
	Route::get('admin/orders/view/{id}', 'Backend\OrdersController@orders_view');
	Route::get('admin/orders/delete/{id}', 'Backend\OrdersController@orders_destroy');
	Route::get('admin/orders/view_delete/{id}', 'Backend\OrdersController@orders_view_destroy');

	Route::get('admin/order_details', 'Backend\OrderDetailsController@order_details_list');
	Route::get('admin/order_details/delete/{id}', 'Backend\OrderDetailsController@order_details_destroy');


	Route::get('admin/version_setting', 'Backend\VersionSettingController@version_setting_index');
	Route::post('admin/version_setting/add', 'Backend\VersionSettingController@version_setting_insert');

	Route::get('admin/myaccount', 'Backend\MyAccountController@my_account_index');
	Route::post('admin/myaccount/add', 'Backend\MyAccountController@my_account_update');

	Route::get('admin/withdraw_request', 'Backend\WithdrawRequestController@withdraw_request_list');
	Route::get('admin/withdraw_request/pay_now/{id}', 'Backend\WithdrawRequestController@pay_now');


});

?>