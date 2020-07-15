<?php


/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/



$router->get('/', function () use ($router) {
echo <<<EOT
    <h1>Author: Mohtadi Bakali </h1>
    <h1>Date: 15/07/2020 </h1>
    <h3>Description: Xanda techinal test</h3>
    <ul>
    <li>All request should be in a valid json format, is not allowed http request from browsers </li>
    <li>To login we should make a post request to /users/login, using name and password as credentials { "name": "administrator", "password": "Estocolmo1" } </li>
    <li>After login successfully we should receive a token, each protected route we should use the token in the headers </li>
    </ul>
EOT;
});

// Protected routes
$router->group(['middleware' => ['auth']],  function () use ($router) {
    $router->post('/fleets', ['uses' => 'FleetsController@store']);
    $router->put('/fleets/{id}', ['uses' => 'FleetsController@update']);
});

$router->get('/fleets',['uses' => 'FleetsController@index']);
$router->delete('/fleets/{id}', ['uses' => 'FleetsController@delete']);

// Protected routes
$router->post('/users/login',['uses' => 'UsersController@getToken']);
$router->group(['middleware' => ['auth']],  function () use ($router) {
    $router->get('users', ['uses' => 'UsersController@index']);
    $router->post('users', ['uses' => 'UsersController@store']);
});
