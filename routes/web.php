<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HallController;
use App\Http\Controllers\kitchenController;
use App\Http\Controllers\ManagerController;
use App\Http\Controllers\RestaurantController;
use App\Http\Controllers\CustomerController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\MenuController;
use App\Http\Controllers\SalesController;

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

//Route::get('/', function () {
//    return view('welcome');
//});

//ログインページ
Route::get('/', [RestaurantController::class, 'login']);
Route::get('/login', [RestaurantController::class, 'login']);

//新規登録ページ
Route::get('/signup', [RestaurantController::class, 'signup']);

//登録完了ページ
Route::post('/signupComplete', [RestaurantController::class, 'signupComplete']);
Route::get('/signupComplete', function () {return redirect('/login');});

//管理者登録ページ
Route::get('/managerSignup', [ManagerController::class, 'managerSignup']);

//管理者登録完了ページ
Route::post('/managerSignupComplete', [ManagerController::class, 'managerSignupComplete']);
Route::get('/managerSignupComplete', function () {return redirect('/login');});

//ログアウトページ
Route::get('/logout', [RestaurantController::class, 'logout']);

//トップページ
Route::post('/top', [RestaurantController::class, 'top']);
Route::get('/top', function () {return redirect('/login');});

//席番号入力ページ
Route::get('/seating', [CustomerController::class, 'seating']);

//席番号入力完了ページ
Route::post('/seatingComplete', [CustomerController::class, 'seatingComplete']);
Route::get('/seatingComplete', function () {return redirect('/login');});

//メニューページ
Route::post('/menu', [CustomerController::class, 'menu']);
Route::get('/menu', function () {return redirect('/login');});

//注文完了ページ
Route::post('/orderComplete', [CustomerController::class, 'orderComplete']);
Route::get('/orderComplete', function () {return redirect('/login');});

//注文履歴ページ
Route::post('/orderHistory', [CustomerController::class, 'orderHistory']);
Route::get('/orderHistory', function () {return redirect('/login');});

//従業員ログインページ
Route::get('/staffLogin', [RestaurantController::class, 'staffLogin']);

//ログイン完了ページ（ホール）
Route::post('/hallLogin', [HallController::class, 'hallLogin']);
Route::get('/hallLogin', function () {return redirect('/login');});

//トップページ（ホール）
Route::post('/hallTop', [HallController::class, 'hallTop']);
Route::get('/hallTop', function () {return redirect('/login');});

//注文状況ページ（ホール）
Route::post('/hallOrderStatus', [HallController::class, 'hallOrderStatus']);
Route::get('/hallOrderStatus', function () {return redirect('/login');});

//注文状況更新ページ（ホール）
Route::post('/updateHallOrderStatus', [HallController::class, 'updateHallOrderStatus']);
Route::get('/updateHallOrderStatus', function () {return redirect('/login');});

//本日の注文履歴ページ（ホール）
Route::post('/hallTodayOrderHistory', [HallController::class, 'hallTodayOrderHistory']);
Route::get('/hallTodayOrderHistory', function () {return redirect('/login');});

//席番号入力ページ（ホール）
Route::get('/hallSeating', [HallController::class, 'hallSeating']);

//各席の注文履歴ページ（ホール）
Route::post('/hallSeatOrderHistory', [HallController::class, 'hallSeatOrderHistory']);
Route::get('/hallSeatOrderHistory', function () {return redirect('/login');});

//ログイン完了ページ（キッチン）
Route::post('/kitchenLogin', [kitchenController::class, 'kitchenLogin']);
Route::get('/kitchenLogin', function () {return redirect('/login');});

//トップページ（キッチン）
Route::post('/kitchenTop', [KitchenController::class, 'kitchenTop']);
Route::get('/kitchenTop', function () {return redirect('/login');});

//注文状況ページ（キッチン）
Route::post('/kitchenOrderStatus', [KitchenController::class, 'kitchenOrderStatus']);
Route::get('/kitchenOrderStatus', function () {return redirect('/login');});

//注文状況更新ページ（キッチン）
Route::post('/updateKitchenOrderStatus', [KitchenController::class, 'updateKitchenOrderStatus']);
Route::get('/updateKitchenOrderStatus', function () {return redirect('/login');});

//本日の注文履歴ページ（キッチン）
Route::post('/kitchenTodayOrderHistory', [KitchenController::class, 'kitchenTodayOrderHistory']);
Route::get('/kitchenTodayOrderHistory', function () {return redirect('/login');});

//席番号入力ページ（キッチン）
Route::get('/kitchenSeating', [KitchenController::class, 'kitchenSeating']);

//各席の注文履歴ページ（キッチン）
Route::post('/kitchenSeatOrderHistory', [KitchenController::class, 'kitchenSeatOrderHistory']);
Route::get('/kitchenSeatOrderHistory', function () {return redirect('/login');});

//ログイン完了ページ（管理者）
Route::post('/managerLogin', [managerController::class, 'managerLogin']);
Route::get('/managerLogin', function () {return redirect('/login');});

//トップページ（管理者）
Route::post('/managerTop', [ManagerController::class, 'managerTop']);
Route::get('/managerTop', function () {return redirect('/login');});

//ユーザ管理ページ（管理者）
Route::post('/userManagement', [UserController::class, 'userManagement']);
Route::get('/userManagement', function () {return redirect('/login');});

//ユーザ追加ページ（管理者）
Route::get('/addUser', [UserController::class, 'addUser']);

