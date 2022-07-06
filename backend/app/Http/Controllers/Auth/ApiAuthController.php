<?php

namespace App\Http\Controllers\Auth;

use App\Models\User;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;

class ApiAuthController extends Controller
{
    public function register(Request $request){
        $validator = Validator($request->all(), [
            'f_name' =>'required|string|max:255',
            'l_name' =>'required|string|max:255',
            'email'=>'required|string|email|max:255|unique:users',
            'role'=>'required',
            'phone'=>['required','unique:users','regex:/(\+261(32|34|38|33))([0-9]{7})/'],
            'password'=>'required|string|min:6|confirmed',
        ]);
        if($validator->fails()){
            return response(['errors'=>$validator->errors()->all()], 422);
        }
        $request['password']= Hash::make($request['password']);
        $request['remember_token'] = Str::random(10);
        $user = User::create($request->toArray());
        $token = $user->createToken($user->id,'Laravel Password Grant')->accessToken;
        $response = ['token' => $token];
        return response($response, 200);
    }

    public function login (Request $request){
        $validator = Validator::make($request->all(),[
            'email' => 'required|string|email|max:255',
            'password' => 'required|string|min:6|confirmed',
        ]);
        if($validator->fails()){
            return response(['errors'=>$validator->errors()->all(), 422]);
        }
        $user = User::where('email', $request->email)->first();
        if($user){
            if(Hash::check($request->password,$user->password)){
                $token = $user->createToken($user->id,'Laravel Password Grant')->accessToken;
                $response = ['token' => $token];
                return response($response, 200);
            } else {
                $response = ["message" => "Password mismatch"];
                return response($response, 422);
            }
        } else {
            $response = ["message" => "User does not exist"];
            return response($response, 422);
        }
    }

    public function logout( Request $request){
        $token = $request->user()->token();
        $token->revoke();
        $response = ['message' => 'logged succesfully'];
        return response($response, 200);
    }
    
}
