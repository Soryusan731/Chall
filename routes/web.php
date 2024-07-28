<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\login;
use App\Http\Controllers\ProjectController;
use App\Http\Controllers\LoginController;
use App\Mail\MyEmail;
use Illuminate\Support\Facades\Mail;

Route::get('/',[ProjectController::class,'index'])->name('homepage.index');
Route::post('/',[ProjectController::class,'send'])->name('send');

Route::get('/login',[LoginController::class,'index'])->name('index');
Route::post('/login',[LoginController::class,'login'])->name('login');
Route::get('/logout',[LoginController::class,'logout'])->name('logout');


Route::get('/admin',[ProjectController::class,'admin'])->name('admin.dashboard');
Route::post('/admin',[ProjectController::class,'store'])->name('store');
Route::put('/admin',[ProjectController::class,'update'])->name('update');
Route::delete('/admin/{project}',[ProjectController::class, 'destroy'])->name('destroy');

