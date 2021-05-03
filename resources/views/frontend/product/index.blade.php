@extends('frontend.layout.master')
@section('content')

    <!--Page Title-->
    <section class="page-title" style="background-image:url(assets/images/background/page-title-bg.jpg);">
        <div class="auto-container">
            <div class="sec-title">
                <h1>{{ __($title ?? '') }}</h1>
                <div class="bread-crumb"><a href="{{ asset('/') }}">{{ __('Home') }}</a> / <a href="#" class="current">{{ __($title ?? '') }}</a>
                </div>
            </div>
        </div>
    </section>

    <!--Sidebar Page-->
    <div class="sidebar-page">
        <div class="auto-container">
            <div class="row clearfix">

                <!--Content Side-->
                <div class="col-lg-9 col-md-8 col-sm-12 col-xs-12">

                    <!--Events Section / List View-->
                    <section class="events-section list-view no-padd-bottom no-padd-top padd-right-20">
                        @if($datas)
                        @foreach($datas as $key=>$data)
                        <!--Featured Column-->
                        <div class="column default-featured-column style-two">
                            <article class="inner-box">
                                <div class="row clearfix">
                                    <div class="col-md-5 col-sm-5 col-xs-12">
                                        <figure class="image-box">
                                            <a href="#"><img src="{{ Voyager::image( $data->image) }}" alt="{{ $data->translate()->title }}"></a>
                                        </figure>
                                    </div>

                                    <div class="col-md-7 col-sm-7 col-xs-12">
                                        <div class="content-box">
                                            <h3><a href="{{ route('product.show', $data->slug) }}">{{ $data->translate()->title }}</a></h3>
                                            <div class="column-info">{{ $data->created_at->format('d/m/Y') }}</div>
                                            <div class="text">
                                                {{ $data->translate()->excerpt }}
                                            </div>
                                            <a href="{{ route('product.show', $data->slug) }}" class="theme-btn btn-style-three">{{ __('Read More') }}</a>
                                        </div>
                                    </div>

                                </div>
                            </article>
                        </div>
                        @endforeach
                        <!-- Styled Pagination -->
                            <div class="styled-pagination padd-top-20 margin-bott-40">
                                {{ $datas->links('frontend.layout.partials.paginate') }}
                            </div>
                            @endif
                    </section>


                </div>
                <!--Content Side-->

                <!--Sidebar-->
                <div class="col-lg-3 col-md-4 col-sm-12 col-xs-12">
                    <aside class="sidebar">

                        <!-- Search Form -->
                        <div class="widget search-box">

                            <form method="post" action="index.html">
                                <div class="form-group">
                                    <input type="search" name="search-field" value="" placeholder="Enter keyword">
                                    <button type="submit"><span class="icon flaticon-tool-5"></span></button>
                                </div>
                            </form>

                        </div>

                        <!-- Popular Categories -->
                        <div class="widget popular-categories wow fadeInUp" data-wow-delay="0ms"
                             data-wow-duration="1500ms">
                            <div class="sidebar-title"><h3>{{ __('Categories') }}</h3></div>
                            <ul class="list">
                                <li><a class="clearfix" href="{{ route('data.index') }}">{{ __('Data') }}</a></li>
                                <li><a class="clearfix" href="{{ route('service.index') }}">{{ __('Services') }}</a></li>
                                <li><a class="clearfix" href="{{ route('project.index') }}">{{ __('Projects') }}</a></li>
                                <li><a class="clearfix" href="{{ route('product.index') }}">{{ __('Product') }}</a></li>
                                <li><a class="clearfix" href="{{ route('blogs.index') }}">{{ __('Blog') }}</a></li>
                            </ul>

                        </div>


                        <!-- Recent Posts -->
                        <div class="widget recent-posts wow fadeInUp" data-wow-delay="0ms" data-wow-duration="1500ms">
                            <div class="sidebar-title"><h3>{{ __('Latest Posts') }}</h3></div>
                            @foreach( $latestBlog as $key=>$blog )
                            <article class="post">
                                <figure class="post-thumb"><img src="{{ Voyager::image( $blog->image ) }}" alt="{{ $blog->translate()->title }}">
                                </figure>
                                <h4><a href="{{ route('blogs.show', $blog->slug) }}">{{ $blog->translate()->title }}</a></h4>
                                <div class="post-info"><span class="icon flaticon-people-1"></span> By: Admin
                                </div>
                            </article>
                            @endforeach

                        </div>
                    </aside>
                </div>
                <!--Sidebar-->


            </div>
        </div>
    </div>

@endsection
