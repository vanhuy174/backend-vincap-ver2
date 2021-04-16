<footer>
    <div class="footer-main">
        <div class="footer-area footer-padding">
            <div class="container">
                <div class="row  justify-content-between">
                    <div class="col-lg-4 col-md-4 col-sm-8">
                        <div class="single-footer-caption mb-30">
                            <div class="footer-logo">
                                <a href="{{ asset('/') }}"><img src="{{ setting('site.logo') }}" alt="Logo"></a>
                            </div>
                            <div class="footer-tittle">
                                <div class="footer-pera">
                                    <p class="info1">{{ setting('site.description') }}</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-4 col-sm-5">
                        <div class="single-footer-caption mb-50">
                            <div class="footer-tittle">
                                <h4>{{ __('Quick Links') }}</h4>
                                {!! menu('home') !!}
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-4 col-sm-7">
                        <div class="single-footer-caption mb-50">
                            <div class="footer-tittle">
                                <h4>{{ __('Contact') }}</h4>
                                <div class="footer-pera">
                                    <p class="info1">{{ setting('info.address') }}</p>
                                </div>
                                <ul>
                                    <li><a href="tel:{{ setting('info.phone') }}">Phone: {{ setting('info.phone') }}</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-8">
                        <div class="single-footer-caption mb-50">
                            <div class="map-footer">
                                <img src="{{ asset('assets/img/gallery/map-footer.png') }}" alt="">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row align-items-center">
                    <div class="col-xl-12 ">
                        <div class="footer-copy-right">
                            <p>
                                Copyright &copy;
                                <script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made
                                with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://kennatech.vn"
                                                                                          target="_blank">Kennatech</a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>