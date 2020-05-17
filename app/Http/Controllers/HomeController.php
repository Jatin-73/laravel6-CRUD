<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth; 
use App\User;
use Validator;
use Session;
use DB;

class HomeController extends Controller
{   
    public function getRegister()
    {
        return view('register');
    }

    public function postRegister(Request $request)
    {
        $request->validate([
            'username' => 'alpha|min:3',
            'email'    => 'email|unique:users',
            'mobile'   => 'digits:10|numeric',
            'password' => 'min:8'
        ]);

        $user = new User();
        $user->username      = $request->input('username');
        $user->name          = $user->username;
        $user->email         = $request->input('email');
        $user->mobile        = $request->input('mobile');
        $user->password      = Hash::make($request->input('password'));
        $user->image         = "http://localhost:8000/user_document/slide01.jpg";
        $user->category_id   = '0';
        $user->fb_id         = '0123456789abcde';
        $user->roleId        = '1';
        $user->language      = 'en';
        $user->device_token  = '4URY0Z0F6T';
        $user->device_type   = 'Android';
        $user->otp           = mt_rand(100000,999999);

        if($user->save()){
            return redirect()->route('home.login')->with('success', 'Registration Successfully. Login to Continue.');
         } 
    }

    public function getLogin()
    {
        return view('login');
    }

    public function postLogin(Request $request)
    {   
        $field = filter_var($request->input('email'), FILTER_VALIDATE_EMAIL) ? 'email' : 'email';
        $email=$request->get('email');
        $credentials = array($field=>$email, 'password' => $request->get('password'));
        //$session = Session::get('email',$value); 

        if (Auth::attempt($credentials))
        {
            $id = Auth::user()->id;
            DB::table('users')
                ->where('id', $id)
                ->update(['isadmin'=> '1']);
            
            if(Auth::user()->account_status == '1')
            {
                return redirect()->route('employees.index')->with('info', 'You have logged in successfully.');
            }
            else{
                return redirect()->route('products.index', ['id'=> $id])->with('info','You have logged in successfully.');
            }
            
        }
        else
        { 
            return redirect()->back()->with('error',"Invalid email or password.")->withInput($request->except('password'));
        }
    }

    public function postLogout()
    {
        $id = Auth::user()->id;
        DB::table('users')
                ->where('id', $id)
                ->update(['isadmin'=> '0']);
        Auth::logout();
        Session::flush();
        return redirect()->route('home.login')->with('info','You are now signed out.');
    }
}
