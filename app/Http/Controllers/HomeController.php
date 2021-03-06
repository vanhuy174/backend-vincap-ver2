<?php

namespace App\Http\Controllers;

use App\Product;
use App\Slide;
use App\Team;
use Illuminate\Http\Request;
use TCG\Voyager\Models\Page;
use TCG\Voyager\Models\Post;

class HomeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View|\Illuminate\Http\Response
     */
    public function index()
    {
        $slides =   Slide::with('translations')->get();
        $projects= Product::where('type', 'project')->where('status', 'ACTIVE')->orderBy('created_at', 'DESC')->withTranslation()->limit(4)->get();
        $blogs= Post::where('status', 'PUBLISHED')->where('status', 'PUBLISHED')->orderBy('created_at', 'DESC')->withTranslation()->limit(3)->get();
        $about= Page::where('slug', 'about')->withTranslation()->firstOrFail();
        $services =Product::where('type', 'service')->where('status', 'ACTIVE')->orderBy('created_at', 'DESC')->withTranslation()->limit(6)->get();
        $teams =Team::orderBy('created_at', 'DESC')->withTranslation()->get();

        return view('frontend.home.index', compact('slides', 'projects', 'blogs', 'about', 'services', 'teams'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
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
        //
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
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
