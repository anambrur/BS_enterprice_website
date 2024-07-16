<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Artisan;
Route::get('/clear', function () {
    $exitCode = Artisan::call('config:clear');
    $exitCode = Artisan::call('cache:clear');
    $exitCode = Artisan::call('config:cache');
    return 'DONE'; //Return anything
});
Route::get('/link', function () {
    Artisan::call('storage:link');
    return 'DONE'; //Return anything
});
Route::get("is-customer-logged-in", "Front\HomeController@isCustomerLoggedIn");
Route::group(["namespace" => "Front\Auth"], function () {
    Route::post("guest-login", "LoginController@guestLogin");
    Route::get('login/{social}', 'LoginController@socialLogin');
    Route::get('login/{social}/callback', 'LoginController@handleSocialLoginCallback');

    Route::get("login", "LoginController@index");
    Route::get("signin", "LoginController@index");
    Route::get("logout", "LoginController@logout");
    Route::post("login", "LoginController@login")->name("login");
    Route::get("register", "RegisterController@index");
    Route::get("signup", "RegisterController@index");
    Route::post("register", "RegisterController@register");
    Route::get('password/reset', 'ForgotPassword@index');
    Route::post('password/reset', 'ForgotPassword@sendResetLinkEmail');
    Route::get('password/reset/{token}', 'ResetPassword@showResetForm')->name('password.reset');
    Route::post('password/update', 'ResetPassword@reset');
    Route::get('forgot-password', 'ForgotPassword@forgotPassword');
    /**
     * social login and registration
     */
    //login and register with fb
    Route::get('login/facebook/{auth?}', 'LoginController@loginWithFB');
    Route::get('register/facebook', 'RegisterController@registerWithFB');
//login and register with gp
    Route::get('login/google', 'LoginController@loginWithGP');
    Route::get('register/google', 'RegisterController@registerWithGP');
//login and register with twitter
    Route::get('login/twitter', 'LoginController@loginWithTT');
    Route::get('register/twitter', 'RegisterController@registerWithTT');
//login and register with linkedin
    Route::get('login/linkedin', 'LoginController@loginWithLI');
    Route::get('register/linkedin', 'RegisterController@registerWithLI');
});
/**
 * Fronend Pages
 */



Route::group(["namespace" => "Front"], function () {

    //chairman message
    Route::get('chairman_message', 'FrontEnd@chairmanMessage');
    Route::get('mission_vission', 'FrontEnd@missionVission');
    
    // Page Part
    // Route::get('new_home_page', 'FrontEnd@new_home_page')->name('new_home_page');
    Route::get('/', "FrontEnd@new_home_page");
    Route::get('/about', "FrontEnd@about");
    Route::get('/product', "FrontEnd@product");
    Route::get('/productview/{slug}/', "FrontEnd@productview");
    Route::get('/partner', "FrontEnd@partner");
    Route::get('/team/{slug}', "FrontEnd@team");
    Route::get('/faq', "FrontEnd@faq");
    // Testimonial
    Route::get('/testimonial', "FrontEnd@testimonial");
    // Portfolio
    Route::get('/portfolio', "FrontEnd@portfolio");
    Route::get('/portfolio/detail/{slug}', "FrontEnd@portfolioDetail");
    //career
    Route::get('/career', "FrontEnd@career");
    Route::get('/career/detail/{slug}', "FrontEnd@careerDetail");
    Route::get('/career/apply/{slug}', "FrontEnd@careerAppy")->name('career.apply');
    // Route::get('/career/apply', function () {
    // return 'Hello World';
    // });
    Route::get('/get_career_apply', "FrontEnd@get_career_apply")->name('get_career_apply');
    Route::post('/store_career_apply', "FrontEnd@store_career_apply")->name('store_career_apply');
    // Blog Part
    Route::get('/blog', "FrontEnd@blog");
    Route::get('/blog/detail/{slug}', "FrontEnd@blogDetail");
    Route::post('/saveComment', "FrontEnd@saveComment");
    Route::post('/replyComment', 'FrontEnd@replyStore');
    Route::get('/search', "FrontEnd@search");
    // packages
    // Route::get( '/packages/detail/{slug?}', 'FrontEnd@packages' );
    Route::get('/packages/{url}', 'FrontEnd@packageDetail');
    // package_order
    Route::get('/get_package_order', "FrontEnd@get_package_order")->name('get_package_order');
    Route::post('/store_package_order', "FrontEnd@store_package_order")->name('store_package_order');
    // privacy-policy
    // Route::get( '/privacy-policy', 'FrontEnd@packageDetail' ); 


    // Route::get( '/packages/detail/{slug?}', 'Page@packages' );
    // Route::get( '/packages/{url}', 'Page@packageDetail' );
    //category
    Route::get('/blog/category/{slug}', "FrontEnd@category");
    Route::get('/blog/tag/{slug}', "FrontEnd@tag");
    // Contact Part
    Route::get('/contact', "FrontEnd@contact");
    Route::post('/send_mail', "FrontEnd@send_mail");

    // Old
    Route::get('/home', "FrontEnd@index");
    Route::post('/subscribe', "Page@subscribe");
    Route::post('/likes', "Page@likes");
    Route::post('/is-already-liked', "Page@isAlreadyLiked");
});
/**
 * Customer Dashboard
 */
Route::group(['middleware' => 'auth', 'namespace' => 'Front', 'prefix' => 'dashboard'], function () {
    Route::get("/", "Dashboard@index");
    Route::get("/orders", "Dashboard@orders");
    Route::get("/orders/status/{status}", "Dashboard@orders");
    Route::get("/edit-profile", "Dashboard@editProfile");
    Route::post("/save-profile", "Dashboard@saveProfile");
    Route::post("/user-profile-pic-change", "Dashboard@saveProfilePicture");
    Route::post("/update-password", "Dashboard@updatePassword");
    Route::get("/downloads", "Dashboard@downloads");
    Route::get("/media/download/{id}", "Dashboard@mediaDownload");
    //
    Route::get("/orders/detail/{id}", "Dashboard@detailOrders");
    Route::get("/orders/download/{id}", "Dashboard@downloadOrders");
    /**
     * Customer support system
     */
    Route::group(['prefix' => 'tickets'], function () {
        Route::get("/", "Dashboard@tickets");
        Route::get("/add", "Dashboard@addTicket");
        Route::post("/add", "Dashboard@saveTicket");
        Route::get("/detail/{id}", "Dashboard@detailTicket");
        Route::post("/reply", "Dashboard@saveReplyTicket");
        Route::get("/older-support-detail/{id}", "Dashboard@olderSupportDetail");
        Route::get("/new-support-detail/{id}/{lastId?}", "Dashboard@newSupportDetail");
    });
});
