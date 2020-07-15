<?php

namespace App\Http\Controllers;

use App\User;
use http\Env\Response;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

class UsersController extends Controller
{

    function index(Request $request){
        if( $request->isJson() ){
            return User::all();
        }
        return response()->json(['error' => 'Unauthorized'],401);
    }

    function  store(Request $request){

        if( $request->isJson() ) {
            $user = new User();
            $user->name = $request->name;
            $user->email = $request->email;
            $user->password = Hash::make($request->password);
            $user->token = Str::random(60);
            $user->save();
            return response()->json([], 201);
        }
        return response()->json(['error' => 'Unauthorized'],401);
    }

    function getToken(Request $request){
        if( $request->isJson() ) {

            try {
                $data = $request->json()->all();
                $user = User::where('name', $data["name"])->first();

                if ( $user && Hash::check($data['password'], $user->password) ){
                    return response()->json($user, 200);
                }else{
                    return response()->json(['error' => 'No Content'], 406);
                }
             } catch (\Exception $e){
                return response()->json(['error' => 'Unauthorized'],401);
            }
        }
    }

}
