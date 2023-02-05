<?php

use Illuminate\Support\Facades\Route;

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

Route::get("/",[\App\Http\Controllers\UserController::class,"index"]);
Route::post("store-user",[\App\Http\Controllers\UserController::class,"createUser"])->name("store.user");
Route::get("question-page",[\App\Http\Controllers\QuestionPageController::class,"index"])->name("question.page");
Route::post("question-page-view",[\App\Http\Controllers\QuestionPageController::class,"getQuestionsView"])->name("question.page.view");
Route::post("get-questions",[\App\Http\Controllers\QuestionPageController::class,"getQuestions"])->name("get.questions");
Route::post("store-questions",[\App\Http\Controllers\QuestionPageController::class,"store"])->name("store.question");
Route::post("get-results",[\App\Http\Controllers\QuestionPageController::class,"getResults"])->name("get.results");
