<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Page;

class PageController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
         //$pages = Page::all();
		 
		 $pages = Page::where('page_status', 1)->get();

        return view('pages.index', compact('pages'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
         return view('pages.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
         $request->validate([
        'page_key'=>'required',
        'page_content'=> 'required'
      ]);
      $page = new Page([
        'page_key' => $request->get('page_key'),
        'page_status' => '1',
        'page_content'=> $request->get('page_content')
      ]);
      $page->save();
      return redirect('/pages')->with('success', 'Page has been added');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $page = Page::find($id);

        return view('pages.edit', compact('page'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
       $request->validate([
        'page_key'=> 'required',
        'page_status'=> 'required',
        'page_content' => 'required'
      ]);

      $share = Page::find($id);
      $share->page_key = $request->get('page_key');
      $share->page_content = $request->get('page_content');
      $share->page_status = $request->get('page_status');
      $share->save();

      return redirect('/pages')->with('success', 'Page has been updated');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
         $page = Page::find($id);
     $page->delete();

     return redirect('/pages')->with('success', 'page has been deleted Successfully');
    }
}
