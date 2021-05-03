@extends('frontend.layout.master')
@section('content')

<!--Page Title-->
<section class="page-title" style="background-image:url(assets/images/background/page-title-bg.jpg);">
    <div class="auto-container">
        <div class="sec-title">
            <h1>{{ $page->translate()->title }}</h1>
            <div class="bread-crumb"><a href="{{ asset('/') }}">{{ __('Home') }}</a> / <a href="#" class="current">{{ $page->translate()->title }}</a></div>
        </div>
    </div>
</section>

<!--Default Section / Other Info-->
<section class="default-section other-info">
    <div class="auto-container">
        <div class="row clearfix">
            <!--Info Column-->
            <div class="column info-column col-lg-5 col-md-6 col-sm-12 col-xs-12">
                <article class="inner-box">
                    <h3 class="margin-bott-20">{{ setting("$lang.title") }}</h3>
                    <div class="text margin-bott-40">{{ setting("$lang.description") }}</div>
                    <ul class="info-box">
                        <li><span class="icon flaticon-location"></span><strong>{{ __('Address') }}</strong> {{ setting("$lang.address") }}</li>
                        <li><span class="icon flaticon-technology-5"></span><strong>{{ __('Phone') }}</strong> <a href="tel:{{ setting("$lang.phone") }}">{{ setting("$lang.phone") }}</a></li>
                        <li><span class="icon flaticon-interface-1"></span><strong>Email</strong> <a href="mailto:{{ setting("$lang.email") }}">{{ setting("$lang.email") }}</a></li>
                    </ul>
                </article>
            </div>

            <!--Image Column-->
            <div class="column image-column col-lg-7 col-md-6 col-sm-12 col-xs-12">
                <article class="inner-box">
                    <figure class="image-box"><img src="{{ Voyager::image($page->image) }}" alt=""></figure>
                </article>
            </div>

        </div>
    </div>
</section>

<!--Contact Section-->
<section class="contact-section no-padd-top">
    <div class="auto-container">

        <div class="row clearfix">

            <!--Map Column-->
            <div class="column map-column col-lg-5 col-md-6 col-sm-12 col-xs-12">
                <h2>{{ __('Our Location on Map') }}</h2>

                <article class="inner-box">
                    <!--Map Container-->
                    <div class="map-container">
                        <!--Map Canvas-->
                        {!! setting('site.google-map') !!}
                    </div>
                </article>
            </div>

            <!--Form Column-->
            <div class="column form-column col-lg-7 col-md-6 col-sm-12 col-xs-12">
                <h2>{{ __('Send Message') }}</h2>
                <!--COntact Form-->
                <div class="inner-box contact-form">
                    <form method="post" action="#" id="contact-form">
                        <div class="row clearfix">
                            <!--Form Group-->
                            <div class="form-group col-md-6 col-xs-12">
                                <input type="text" name="username" value="" placeholder="{{ __('Your Name') }}">
                            </div>
                            <!--Form Group-->
                            <div class="form-group col-md-6 col-xs-12">
                                <input type="text" name="email" value="" placeholder="{{ __('Your Email') }}">
                            </div>
                            <!--Form Group-->
                            <div class="form-group col-md-12 col-xs-12">
                                <textarea name="message" placeholder="{{ __('Message') }}"></textarea>
                            </div>
                            <!--Form Group-->
                            <div class="form-group col-md-12 col-xs-12">
                                <div class="text-right"><button type="submit" class="theme-btn btn-style-two">{{ __('Send') }}</button></div>
                            </div>
                        </div>
                    </form>
                </div><!--COntact Form-->

            </div>

        </div>
    </div>
</section>

@endsection

@section('js')
{{--    <script src="{{ asset('assets/js/validate.js') }}"></script>--}}
@endsection

