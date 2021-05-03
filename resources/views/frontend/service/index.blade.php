@extends('frontend.layout.master')

@section('css')
    <style>
        .image-box {
            position: relative;
        }
        .content-box {
            position: absolute !important;
            bottom: 0;
            left: 0;
            background: rgba(0,0,0,0.4);
            padding: 5px 0 5px 5px !important;
        }
        .content-box a {
            color: #e3e3e3;
            font-weight: 700;
        }
        .content-box h4 {
            font-size: 14px !important;
        }

        .blog-news-column .image-box .news-date {
            width: 60px !important;
            height: 60px !important;
            font-size: 20px !important;
        }
        .blog-news-column .image-box .news-date {
            font-size: 17px !important;
        }

    </style>
@endsection

@section('content')

    <!--Page Title-->
    <section class="page-title"
             style="background-image:url({{ asset('assets/images/background/page-title-bg.jpg') }});">
        <div class="auto-container">
            <div class="sec-title">
                <h1>{{ __('Our Services') }}</h1>
                <div class="bread-crumb"><a href="{{ asset('/') }}">{{ __('Home') }}</a> / <a href="#" class="current">{{ __('Our Services') }}</a>
                </div>
            </div>
        </div>
    </section>


    <!--Blog News Section-->
    <section class="blog-news-section latest-news">
        <div class="auto-container">

            <div class="row clearfix">
            @foreach($projects as $key => $project)
                <!--News Column-->
                <div class="column blog-news-column col-lg-4 col-md-6 col-sm-6 col-xs-12">
                        <article class="inner-box">
                            <figure class="image-box">
                                <a href="{{ route('service.show', $project->slug) }}"><img
                                        src="{{ Voyager::image($project->image) }}" alt="{{ $project->translate()->title }}"></a>
                            </figure>
                            <div class="content-box">
                                <h4>
                                    <a href="{{ route('service.show', $project->slug) }}">{{ \Illuminate\Support\Str::limit($project->translate()->title, 80,'...') }}</a>
                                </h4>
                            </div>
                        </article>
                    </div>
            @endforeach
            </div>
        @if($projects)
            <!-- Styled Pagination -->
            <div class="styled-pagination text-center padd-top-20 margin-bott-40">
                {{ $projects->links('frontend.layout.partials.paginate') }}
            </div>
        @endif

        </div>
    </section>

@endsection
