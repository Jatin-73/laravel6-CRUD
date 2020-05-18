<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth; 
use App\User;
use App\Device;
use App\Address;
use Validator;
use DB;

class UserController extends Controller
{
    public $successStatus = 200;
    public function Register(Request $request)
    {
    	$validator = Validator::make($request->all(),[
            'username'          =>  'required|alpha|min:3',
            'email'             =>  'required|email|unique:users',
            'image'				=>  'required',
            'name'              =>  'required|alpha|min:3',
            'password'          =>  'required|min:8',
            'confirm_password'  =>  'required|same:password',
            'mobile'            =>  'required|digits:10|numeric'
        ]);

        if ($validator->fails()) { 
  			return response()->json(['error'=>$validator->errors()], 401);            
  		}

	   $user_detail = new User();
       $result['token'] =   $user_detail->createToken('MyApp')->accessToken;

       $user_detail->username               = $request->username;
       $user_detail->email                  = $request->email;
       $user_detail->password     		    = Hash::make($request->password);
       $user_detail->image                  = $request->image;
       $user_detail->name                   = $request->name;
       $user_detail->mobile                 = $request->mobile;
       $user_detail->roleId                 = '5';
       $user_detail->category_id            = '0';
       $user_detail->fb_id                  = $request->fb_id;
       $user_detail->device_token           = $result['token'];
       $user_detail->device_type            = $request->device_type;
       $user_detail->language               = $request->language;
       $user_detail->otp                    = mt_rand(100000,999999);
       $data = $user_detail->save();

       $device = new Device();
       $device->device_token    = $result['token'];
       $device->device_type     = $request->device_type;
       $save_device             = $user_detail->devices()->save($device);

       $address = new Address();
       $address->address  =  $request->address;
       $address->lat      =  $request->lat;
       $address->lng      =  $request->lng;    
       $save_address      =  $user_detail->addresses()->save($address);

       if(!empty($data) && !empty($save_device) && !empty($save_address)){
            return response()->json([
                'status'  => 'success',
                'message' => 'Registration Successfully',
                'data'    =>  $user_detail], $this->successStatus);
       }else{
            return response()->json([
                'status' =>  'failed',
                'message' => 'Registration failed'], 500);
       }
    }

    public function Verifyotp($id)
    {
        $Verifyotp = User::find($id);

        if (!$Verifyotp) {
            return response()->json([
                'success' => false,
                'message' => 'User with id ' . $id . ' not found'
            ], 400);
        }

         $updated = DB::table('users')
        ->where('id', $id)
        ->update(['account_status'=> '1']);

        if ($updated)
            return response()->json([
                'success' => true,
                'message' => 'OTP Verify Successfully'
            ]);
        else
            return response()->json([
                'success' => false,
                'message' => 'OTP could not be verify'
            ], 500); 
    }
}
