<header class="main-header">
    <div class="top-bar">
        <div class="top-container">
            <!--Info Outer-->
            <div class="info-outer">
                <!--Info Box-->
                <ul class="info-box clearfix">
                    <li><span class="icon fa fa-envelope-o"></span><a href="mailto:{{ setting("$lang.email") }}">{{ setting("$lang.email") }}</a></li>
                    <li><span class="icon flaticon-technology-5"></span><a href="tel:{{ setting("$lang.phone") }}">{{ setting("$lang.phone") }}</a></li>
                    <li class="social-links-one">
                        <a href="{{ route('lang', 'vi') }}" class="facebook img-circle"><img src="{{ asset('assets/images/flags/vi.gif') }}" alt="vi" width="20px"></a>
                        <a href="{{ route('lang', 'en') }}" class="facebook img-circle"><img src="{{ asset('assets/images/flags/en.gif') }}" alt="vi" width="20px"></a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!-- Header Upper -->
    <div class="header-upper">
        <div class="auto-container clearfix">
            <!-- Logo -->
            <div class="logo">
                <a href="{{ asset('/') }}"><img src="{{ \TCG\Voyager\Facades\Voyager::image(setting('site.logo')) }}" alt="VinCap Logo" height="80px"></a>
            </div>

            <!--Nav Outer-->
            <div class="nav-outer clearfix">

                <!-- Main Menu -->
                {!! menu('home', 'frontend.menu.main-menu') !!}
                <!-- Main Menu End-->

            </div>

        </div>
    </div><!-- Header Top End -->

</header>