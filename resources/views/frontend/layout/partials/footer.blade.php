
<!--Parallax Section-->
<section class="parallax-section" style="background-image:url({{ asset('assets/images/parallax/image-1.jpg') }});">
    <div class="auto-container">
        <div class="text-center">
            <h2>The Best time to <span class="theme_color">plant tree</span> is now</h2>
            <div class="text">Some lorem ipsum subtitle will be here ipsum dolor</div>
            <a href="#" class="theme-btn btn-style-two">Donate Now!</a>
            <a href="#" class="theme-btn btn-style-one">Join Event</a>
        </div>
    </div>
</section>

<!--Intro Section-->
<section class="subscribe-intro">
    <div class="auto-container">
        <div class="row clearfix">
            <!--Column-->
            <div class="column col-md-9 col-sm-12 col-xs-12">
                <h2>Subcribe for Newsletter</h2>
                There are many variations of passages of Lorem Ipsum available but the majority have
            </div>
            <!--Column-->
            <div class="column col-md-3 col-sm-12 col-xs-12">
                <div class="text-right padd-top-20">
                    <a href="#" class="theme-btn btn-style-one">Subscribe Now</a>
                </div>
            </div>
        </div>
    </div>
</section>

<!--Main Footer-->
<footer class="main-footer" style="background-image:url({{ asset('assets/images/background/footer-bg.jpg') }});">

    <!--Footer Upper-->
    <div class="footer-upper">
        <div class="auto-container">
            <div class="row clearfix">

                <!--Two 4th column-->
                <div class="col-md-6 col-sm-12 col-xs-12">
                    <div class="row clearfix">
                        <div class="col-lg-8 col-sm-6 col-xs-12 column">
                            <div class="footer-widget about-widget">
                                <div class="logo"><a href="{{ asset('/') }}"><img src="{{ Voyager::image(setting('site.logo')) }}" class="img-responsive" alt="{{ setting('site.title') }}" style="height: 85px;"></a></div>
                                <div class="text">
                                    <p>Lorem ipsum dolor sit amet, eu me.</p>
                                </div>

                                <ul class="contact-info">
                                    <li><span class="icon fa fa-map-marker"></span> {{ setting('info.address') }}</li>
                                    <li><span class="icon fa fa-phone"></span> <a href="tel:{{ setting('info.phone') }}">{{ setting('info.phone') }}</a></li>
                                    <li><span class="icon fa fa-envelope-o"></span> <a href="mailto:{{ setting('info.email') }}">{{ setting('info.email') }}</a></li>
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
                            <h2>Our Project</h2>
                            <div class="footer-widget links-widget">
                                <ul>
                                    <li><a href="#">Water Surve</a></li>
                                    <li><a href="#">Education for all</a></li>
                                    <li><a href="#">Treatment</a></li>
                                    <li><a href="#">Food Serving</a></li>
                                    <li><a href="#">Cloth</a></li>
                                    <li><a href="#">Selter Project</a></li>
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
                                <h2>Latest News</h2>

                                <!--News Post-->
                                <div class="news-post">
                                    <div class="icon"></div>
                                    <div class="news-content"><figure class="image-thumb"><img src="{{ asset('assets/images/resource/post-thumb-4.jpg') }}" alt=""></figure><a href="#">If you need a crown or lorem an implant you will pay it gap it</a></div>
                                    <div class="time">July 2, 2014</div>
                                </div>

                                <!--News Post-->
                                <div class="news-post">
                                    <div class="icon"></div>
                                    <div class="news-content"><figure class="image-thumb"><img src="{{ asset('assets/images/resource/post-thumb-5.jpg') }}" alt=""></figure><a href="#">If you need a crown or lorem an implant you will pay it gap it</a></div>
                                    <div class="time">July 2, 2014</div>
                                </div>

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