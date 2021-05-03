@php
    $lang = app()->getLocale();
@endphp
<!DOCTYPE html>
<html lang="{{ $lang }}">
<head>
    <meta charset="utf-8">
    <title>{{ setting("$lang.title") }}</title>
    <!-- Stylesheets -->
    <link rel="icon" href="{{ asset('assets/images/logo-1.png') }}">
    <link rel="stylesheet" href="{{ asset('assets/css/bootstrap.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/css/revolution-slider.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/css/style.css') }}">
    <!-- Responsive -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta name="description" content="{{ setting("$lang.description") }}">
    <link rel="stylesheet" href="{{ asset('assets/css/responsive.css') }}">
    <!--[if lt IE 9]>
        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <!--[if lt IE 9]>
        <script src="{{ asset('assets/js/respond.js') }}"></script>
    <![endif]-->
    @yield('css')
</head>

<body>
<div class="page-wrapper">

    <!-- Preloader -->
    <div class="preloader"></div>

    <!-- Main Header -->
    @include('frontend.layout.partials.header')
    <!--End Main Header -->

    @yield('content')

    <!--Main Footer-->
    @include('frontend.layout.partials.footer')

</div>
<!--End pagewrapper-->


<!--Scroll to top-->
<div class="scroll-to-top scroll-to-target" data-target=".main-header"><span class="fa fa-long-arrow-up"></span></div>

<script src="{{ asset('assets/js/jquery.js') }}"></script>
<script src="{{ asset('assets/js/bootstrap.min.js') }}"></script>
<script src="{{ asset('assets/js/revolution.min.js') }}"></script>
<script src="{{ asset('assets/js/jquery.fancybox.pack.js') }}"></script>
<script src="{{ asset('assets/js/jquery.fancybox-media.js') }}"></script>
<script src="{{ asset('assets/js/owl.js') }}"></script>
<script src="{{ asset('assets/js/validate.js') }}"></script>
<script src="{{ asset('assets/js/wow.js') }}"></script>
<script src="{{ asset('assets/js/script.js') }}"></script>

@yield('js')
</body>
</html>