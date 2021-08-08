<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use App\User;

class AuthController extends Controller{
	
	public function login(Request $request)
  	{
  		if (Auth::check()) {
			return redirect('admin/dashboard');
		}
       return view('auth.login');
	}

	public function post_login(Request $request)
	{
		if(Auth::attempt(['email' => $request->email, 'password' => $request->password], true)){
			if(empty(Auth::user()->status)){
				if(Auth::user()->is_admin == 1){
					return redirect()->intended('admin/dashboard');
				}else{
					Auth::logout();
					return redirect()->back()->with('error', 'Please enter the correct credentials');	
				}
			}else{
				Auth::logout();
				return redirect()->back()->with('error', 'Please enter the correct credentials');
			}
		}else{
			return redirect()->back()->with('error', 'Please enter the content credentials');
		}
	}


	public function logout(Request $request)
	{
		Auth::logout();
		return redirect(url('admin/login'));
	}

	public function activate($token)
    {
    	// dd();
        $user = User::where('remember_token', '=', $token);
        if ($user->count() == '0') {
        	abort(403);
        }

        $user = $user->first();
        $user->is_email_verify = 1;
       
        $user->save();

        //return redirect('')->with('success', 'Thank you. your account has been verified.');
           return redirect('email_verification')->with('success', 'Thank you. your account has been verified.');
           
    }
    public function email_verification(){
    		return view('emails.image_list');
    }

	
}