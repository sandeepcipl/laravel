<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use Illuminate\Routing\Redirector;
use Illuminate\Support\Facades\Hash;
use App\Http\Controllers\Controller;
use App\User;

class UserController extends Controller
{
    //
	
	/**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function userlist()
    {
		$users = User::all();
        return view('userlist', compact('users'));
    }

	public function adduser()
    {
        return view('adduser');
    }
	
	public function addadminuser(Request $request)
    {
		$data			= $request->all();	
		$request->validate([
			'email' => 'bail|required|unique:users|max:255',
			'name' => 'required',
		]);		
		User::create([
            'name' => $data['name'],
            'email' => $data['email'],
            'password' => Hash::make($data['password']),
        ]);
	//	Redirect::route('user');
		return redirect()->action('Admin\UserController@userlist');

		
		//$users = User::all();
        //return view('userlist', compact('users'));
    }
	
	public function editadminuser(Request $request)
    {
		$data			= $request->all();	
		$request->validate([
			'email' => 'bail|required|unique:users|max:255',
			'name' => 'required',
		]);		
		User::create([
            'name' => $data['name'],
            'email' => $data['email'],
            'password' => Hash::make($data['password']),
        ]);
		$users = User::all();
        return view('userlist', compact('users'));
    }
}
