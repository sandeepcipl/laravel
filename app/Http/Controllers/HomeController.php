<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('home');
    }
    public function user()
    {
        return view('user');
    }
    public function create_user(Request $request)
    {
        $data = $request->all();
        $userInfo = User::create($data); /* passes data to protected function  */
        echo "<pre>";print_r($data);die;
        die('checking');
    }
}
