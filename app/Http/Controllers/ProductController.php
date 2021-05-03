<?php

namespace App\Http\Controllers;

use App\Product;
use Illuminate\Http\Request;
use TCG\Voyager\Models\Page;
use TCG\Voyager\Models\Post;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $datas= Product::where('type', 'product')->where('status', 'ACTIVE')->orderBy('created_at', 'DESC')->withTranslation()->paginate(12);
        $latestBlog= Post::where('status', 'PUBLISHED')->orderBy('created_at', 'DESC')->withTranslation()->limit(6)->get();
        $title= "Product";

        return view('frontend/product/index', compact('datas', 'title', 'latestBlog'));
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
//        $page= Page::where('slug', 'blogs')->withTranslation()->firstOrFail();
        $data= Product::where('slug', $id)->where('status', 'ACTIVE')->orderBy('created_at', 'DESC')->withTranslation()->firstOrFail();
//        $latestBlog= Post::where('status', 'PUBLISHED')->orderBy('created_at', 'DESC')->withTranslation()->limit(6)->get();
        return view('frontend/product/productDetail', compact('data',  ));
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
