
@extends('frontend.layout.master')
@section('content')

    <!--Page Title-->
    <section class="page-title" style="background-image:url({{ asset('assets/images/background/page-title-bg.jpg') }});">
        <div class="auto-container">
            <div class="sec-title">
                <h1>{{ $blog->translate()->title }}</h1>
                <div class="bread-crumb"><a href="{{ asset('/') }}">{{ __('Home') }}</a> / <a href="#" class="current">{{ $blog->translate()->title }}</a></div>
            </div>
        </div>
    </section>

    <!--Sidebar Page-->
    <div class="sidebar-page">
        <div class="auto-container">
            <div class="row clearfix">
                <!--Content Side-->
                <div class="col-lg-9 col-md-8 col-sm-12 col-xs-12">
                    <!--Projects Section-->
                    <section class="blog-news-section blog-detail no-padd-bottom no-padd-top padd-right-20">
                        <!--News Column-->
                        <div class="column blog-news-column">
                            <article class="inner-box">
                                <figure class="image-box">
                                    <a href="#"><img src="{{ Voyager::image($blog->image) }}" alt="{{ $blog->translate()->title }}"></a>
                                    <div class="news-date">{{ $blog->created_at->format('d') }}<span class="month">{{ $blog->created_at->format('m') }}</span></div>
                                </figure>
                                <div class="content-box padd-top-30">
                                    <h3><a href="#">{{ $blog->translate()->title }}</a></h3>
                                    <div class="post-info clearfix">
                                        <div class="post-author">{{ __('Posted by') }}: Admin</div>
                                        <div class="post-options clearfix">
                                            <a href="#" class="comments-count"><span class="icon flaticon-communication-2"></span>{{ rand(0, 99) }}</a>
                                            <a href="#" class="fav-count"><span class="icon flaticon-favorite-1"></span>{{ rand(0, 999) }}</a>
                                        </div>
                                    </div>
                                    <div class="text">
                                        {!! $blog->translate()->body !!}
                                    </div>
                                </div>

                                <div class="post-share-options clearfix">
                                    <div class="pull-left tags"><strong>Tag</strong> : {{ $blog->translate()->meta_keywords }}</div>
                                    <div class="pull-right social-links-two clearfix">
                                        <a href="#" class="facebook img-circle"><span class="fa fa-facebook-f"></span></a>
                                        <a href="#" class="twitter img-circle"><span class="fa fa-twitter"></span></a>
{{--                                        <a href="#" class="google-plus img-circle"><span class="fa fa-google-plus"></span></a>--}}
{{--                                        <a href="#" class="linkedin img-circle"><span class="fa fa-pinterest-p"></span></a>--}}
{{--                                        <a href="#" class="linkedin img-circle"><span class="fa fa-linkedin"></span></a>--}}
                                    </div>
                                </div>
                            </article>
                        </div>
                    </section>
                </div>
                <!--Content Side-->
                <!--Sidebar-->
                <div class="col-lg-3 col-md-4 col-sm-12 col-xs-12">
                    <aside class="sidebar">
                        <!-- Search Form -->
                        <div class="widget search-box">
                            <form method="get" action="{{ route('blogs.index') }}">
                                <div class="form-group">
                                    <input type="search" name="keyword" value="" placeholder="{{ __('Enter keyword') }}">
                                    <button type="submit"><span class="icon flaticon-tool-5"></span></button>
                                </div>
                            </form>
                        </div>
                        <!-- Recent Posts -->
                        <div class="widget recent-posts wow fadeInUp" data-wow-delay="0ms" data-wow-duration="1500ms">
                            <div class="sidebar-title"><h3>{{ __('Latest Posts') }}</h3></div>
                            @foreach($latestBlog as $key=>$latest)
                            <article class="post">
                                <figure class="post-thumb"><img src="{{ Voyager::image( $latest->image) }}" alt="{{ $latest->translate()->title }}"></figure>
                                <h4><a href="{{ route('blogs.show', $latest->slug) }}">{{ $latest->translate()->title }}</a></h4>
                                <div class="post-info"><span class="icon flaticon-people-1"></span>{{ __('Posted by') }} : Admin </div>
                            </article>
                            @endforeach
                        </div>
                        <!-- Popular Tags -->
                        <div class="widget popular-tags">
                            <div class="sidebar-title"><h3>{{ __('KeyWords') }}</h3></div>
                            <a href="#">{{ $blog->meta_keywords }}</a>
                        </div>
                    </aside>
                </div>
                <!--Sidebar-->
            </div>
        </div>
    </div>

@endsection