//ユーザ追加完了ページ（管理者）
Route::post('/addCompleteUser', [UserController::class, 'addCompleteUser']);
Route::get('/addCompleteUser', function () {return redirect('/login');});

//ユーザ編集ページ（管理者）
Route::get('/editUser', [UserController::class, 'editUser']);

//ユーザ編集完了ページ（管理者）
Route::post('/editCompleteUser', [UserController::class, 'editCompleteUser']);
Route::get('/editCompleteUser', function () {return redirect('/login');});

//ユーザ削除ページ（管理者）
Route::post('/deleteUser', [UserController::class, 'deleteUser']);
Route::get('/deleteUser', function () {return redirect('/login');});

//メニュー管理ページ（管理者）
Route::post('/menuManagement', [MenuController::class, 'menuManagement']);
Route::get('/menuManagement', function () {return redirect('/login');});

//メニュー追加ページ（管理者）
Route::get('/addMenu', [MenuController::class, 'addMenu']);

//メニュー追加完了ページ（管理者）
Route::post('/addCompleteMenu', [MenuController::class, 'addCompleteMenu']);
Route::get('/addCompleteMenu', function () {return redirect('/login');});

//メニュー編集ページ（管理者）
Route::get('/editMenu', [MenuController::class, 'editMenu']);

//メニュー編集完了ページ（管理者）
Route::post('/editCompleteMenu', [MenuController::class, 'editCompleteMenu']);
Route::get('/editCompleteMenu', function () {return redirect('/login');});

//メニュー削除ページ（管理者）
Route::post('/deleteMenu', [MenuController::class, 'deleteMenu']);
Route::get('/deleteMenu', function () {return redirect('/login');});

//本日の注文履歴ページ（管理者）
Route::post('/managerTodayOrderHistory', [ManagerController::class, 'managerTodayOrderHistory']);
Route::get('/managerTodayOrderHistory', function () {return redirect('/login');});

//席番号ページ（管理者）
Route::get('/managerSeating', [ManagerController::class, 'managerSeating']);

//各席の注文履歴ページ（管理者）
Route::post('/managerSeatOrderHistory', [ManagerController::class, 'managerSeatOrderHistory']);
Route::get('/managerSeatOrderHistory', function () {return redirect('/login');});

//売上管理ページ（管理者）
Route::post('/salesManagement', [SalesController::class, 'salesManagement']);
Route::get('/salesManagement', function () {return redirect('/login');});

//売上ページ（管理者）
Route::post('/sales', [SalesController::class, 'sales']);
Route::get('/sales', function () {return redirect('/login');});

//売上月選択ページ（管理者）
Route::post('/selectMonthSales', [SalesController::class, 'selectMonthSales']);
Route::get('/selectMonthSales', function () {return redirect('/login');});

//１日ごとの売上ページ（管理者）
Route::post('/perDaySales', [SalesController::class, 'perDaySales']);
Route::get('/perDaySales', function () {return redirect('/login');});

//１日ごとの売上ページ（管理者）PDFファイル
Route::post('/pdfPerDaySales/pdf', [SalesController::class, 'pdfPerDaySales']);
Route::get('/pdePerDaySales/pdf', function () {return redirect('/login');});

//売上年選択ページ（管理者）
Route::post('/selectYearSales', [SalesController::class, 'selectYearSales']);
Route::get('/selectYearSales', function () {return redirect('/login');});

//１か月ごとの売上ページ（管理者）
Route::post('/perMonthSales', [SalesController::class, 'perMonthSales']);
Route::get('/perMonthSales', function () {return redirect('/login');});

//１か月ごとの売上ページ（管理者）PDFファイル
Route::post('/pdfPerMonthSales/pdf', [SalesController::class, 'pdfPerMonthSales']);
Route::get('/pdfPerMonthSales/pdf', function () {return redirect('/login');});

//売れ数ページ（管理者）
Route::post('/salesFigures', [SalesController::class, 'salesFigures']);
Route::get('/salesFigures', function () {return redirect('/login');});

//売れ数月選択ページ（管理者）
Route::post('/selectMonthSalesFigures', [SalesController::class, 'selectMonthSalesFigures']);
Route::get('/selectMonthSalesFigures', function () {return redirect('/login');});

//１日ごとの売れ数ページ（管理者）
Route::post('/perDaySalesFigures', [SalesController::class, 'perDaySalesFigures']);
Route::get('/perDaySalesFigures', function () {return redirect('/login');});

//１日ごとの売れ数ページ（管理者）PDFファイル
Route::post('/pdfPerDaySalesFigures/pdf', [SalesController::class, 'pdfPerDaySalesFigures']);
Route::get('/pdfPerDaySalesFigures/pdf', function () {return redirect('/login');});

//売れ数年 選択ページ（管理者）
Route::post('/selectYearSalesFigures', [SalesController::class, 'selectYearSalesFigures']);
Route::get('/selectYearSalesFigures', function () {return redirect('/login');});

//１か月ごとの売れ数ページ（管理者）
Route::post('/perMonthSalesFigures', [SalesController::class, 'perMonthSalesFigures']);
Route::get('/perMonthSalesFigures', function () {return redirect('/login');});

//１か月ごとの売れ数ページ（管理者）PDFファイル
Route::post('/pdfPerMonthSalesFigures/pdf', [SalesController::class, 'pdfPerMonthSalesFigures']);
Route::get('/pdfPerMonthSalesFigures/pdf', function () {return redirect('/login');});
