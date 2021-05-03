@extends('frontend.layout.master')

@section('content')
    <!--Page Title-->
    <section class="page-title" style="background-image:url({{ asset('assets/images/background/page-title-bg.jpg') }});">
        <div class="auto-container">
            <div class="sec-title">
                <h1>{{ \Illuminate\Support\Str::limit($data->translate()->title, 70, '...') }}</h1>
                <div class="bread-crumb"><a href="{{ asset('/') }}">{{ __('Home') }}</a> / <a href="#" class="current">{{ \Illuminate\Support\Str::limit($data->translate()->title, 70, '...') }}</a></div>
            </div>
        </div>
    </section>
    <section style="padding: 80px 0;">
        <div class="container">
            @if($data)
                {!! $data->translate()->body !!}
            @else
                {{ __('Post not found!') }}
            @endif
        </div>
    </section>

@endsection
