@extends('frontend.layout.master')

@section('content')

    <!--Page Title-->
    <section class="page-title"
             style="background-image:url({{ asset('assets/images/background/page-title-bg.jpg') }});">
        <div class="auto-container">
            <div class="sec-title">
                <h1>{{ __('Our Blog') }}</h1>
                <div class="bread-crumb"><a href="{{ asset('/') }}">{{ __('Home') }}</a> / <a href="#" class="current">{{ __('Blog') }}</a>
                </div>
            </div>
        </div>
    </section>


    <!--Blog News Section-->
    <section class="blog-news-section latest-news">
        <div class="auto-container">

            <div class="row clearfix">
            @foreach($blogs as $key => $blog)
                <!--News Column-->
                    <div class="column blog-news-column col-lg-4 col-md-6 col-sm-6 col-xs-12">
                        <article class="inner-box">
                            <figure class="image-box">
                                <a href="{{ route('blogs.show', $blog->slug) }}"><img
                                        src="{{ Voyager::image($blog->image) }}" alt="{{ $blog->translate()->title }}"></a>
                                <div class="news-date">{{ $blog->created_at->format('d') }}<span
                                        class="month">{{ $blog->created_at->format('m') }}</span></div>
                            </figure>
                            <div class="content-box">
                                <h3><a href="{{ route('blogs.show', $blog->slug) }}">{{ $blog->translate()->title }}</a>
                                </h3>
                                <div class="post-info clearfix">
                                    <div class="post-author">{{ 'Administrator' }}</div>
                                    <div class="post-options clearfix">
                                        <a href="#" class="comments-count"><span
                                                class="icon flaticon-communication-2"></span>{{ rand(0, 99) }}</a>
                                        <a href="#" class="fav-count"><span
                                                class="icon flaticon-favorite-1"></span>{{ rand(0, 999) }}</a>
                                    </div>
                                </div>
                                <div class="text">{{ $blog->translate()->excerpt }}</div>
                                <a href="{{ route('blogs.show', $blog->slug) }}"
                                   class="theme-btn btn-style-three">{{__('Read More')}}</a>
                            </div>
                        </article>
                    </div>
                @endforeach
            </div>
        @if($blogs)
            <!-- Styled Pagination -->
            <div class="styled-pagination text-center padd-top-20 margin-bott-40">
                {{ $blogs->links('frontend.layout.partials.paginate') }}
            </div>
        @endif

        </div>
    </section>

@endsection
