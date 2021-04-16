<header>
    <div class="header-area header-transparent">
        <div class="main-header ">
            <div class="header-top d-none d-lg-block">
                <div class="container-fluid">
                    <div class="col-xl-12">
                        <div class="row d-flex justify-content-between align-items-center">
                            <div class="header-info-left">
                                <ul>
                                    <li>{{ setting('info.phone') }}</li>
                                    <li data-click="mailto:{{ setting('info.email') }}">{{ setting('info.email') }}</li>
                                    <li>{{ setting('info.timeshift') }}</li>
                                </ul>
                            </div>
                            <div class="header-info-right">
                                <ul class="header-social">
                                    <li><a href="{{ route('lang', app()->getLocale() == 'vi' ? 'en' : 'vi') }}"><img src="{{ asset('assets/img/language/' . (app()->getLocale() == 'vi' ? 'en' : 'vi') . '.png') }}" alt="Language" style="width: 21px"></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="header-bottom  header-sticky">
                <div class="container-fluid">
                    <div class="row align-items-center">
                        <div class="col-xl-2 col-lg-2 col-md-1">
                            <div class="logo">
                                <a href="{{ asset('/') }}" class="big-logo"><img src="{{ setting('site.logo') }}" alt="Logo"></a>
                                <a href="{{ asset('/') }}" class="small-logo"><img src="{{ setting('site.loder-logo') }}" alt="Logo"></a>
                            </div>
                        </div>
                        <div class="col-xl-8 col-lg-8 col-md-8">
                            {!! menu('home', 'frontend.menu.main-menu') !!}
                        </div>
                        {{--<div class="col-xl-2 col-lg-2 col-md-3">
                            <div class="header-right-btn f-right d-none d-lg-block">
                                <a href="#" class="btn">Contact Now</a>
                            </div>
                        </div>--}}
                        <div class="col-12">
                            <div class="mobile_menu d-block d-lg-none"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>