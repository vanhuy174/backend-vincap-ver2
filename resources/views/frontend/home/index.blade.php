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


    <!--Main Features-->
    <section class="main-features">
        <div class="auto-container">
            <div class="title-box text-center">
                <h1>30000+</h1>
                <h2>People Working With US</h2>
                <div class="text">Lorem ipsum dolor sit amet, pro in harum aperiri persecuti, eu mea minim platonem, mea cetero intellegam eu. Mel ferri</div>
            </div>

            <div class="row clearfix">

                <!--Feature Column-->
                <div class="features-column col-lg-3 col-md-6 col-xs-12">
                    <article class="inner-box">
                        <div class="icon-box">
                            <div class="icon"><span class="flaticon-illumination"></span></div>
                            <h3 class="title">ECO SYSTEM</h3>
                        </div>
                    </article>
                </div>

                <!--Feature Column-->
                <div class="features-column col-lg-3 col-md-6 col-xs-12">
                    <article class="inner-box">
                        <div class="icon-box">
                            <div class="icon"><span class="flaticon-arrows-3"></span></div>
                            <h3 class="title">Recycling</h3>
                        </div>
                    </article>
                </div>

                <!--Feature Column-->
                <div class="features-column col-lg-3 col-md-6 col-xs-12">
                    <article class="inner-box">
                        <div class="icon-box">
                            <div class="icon"><span class="flaticon-nature-1"></span></div>
                            <h3 class="title">Water Refine</h3>
                        </div>
                    </article>
                </div>

                <!--Feature Column-->
                <div class="features-column col-lg-3 col-md-6 col-xs-12">
                    <article class="inner-box">
                        <div class="icon-box">
                            <div class="icon"><span class="flaticon-summer-3"></span></div>
                            <h3 class="title">Solar SYSTEM</h3>
                        </div>
                    </article>
                </div>

            </div>
        </div>
    </section>


    <!--Featured Fluid Section-->
    <section class="featured-fluid-section">


        <div class="outer clearfix">

            <!--Image Column-->
            <div class="image-column" style="background-image:url(assets/images/resource/fluid-image-1.jpg);"></div>

            <!--Text Column-->
            <article class="column text-column dark-column wow fadeInRight" data-wow-delay="0ms" data-wow-duration="1500ms" style="background-image:url(assets/images/resource/fluid-image-2.jpg);">

                <div class="content-box pull-left">
                    <h2>Join <span class="theme_color">our event</span> &amp; helping us by donation</h2>
                    <div class="title-text">Lorem ipsum dolor <a href="#"><strong>some link</strong></a> sit amet, cum at inani interesset </div>
                    <div class="text">Lorem ipsum dolor sit amet, eu qui modo expetendis reformidans ex sit set appetere sententiae seo eum in simul homero. Duo consul lorem probatus no qu alterum sit at no simple dummy.</div>
                    <a href="#" class="theme-btn btn-style-one">Join Now</a>
                    <a href="#" class="theme-btn btn-style-two">View details</a>
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
                    <h2>RECENT <span class="normal-font theme_color">Project</span></h2>
                    <div class="text">Lorem ipsum dolor sit amet, cum at inani interesset, nisl fugit munere ad mel,vix an omnium dolor amet </div>
                </div>
                <div class="pull-right padd-top-30">
                    <a href="#" class="theme-btn btn-style-three">See All Projects</a>
                </div>
            </div>
            <div class="row clearfix">

                <!--Default Featured Column-->
                <div class="column default-featured-column col-md-3 col-sm-6 col-xs-12">
                    <article class="inner-box wow fadeInLeft" data-wow-delay="0ms" data-wow-duration="1500ms">
                        <figure class="image-box">
                            <a href="#"><img src="assets/images/resource/featured-image-1.jpg" alt=""></a>
                        </figure>
                        <div class="content-box">
                            <h3><a href="#">Project Name</a></h3>
                            <div class="column-info">Environment, Go Green Company</div>
                            <div class="text">Lorem ipsum dolor sit amet et siu amet amet audiam copiosaei mei purto dolor timeam mea ne.</div>
                            <a href="#" class="theme-btn btn-style-three">Learn More</a>
                        </div>
                    </article>
                </div>

                <!--Default Featured Column-->
                <div class="column default-featured-column col-md-3 col-sm-6 col-xs-12">
                    <article class="inner-box wow fadeInLeft" data-wow-delay="300ms" data-wow-duration="1500ms">
                        <figure class="image-box">
                            <a href="#"><img src="assets/images/resource/featured-image-2.jpg" alt=""></a>
                        </figure>
                        <div class="content-box">
                            <h3><a href="#">Project Name</a></h3>
                            <div class="column-info">Environment, Go Green Company</div>
                            <div class="text">Lorem ipsum dolor sit amet et siu amet amet audiam copiosaei mei purto dolor timeam mea ne.</div>
                            <a href="#" class="theme-btn btn-style-three">Learn More</a>
                        </div>
                    </article>
                </div>

                <!--Default Featured Column-->
                <div class="column default-featured-column col-md-3 col-sm-6 col-xs-12">
                    <article class="inner-box wow fadeInLeft" data-wow-delay="600ms" data-wow-duration="1500ms">
                        <figure class="image-box">
                            <a href="#"><img src="assets/images/resource/featured-image-3.jpg" alt=""></a>
                        </figure>
                        <div class="content-box">
                            <h3><a href="#">Project Name</a></h3>
                            <div class="column-info">Environment, Go Green Company</div>
                            <div class="text">Lorem ipsum dolor sit amet et siu amet amet audiam copiosaei mei purto dolor timeam mea ne.</div>
                            <a href="#" class="theme-btn btn-style-three">Learn More</a>
                        </div>
                    </article>
                </div>

                <!--Default Featured Column-->
                <div class="column default-featured-column col-md-3 col-sm-6 col-xs-12">
                    <article class="inner-box wow fadeInLeft" data-wow-delay="900ms" data-wow-duration="1500ms">
                        <figure class="image-box">
                            <a href="#"><img src="assets/images/resource/featured-image-4.jpg" alt=""></a>
                        </figure>
                        <div class="content-box">
                            <h3><a href="#">Project Name</a></h3>
                            <div class="column-info">Environment, Go Green Company</div>
                            <div class="text">Lorem ipsum dolor sit amet et siu amet amet audiam copiosaei mei purto dolor timeam mea ne.</div>
                            <a href="#" class="theme-btn btn-style-three">Learn More</a>
                        </div>
                    </article>
                </div>

            </div>
        </div>
    </section>


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


    <!--Testimonials-->
    <section class="testimonials-section" style="background-image:url('assets/images/background/testimonials-bg.jpg');">
        <div class="auto-container">

            <div class="sec-title text-center">
                <h2>Testi<span class="normal-font theme_color">Monials</span></h2>
                <div class="text">Lorem ipsum dolor sit amet, cum at inani interes setnisl omnium dolor amet amet qco modo cum text </div>
            </div>

            <!--Slider-->
            <div class="testimonials-slider testimonials-carousel">

                <!--Slide-->
                <article class="slide-item">

                    <div class="info-box">
                        <figure class="image-box"><img src="assets/images/resource/testi-image-1.jpg" alt=""></figure>
                        <h3>Mark Pine</h3>
                        <p class="designation">Rome, Italy</p>
                    </div>

                    <div class="slide-text">
                        <p>“But I must explain to you the how all this mistaken idea of thealorem qco denouncing pleasure”</p>
                    </div>
                </article>

                <!--Slide-->
                <article class="slide-item">

                    <div class="info-box">
                        <figure class="image-box"><img src="assets/images/resource/testi-image-2.jpg" alt=""></figure>
                        <h3>Mark Pine</h3>
                        <p class="designation">Rome, Italy</p>
                    </div>

                    <div class="slide-text">
                        <p>“But I must explain to you the how all this mistaken idea of thealorem qco denouncing pleasure”</p>
                    </div>
                </article>

                <!--Slide-->
                <article class="slide-item">

                    <div class="info-box">
                        <figure class="image-box"><img src="assets/images/resource/testi-image-3.jpg" alt=""></figure>
                        <h3>Mark Pine</h3>
                        <p class="designation">Rome, Italy</p>
                    </div>

                    <div class="slide-text">
                        <p>“But I must explain to you the how all this mistaken idea of thealorem qco denouncing pleasure”</p>
                    </div>
                </article>


            </div>

        </div>
    </section>



    <!--Blog News Section-->
    <section class="blog-news-section latest-news">
        <div class="auto-container">

            <div class="sec-title text-center">
                <h2>Latest <span class="normal-font theme_color">News</span></h2>
                <div class="text">Lorem ipsum dolor sit amet, cum at inani interessetnisl omnium dolor amet amet qco modo cum text </div>
            </div>
            <div class="row clearfix">

                <!--News Column-->
                <div class="column blog-news-column col-lg-4 col-md-6 col-sm-6 col-xs-12">
                    <article class="inner-box wow fadeInUp" data-wow-delay="0ms" data-wow-duration="1500ms">
                        <figure class="image-box">
                            <a href="#"><img src="assets/images/resource/blog-image-1.jpg" alt=""></a>
                            <div class="news-date">28<span class="month">OCT</span></div>
                        </figure>
                        <div class="content-box">
                            <h3><a href="#">Melting ice</a></h3>
                            <div class="post-info clearfix">
                                <div class="post-author">Posted by Rashed Kabir</div>
                                <div class="post-options clearfix">
                                    <a href="#" class="comments-count"><span class="icon flaticon-communication-2"></span> 6</a>
                                    <a href="#" class="fav-count"><span class="icon flaticon-favorite-1"></span> 14</a>
                                </div>
                            </div>
                            <div class="text">Lorem ipsum dolor sit amet, consectetur adipi elit sed do eiusmod tempor incididunt ut modo labore et dolore magna aliqua veniam...</div>
                            <a href="#" class="theme-btn read-more">Read More</a>
                        </div>
                    </article>
                </div>

                <!--News Column-->
                <div class="column blog-news-column col-lg-4 col-md-6 col-sm-6 col-xs-12">
                    <article class="inner-box wow fadeInUp" data-wow-delay="300ms" data-wow-duration="1500ms">
                        <figure class="image-box">
                            <a href="#"><img src="assets/images/resource/blog-image-2.jpg" alt=""></a>
                            <div class="news-date">22<span class="month">APR</span></div>
                        </figure>
                        <div class="content-box">
                            <h3><a href="#">Deforestation is the threat</a></h3>
                            <div class="post-info clearfix">
                                <div class="post-author">Posted by Rashed Kabir</div>
                                <div class="post-options clearfix">
                                    <a href="#" class="comments-count"><span class="icon flaticon-communication-2"></span> 6</a>
                                    <a href="#" class="fav-count"><span class="icon flaticon-favorite-1"></span> 14</a>
                                </div>
                            </div>
                            <div class="text">Lorem ipsum dolor sit amet, consectetur adipi elit sed do eiusmod tempor incididunt ut modo labore et dolore magna aliqua veniam...</div>
                            <a href="#" class="theme-btn read-more">Read More</a>
                        </div>
                    </article>
                </div>

                <!--News Column-->
                <div class="column blog-news-column col-lg-4 col-md-6 col-sm-6 col-xs-12">
                    <article class="inner-box wow fadeInUp" data-wow-delay="600ms" data-wow-duration="1500ms">
                        <figure class="image-box">
                            <a href="#"><img src="assets/images/resource/blog-image-3.jpg" alt=""></a>
                            <div class="news-date">23<span class="month">MAR</span></div>
                        </figure>
                        <div class="content-box">
                            <h3><a href="#">Save the animals</a></h3>
                            <div class="post-info clearfix">
                                <div class="post-author">Posted by Rashed Kabir</div>
                                <div class="post-options clearfix">
                                    <a href="#" class="comments-count"><span class="icon flaticon-communication-2"></span> 6</a>
                                    <a href="#" class="fav-count"><span class="icon flaticon-favorite-1"></span> 14</a>
                                </div>
                            </div>
                            <div class="text">Lorem ipsum dolor sit amet, consectetur adipi elit sed do eiusmod tempor incididunt ut modo labore et dolore magna aliqua veniam...</div>
                            <a href="#" class="theme-btn read-more">Read More</a>
                        </div>
                    </article>
                </div>


            </div>
        </div>
    </section>


    <!--Sponsors Section-->
    <section class="sponsors-section">
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
    </section>

@endsection