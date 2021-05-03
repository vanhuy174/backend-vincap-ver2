
<!--Parallax Section-->
{{--<section class="parallax-section" style="background-image:url({{ asset('assets/images/parallax/image-1.jpg') }});">
    <div class="auto-container">
        <div class="text-center">
            <h2>The Best time to <span class="theme_color">plant tree</span> is now</h2>
            <div class="text">Some lorem ipsum subtitle will be here ipsum dolor</div>
            <a href="#" class="theme-btn btn-style-two">Donate Now!</a>
            <a href="#" class="theme-btn btn-style-one">Join Event</a>
        </div>
    </div>
</section>--}}

<!--Intro Section-->
<section class="subscribe-intro">
    <div class="auto-container">
        <div class="row clearfix">
            <!--Column-->
            <div class="column col-md-9 col-sm-12 col-xs-12">
                <h2>{{ __('Contact us') }}</h2>
                {{ __('We will help you answer your questions') }}
            </div>
            <!--Column-->
            <div class="column col-md-3 col-sm-12 col-xs-12">
                <div class="text-right padd-top-20">
                    <a href="{{ route('contact.index') }}" class="theme-btn btn-style-one">{{ __('Contact now') }}</a>
                </div>
            </div>
        </div>
    </div>
</section>

<!--Main Footer-->
<footer class="main-footer" style="background-image:url({{ asset('assets/images/background/footer-bg.jpg') }});">
    @php
        $OurProject= \App\Product::where('type', 'project')->where('status', 'ACTIVE')->orderBy('created_at', 'DESC')->withTranslation()->limit(6)->get();
        $LatestNews= \TCG\Voyager\Models\Post::where('status', 'PUBLISHED')->orderBy('created_at', 'DESC')->withTranslation()->limit(3)->get();
    @endphp
    <!--Footer Upper-->
    <div class="footer-upper">
        <div class="auto-container">
            <div class="row clearfix">

                <!--Two 4th column-->
                <div class="col-md-6 col-sm-12 col-xs-12">
                    <div class="row clearfix">
                        <div class="col-lg-8 col-sm-6 col-xs-12 column">
                            <div class="footer-widget about-widget">
                                <div class="logo"><a href="{{ asset('/') }}"><img src="{{ Voyager::image(setting('site.logo')) }}" class="img-responsive" alt="{{ setting("$lang.title") }}" style="height: 85px;"></a></div>
                                <div class="text">
                                    <p>{{ setting("$lang.title") }}</p>
                                </div>

                                <ul class="contact-info">
                                    <li><span class="icon fa fa-map-marker"></span> {{ setting("$lang.address") }}</li>
                                    <li><span class="icon fa fa-phone"></span> <a href="tel:{{ setting("$lang.phone") }}">{{ setting("$lang.phone") }}</a></li>
                                    <li><span class="icon fa fa-envelope-o"></span> <a href="mailto:{{ setting("$lang.email") }}">{{ setting("$lang.email") }}</a></li>
                                </ul>

                                <div class="social-links-two clearfix">
                                    <a href="#" class="facebook img-circle"><span class="fa fa-facebook-f"></span></a>
                                    <a href="#" class="twitter img-circle"><span class="fa fa-twitter"></span></a>
                                    <a href="#" class="google-plus img-circle"><span class="fa fa-google-plus"></span></a>
                                    <a href="#" class="linkedin img-circle"><span class="fa fa-pinterest-p"></span></a>
                                    <a href="#" class="linkedin img-circle"><span class="fa fa-linkedin"></span></a>
                                </div>

                            </div>
                        </div>

                        <!--Footer Column-->
                        <div class="col-lg-4 col-sm-6 col-xs-12 column">
                            <h2>{{ __('Our Project') }}</h2>
                            <div class="footer-widget links-widget">
                                <ul>
                                    @foreach($OurProject as $key=>$project)
                                    <li><a href="{{ route('project.show', $project->slug) }}">{{ \Illuminate\Support\Str::limit($project->translate()->title, 20, '...') }}</a></li>
                                    @endforeach
                                </ul>

                            </div>
                        </div>
                    </div>
                </div><!--Two 4th column End-->

                <!--Two 4th column-->
                <div class="col-md-6 col-sm-12 col-xs-12">
                    <div class="row clearfix">
                        <!--Footer Column-->
                        <div class="col-lg-7 col-sm-6 col-xs-12 column">
                            <div class="footer-widget news-widget">
                                <h2>{{ __('Latest News') }}</h2>
                                @foreach($LatestNews as $key=>$new)
                                <!--News Post-->
                                <div class="news-post">
                                    <div class="icon"></div>
                                    <div class="news-content"><figure class="image-thumb"><img src="{{ Voyager::image( $new->image ) }}" alt="{{ $new->translate()->title }}"></figure>
                                        <a href="{{ route('blogs.show', $new->slug) }}">{{ \Illuminate\Support\Str::limit($new->translate()->title, 20, '...') }}</a></div>
                                    <div class="time">{{ $new->created_at->format('d/m/Y') }}</div>
                                </div>
                                @endforeach
                            </div>
                        </div>

                        <!--Footer Column-->
                        <div class="col-lg-5 col-sm-6 col-xs-12 column">
                            <div class="footer-widget links-widget">
                                <h2>{{ __('Quick Links') }}</h2>
                                {!! menu('home') !!}
                                {{--<ul>
                                    <li><a href="#">Water Surve</a></li>
                                    <li><a href="#">Education for all</a></li>
                                    <li><a href="#">Treatment</a></li>
                                    <li><a href="#">Food Serving</a></li>
                                    <li><a href="#">Cloth</a></li>
                                    <li><a href="#">Selter Project</a></li>
                                </ul>--}}

                            </div>
                        </div>
                    </div>
                </div><!--Two 4th column End-->

            </div>

        </div>
    </div>

    <!--Footer Bottom-->
    <div class="footer-bottom">
        <div class="auto-container clearfix">
            <!--Copyright-->
            <div class="copyright text-center">Copyright {{ date('Y') }} &copy; Created By <a href="https://kennatech.vn/">Kennatech</a>  with love</div>
        </div>
    </div>

</footer>
