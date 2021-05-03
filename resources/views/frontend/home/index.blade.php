@extends('frontend.layout.master')

@section('content')
    <!--Main Slider-->
    <section class="main-slider revolution-slider">

        <div class="tp-banner-container">
            <div class="tp-banner">
                <ul>
                    @foreach($slides as $slide)
                        <li data-transition="fade" data-slotamount="1" data-masterspeed="1000" data-thumb="{{ \TCG\Voyager\Facades\Voyager::image($slide->image) }}"  data-saveperformance="off"  data-title="{{ $slide->translate()->title }}">
                            <img src="{{ \TCG\Voyager\Facades\Voyager::image($slide->image) }}" alt="{{ $slide->translate()->title }}" data-bgposition="center top" data-bgfit="cover" data-bgrepeat="no-repeat">
                            {!! $slide->translate()->content !!}
                        </li>
                    @endforeach
                    {{--<li data-transition="fade" data-slotamount="1" data-masterspeed="1000" data-thumb="assets/images/main-slider/1.jpg"  data-saveperformance="off"  data-title="Awesome Title Here">
                        <img src="assets/images/main-slider/1.jpg" alt="" data-bgposition="center top" data-bgfit="cover" data-bgrepeat="no-repeat">
                        <div class="tp-caption sfl sfb tp-resizeme"
                             data-x="left" data-hoffset="15"
                             data-y="center" data-voffset="-150"
                             data-speed="1500"
                             data-start="500"
                             data-easing="easeOutExpo"
                             data-splitin="none"
                             data-splitout="none"
                             data-elementdelay="0.01"
                             data-endelementdelay="0.3"
                             data-endspeed="1200"
                             data-endeasing="Power4.easeIn"><div class="circular-drop">0<sub>2</sub></div></div>

                        <div class="tp-caption sfr sfb tp-resizeme"
                             data-x="left" data-hoffset="90"
                             data-y="center" data-voffset="-50"
                             data-speed="1500"
                             data-start="1000"
                             data-easing="easeOutExpo"
                             data-splitin="none"
                             data-splitout="none"
                             data-elementdelay="0.01"
                             data-endelementdelay="0.3"
                             data-endspeed="1200"
                             data-endeasing="Power4.easeIn"><h1><span class="normal-font">Go</span> Green</h1></div>

                        <div class="tp-caption sfl sfb tp-resizeme"
                             data-x="left" data-hoffset="90"
                             data-y="center" data-voffset="40"
                             data-speed="1500"
                             data-start="1500"
                             data-easing="easeOutExpo"
                             data-splitin="none"
                             data-splitout="none"
                             data-elementdelay="0.01"
                             data-endelementdelay="0.3"
                             data-endspeed="1200"
                             data-endeasing="Power4.easeIn"><h3 class="bg-color">Save the world by planting tree</h3></div>

                        <div class="tp-caption sfl sfb tp-resizeme"
                             data-x="left" data-hoffset="90"
                             data-y="center" data-voffset="110"
                             data-speed="1500"
                             data-start="2000"
                             data-easing="easeOutExpo"
                             data-splitin="none"
                             data-splitout="none"
                             data-elementdelay="0.01"
                             data-endelementdelay="0.3"
                             data-endspeed="1200"
                             data-endeasing="Power4.easeIn"><div class="text">Lorem ipsum dolor sit amet, debet dolore mollis his ad, ea usu <br>soleat detraxit.In vix agam moderatius. Modo partiendo.</div></div>

                        <div class="tp-caption sfr sfb tp-resizeme"
                             data-x="left" data-hoffset="90"
                             data-y="center" data-voffset="190"
                             data-speed="1500"
                             data-start="2000"
                             data-easing="easeOutExpo"
                             data-splitin="none"
                             data-splitout="none"
                             data-elementdelay="0.01"
                             data-endelementdelay="0.3"
                             data-endspeed="1200"
                             data-endeasing="Power4.easeIn"><a href="#" class="theme-btn btn-style-one">Learn More</a></div>

                    </li>

                    <li data-transition="slidedown" data-slotamount="1" data-masterspeed="1000" data-thumb="assets/images/main-slider/2.jpg"  data-saveperformance="off"  data-title="Awesome Title Here">
                        <img src="assets/images/main-slider/2.jpg" alt="" data-bgposition="center top" data-bgfit="cover" data-bgrepeat="no-repeat">


                        <div class="tp-caption sfl sfb tp-resizeme"
                             data-x="center" data-hoffset="0"
                             data-y="center" data-voffset="-120"
                             data-speed="1500"
                             data-start="500"
                             data-easing="easeOutExpo"
                             data-splitin="none"
                             data-splitout="none"
                             data-elementdelay="0.01"
                             data-endelementdelay="0.3"
                             data-endspeed="1200"
                             data-endeasing="Power4.easeIn"><h2 class="normal-font">Help us</h2></div>

                        <div class="tp-caption sfr sfb tp-resizeme"
                             data-x="center" data-hoffset="0"
                             data-y="center" data-voffset="-30"
                             data-speed="1500"
                             data-start="1000"
                             data-easing="easeOutExpo"
                             data-splitin="none"
                             data-splitout="none"
                             data-elementdelay="0.01"
                             data-endelementdelay="0.3"
                             data-endspeed="1200"
                             data-endeasing="Power4.easeIn"><h2>to save the Animals</h2></div>

                        <div class="tp-caption sfl sfb tp-resizeme"
                             data-x="center" data-hoffset="0"
                             data-y="center" data-voffset="50"
                             data-speed="1500"
                             data-start="1500"
                             data-easing="easeOutExpo"
                             data-splitin="none"
                             data-splitout="none"
                             data-elementdelay="0.01"
                             data-endelementdelay="0.3"
                             data-endspeed="1200"
                             data-endeasing="Power4.easeIn"><h4>All of our afford can bring back the life</h4></div>

                        <div class="tp-caption sfr sfb tp-resizeme"
                             data-x="center" data-hoffset="0"
                             data-y="center" data-voffset="120"
                             data-speed="1500"
                             data-start="2000"
                             data-easing="easeOutExpo"
                             data-splitin="none"
                             data-splitout="none"
                             data-elementdelay="0.01"
                             data-endelementdelay="0.3"
                             data-endspeed="1200"
                             data-endeasing="Power4.easeIn"><a href="#" class="theme-btn btn-style-one">Learn More</a></div>

                    </li>
                    --}}
                </ul>

            </div>
        </div>
    </section>

    <section class="events-section latest-events">
        <div class="auto-container">

            <div class="sec-title text-center">
                <h2>{{ __('Services') }}</h2>
                <div class="text">Chúng tôi luôn mong muốn mang đến những dịch vụ tốt nhất cho đối tác - khách hàng</div>
            </div>
            <div class="row clearfix">
                @if($services)
                    @foreach($services as $key=>$service)
                        @if($key > 1)
                            @break
                        @endif
                <!--Featured Column-->
                <div class="column default-featured-column style-two col-lg-4 col-md-6 col-sm-6 col-xs-12">
                    <article class="inner-box">
                        <figure class="image-box">
                            <a href="{{ route('service.show', $service->slug) }}"><img src="{{ Voyager::image( $service->image ) }}" alt="{{ $service->translate()->title }}"></a>
                        </figure>
                        <div class="content-box">
                            <h3><a href="{{ route('service.show', $service->slug) }}">{{ $service->translate()->title }}</a></h3>
                            <div class="column-info">{{ $service->created_at->format('d/m/Y') }}</div>
                            <div class="text">{{ \Illuminate\Support\Str::limit($service->translate()->excerpt, 120,'...') }}</div>
                            <a href="{{ route('service.show', $service->slug) }}" class="theme-btn btn-style-three">{{ __('Read More') }}</a>
                        </div>
                    </article>
                </div>
                    @endforeach

                <!--Cause Column-->
                <div class="column default-featured-column links-column col-lg-4 col-md-6 col-sm-6 col-xs-12">
                    <article class="inner-box">
                        <div class="vertical-links-outer">
                            @foreach($services as $key=>$service)
                                @if($key < 2)
                                    @continue
                                @endif
                                <div class="link-block">
                                    <div class="default inner">
                                        <figure class="image-thumb">
                                            <img src="{{ Voyager::image( $service->image ) }}" alt="{{ $service->translate()->title }}">
                                        </figure>
                                        <strong>{{ $service->translate()->title }}</strong>
                                        <span class="desc">{{ \Illuminate\Support\Str::limit($service->translate()->excerpt, 120,'...') }}</span>
                                    </div>
                                    <a href="{{ route('service.show', $service->slug) }}" class="alternate">
                                        <strong>{{ $service->translate()->title }}</strong>
                                        <span class="desc">{{ \Illuminate\Support\Str::limit($service->translate()->excerpt, 120,'...') }}</span>
                                    </a>
                                </div>`
                            @endforeach

                        </div>
                    </article>
                </div>
                    @endif
            </div>
        </div>
    </section>
{{--

    <!--Main Features-->
    <section class="main-features">
        <div class="auto-container">
            <div class="title-box text-center">
                <h2>{{ __('Services') }}</h2>
                <div class="text">Chúng tôi bảo đảm cung cấp các dịch vụ tốt nhất cho đối tác - khách hàng</div>
            </div>

            <div class="row clearfix">

                <!--Feature Column-->
                <div class="features-column col-lg-3 col-md-6 col-xs-12">
                    <article class="inner-box">
                        <div class="icon-box">
                            <div class="icon"><span class="flaticon-illumination"></span></div>
                            <h3 class="title">{{ __('Energy') }}</h3>
                        </div>
                    </article>
                </div>

                <!--Feature Column-->
                <div class="features-column col-lg-3 col-md-6 col-xs-12">
                    <article class="inner-box">
                        <div class="icon-box">
                            <div class="icon"><span class="flaticon-nature-1"></span></div>
                            <h3 class="title">{{ __('Resources') }}</h3>
                        </div>
                    </article>
                </div>

                <!--Feature Column-->
                <div class="features-column col-lg-3 col-md-6 col-xs-12">
                    <article class="inner-box">
                        <div class="icon-box">
                            <div class="icon"><span class="flaticon-summer-3"></span></div>
                            <h3 class="title">{{ __('Astronomy') }}</h3>
                        </div>
                    </article>
                </div>

                <!--Feature Column-->
                <div class="features-column col-lg-3 col-md-6 col-xs-12">
                    <article class="inner-box">
                        <div class="icon-box">
                            <div class="icon"><span class="flaticon-arrows-3"></span></div>
                            <h3 class="title">{{ __('The universe') }}</h3>
                        </div>
                    </article>
                </div>

            </div>
        </div>
    </section>
--}}


    <!--Featured Fluid Section-->
    <section class="featured-fluid-section">


        <div class="outer clearfix">

            <!--Image Column-->
            <div class="image-column" style="background-image:url({{ Voyager::image( $about->image ) }});"></div>

            <!--Text Column-->
            <article class="column text-column dark-column wow fadeInRight" data-wow-delay="0ms" data-wow-duration="1500ms" style="background-image:url({{ Voyager::image( $about->image ) }});">

                <div class="content-box pull-left">
                    <h2>{{ $about->translate()->title }}</h2>
                    <div class="title-text"></div>
                    <div class="text">{{ $about->translate()->excerpt }}</div>
                    <a href="{{ route('about.index') }}" class="theme-btn btn-style-two">{{ __('View details') }}</a>
                </div>

                <div class="clearfix"></div>
            </article>

        </div>

    </section>


    <!--Recent Projects Section-->
    <section class="recent-projects">
        <div class="auto-container">

            <div class="sec-title clearfix">
                <div class="pull-left">
                    <h2><span class="normal-font theme_color">{{ __('Recent project') }}</span></h2>
                    <div class="text"> </div>
                </div>
                <div class="pull-right padd-top-30">
                    <a href="{{ route('project.index') }}" class="theme-btn btn-style-three">{{ __('See All Projects') }}</a>
                </div>
            </div>
            <div class="row clearfix">
                @foreach($projects as $key=>$project)
                <!--Default Featured Column-->
                <div class="column default-featured-column col-md-3 col-sm-6 col-xs-12">
                    <article class="inner-box wow fadeInLeft" data-wow-delay="0ms" data-wow-duration="1500ms">
                        <figure class="image-box">
                            <a href="{{ route('project.show', $project->slug) }}"><img src="{{ Voyager::image( $project->image ) }}" alt="{{ $project->translate()->title }}"></a>
                        </figure>
                        <div class="content-box">
                            <h3><a href="{{ route('project.show', $project->slug) }}">{{ \Illuminate\Support\Str::limit($project->translate()->title, 40,'...') }}</a></h3>
                            <div class="column-info">{{ $project->created_at->format('d/m/Y') }}</div>
                            <div class="text">{{ \Illuminate\Support\Str::limit($project->translate()->excerpt, 120,'...') }}</div>
                            <a href="{{ route('project.show', $project->slug) }}" class="theme-btn btn-style-three">{{ __('Read More') }}</a>
                        </div>
                    </article>
                </div>
                @endforeach

            </div>
        </div>
    </section>

{{--

    <!--Two Column Fluid -->
    <section class="two-column-fluid">


        <div class="outer clearfix">


            <article class="column left-column" style="background-image:url(assets/images/resource/fluid-image-3.jpg);">

                <div class="content-box pull-right">
                    <h2>Some <span class="normal-font theme_color">Facts</span></h2>
                    <div class="title-text">Lorem ipsum dolor some link sit amet, cum at inani interesset</div>
                    <div class="text">We’re extremely proud of what we’ve achieved together with charitie lorem individuals, philanthropists and schools since the Big Give was founded in 2007, and here are some fact from our achivemnet.</div>
                    <br>

                    <div class="clearfix">
                        <div class="icon-box">
                            <div class="icon"><span class="flaticon-shapes-1"></span></div>
                            <div class="lower-box">
                                <h4>$<span class="count-text" data-stop="7845910" data-speed="1500">7,845,910</span></h4>
                                <span class="title">Raised</span>
                            </div>
                        </div>

                        <div class="icon-box">
                            <div class="icon"><span class="flaticon-tool-4"></span></div>
                            <div class="lower-box">
                                <h4>$<span class="count-text" data-stop="13360" data-speed="1500">12,360</span></h4>
                                <span class="title">Projects</span>
                            </div>
                        </div>

                        <div class="icon-box">
                            <div class="icon"><span class="flaticon-favorite"></span></div>
                            <div class="lower-box">
                                <h4>$<span class="count-text" data-stop="78459" data-speed="1500">225,580</span></h4>
                                <span class="title">Donations</span>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="clearfix"></div>
            </article>

            <article class="column right-column" style="background-image:url(assets/images/resource/fluid-image-4.jpg);">

                <div class="content-box pull-left">
                    <div class="outer-box">
                        <div class="quote-icon"><span class="fa fa-quote-left"></span></div>
                        <h2>word from <span class="normal-font">CEO</span></h2>

                        <!--Text Content-->
                        <div class="text-content">
                            <div class="text"><p>How to pursue pleasure rationally  consequences that are extremeely painful or again is there anyones who loves or  pursues or desires to obtain pain of itself because its sed great pleasure get well soon.</p></div>
                            <div class="information clearfix">
                                <div class="info">
                                    <figure class="image-thumb"><img src="assets/images/resource/ceo-thumb.jpg" alt=""></figure>
                                    <h3>Alex Zender</h3>
                                    <p>CEO of Go Green</p>
                                </div>
                                <div class="signature"><img src="assets/images/resource/signature-image-1.png" alt=""></div>
                            </div>
                        </div>

                    </div>
                </div>

                <div class="clearfix"></div>
            </article>

        </div>

    </section>

    <!--Events Section-->
    <section class="events-section latest-events">
        <div class="auto-container">

            <div class="sec-title text-center">
                <h2>Latest <span class="normal-font theme_color">Event</span></h2>
                <div class="text">Lorem ipsum dolor sit amet, cum at inani interes setnisl omnium dolor amet amet qco modo cum text </div>
            </div>
            <div class="row clearfix">

                <!--Featured Column-->
                <div class="column default-featured-column style-two col-lg-4 col-md-6 col-sm-6 col-xs-12">
                    <article class="inner-box">
                        <figure class="image-box">
                            <a href="#"><img src="assets/images/resource/featured-image-5.jpg" alt=""></a>
                            <div class="post-tag">Featured</div>
                        </figure>
                        <div class="content-box">
                            <h3><a href="#">One Tree Thousand Hope</a></h3>
                            <div class="column-info">13-14 Feb in Sanfransico, CA</div>
                            <div class="text">Lorem ipsum dolor sit amet, eu qui modo expeten dis reformidans, ex sit appetere sententiae.. </div>
                            <a href="#" class="theme-btn btn-style-three">Read More</a>
                        </div>
                    </article>
                </div>

                <!--Featured Column-->
                <div class="column default-featured-column style-two col-lg-4 col-md-6 col-sm-6 col-xs-12">
                    <article class="inner-box">
                        <figure class="image-box">
                            <a href="#"><img src="assets/images/resource/featured-image-6.jpg" alt=""></a>
                        </figure>
                        <div class="content-box">
                            <h3><a href="#">One Tree Thousand Hope</a></h3>
                            <div class="column-info">13-14 Feb in Sanfransico, CA</div>
                            <div class="text">Lorem ipsum dolor sit amet, eu qui modo expeten dis reformidans, ex sit appetere sententiae.. </div>
                            <a href="#" class="theme-btn btn-style-three">Read More</a>
                        </div>
                    </article>
                </div>

                <!--Cause Column-->
                <div class="column default-featured-column links-column col-lg-4 col-md-6 col-sm-6 col-xs-12">
                    <article class="inner-box">
                        <div class="vertical-links-outer">
                            <div class="link-block">
                                <div class="default inner"><figure class="image-thumb"><img src="assets/images/resource/post-thumb-1.jpg" alt=""></figure><strong>Togather we can change the</strong><span class="desc">Lorem ipsum dolor sit amet et siu amet sio audiam si copiosaei mei purto </span></div>
                                <a href="#" class="alternate"><strong>Togather we can change the</strong><span class="desc">Lorem ipsum dolor sit amet et siu amet sio audiam si copiosaei mei purto </span></a>
                            </div>

                            <div class="link-block">
                                <div class="default inner"><figure class="image-thumb"><img src="assets/images/resource/post-thumb-2.jpg" alt=""></figure><strong>Urgent Clothe Needed</strong><span class="desc">Lorem ipsum dolor sit amet et siu amet sio audiam si copiosaei mei purto </span></div>
                                <a href="#" class="alternate"><strong>Urgent Clothe Needed</strong><span class="desc">Lorem ipsum dolor sit amet et siu amet sio audiam si copiosaei mei purto </span></a>
                            </div>

                            <div class="link-block">
                                <div class="default inner"><figure class="image-thumb"><img src="assets/images/resource/post-thumb-3.jpg" alt=""></figure><strong>Let’s plant 200 tree each...</strong><span class="desc">Lorem ipsum dolor sit amet et siu amet sio audiam si copiosaei mei purto </span></div>
                                <a href="#" class="alternate"><strong>Let’s plant 200 tree each...</strong><span class="desc">Lorem ipsum dolor sit amet et siu amet sio audiam si copiosaei mei purto </span></a>
                            </div>

                            <div class="link-block">
                                <div class="default inner"><figure class="image-thumb"><img src="assets/images/resource/post-thumb-1.jpg" alt=""></figure><strong>Keep your house envirome..</strong><span class="desc">Lorem ipsum dolor sit amet et siu amet sio audiam si copiosaei mei purto </span></div>
                                <a href="#" class="alternate"><strong>Keep your house envirome..</strong><span class="desc">Lorem ipsum dolor sit amet et siu amet sio audiam si copiosaei mei purto </span></a>
                            </div>

                        </div>
                    </article>
                </div>


            </div>
        </div>
    </section>

--}}

    <!--Testimonials-->
    <section class="testimonials-section" style="background-image:url('assets/images/background/testimonials-bg.jpg');">
        <div class="auto-container">

            <div class="sec-title text-center">
                <h2>{{ __('Teams') }}</h2>
                <div class="text">Với đội ngũ nhân lực chất lượng cao chúng tôi sẽ cung câp cho khách hàng những dịch vụ tốt nhất</div>
            </div>

            <!--Slider-->
            <div class="testimonials-slider testimonials-carousel">
                @foreach($teams as $key=>$team)
                <!--Slide-->
                <article class="slide-item">
                    <div class="info-box">
                        <figure class="image-box"><img src="{{ Voyager::image( $team->image ) }}" alt="{{ $team->translate()->name }}"></figure>
                        <h3>{{ $team->translate()->name }}</h3>
                        <p class="designation">{{ $team->translate()->position }}</p>
                    </div>
                    <div class="slide-text">
                        <p>“{{ $team->translate()->description }}”</p>
                    </div>
                </article>
                    @endforeach

            </div>

        </div>
    </section>



    <!--Blog News Section-->
    <section class="blog-news-section latest-news">
        <div class="auto-container">

            <div class="sec-title text-center">
                <h2><span class="normal-font theme_color">{{ __('Latest News') }}</span></h2>
                <div class="text">Lorem ipsum dolor sit amet, cum at inani interessetnisl omnium dolor amet amet qco modo cum text </div>
            </div>
            <div class="row clearfix">
            @foreach($blogs as $key=>$blog)
                <!--News Column-->
                <div class="column blog-news-column col-lg-4 col-md-6 col-sm-6 col-xs-12">
                    <article class="inner-box wow fadeInUp" data-wow-delay="0ms" data-wow-duration="1500ms">
                        <figure class="image-box">
                            <a href="{{ route('blogs.show', $blog->slug) }}"><img src="{{ Voyager::image( $blog->image ) }}" alt="{{ $blog->translate()->title }}"></a>
                            <div class="news-date">{{ $blog->created_at->format('d') }}<span class="month">{{ $blog->created_at->format('m') }}</span></div>
                        </figure>
                        <div class="content-box">
                            <h3><a href="{{ route('blogs.show', $blog->slug) }}">{{ \Illuminate\Support\Str::limit($project->translate()->title, 40,'...') }}</a></h3>
                            <div class="post-info clearfix">
                                <div class="post-author">Posted by Admin</div>
                                <div class="post-options clearfix">
                                    <a href="#" class="comments-count"><span class="icon flaticon-communication-2"></span> {{ rand(0,100) }}</a>
                                    <a href="#" class="fav-count"><span class="icon flaticon-favorite-1"></span> {{ rand(0,200) }}</a>
                                </div>
                            </div>
                            <div class="text">{{ \Illuminate\Support\Str::limit($project->translate()->title, 80,'...') }}</div>
                            <a href="{{ route('blogs.show', $blog->slug) }}" class="theme-btn read-more">{{ __('Read More') }}</a>
                        </div>
                    </article>
                </div>
            @endforeach
            </div>
        </div>
    </section>


    <!--Sponsors Section-->
    {{--<section class="sponsors-section">
        <div class="auto-container">
            <div class="slider-outer">
                <!--Sponsors Slider-->
                <ul class="sponsors-slider">
                    <li><a href="#"><img src="assets/images/clients/1.jpg" alt=""></a></li>
                    <li><a href="#"><img src="assets/images/clients/2.jpg" alt=""></a></li>
                    <li><a href="#"><img src="assets/images/clients/3.jpg" alt=""></a></li>
                    <li><a href="#"><img src="assets/images/clients/4.jpg" alt=""></a></li>
                    <li><a href="#"><img src="assets/images/clients/2.jpg" alt=""></a></li>
                </ul>
            </div>

        </div>
    </section>--}}

@endsection
