@extends('frontend.layout.master')

@section('content')
    <!--Page Title-->
    <section class="page-title" style="background-image:url(assets/images/background/page-title-bg.jpg);">
        <div class="auto-container">
            <div class="sec-title">
                <h1>{{ __('About Us') }}</h1>
                <div class="bread-crumb"><a href="{{ asset('/') }}">{{ __('Home') }}</a> / <a href="#" class="current">{{ __('About Us') }}</a></div>
            </div>
        </div>
    </section>

    @if($page)
        {!! $page->translate()->body !!}
    @endif
@endsection
