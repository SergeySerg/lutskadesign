<!DOCTYPE html>
<html lang="{{ App::getLocale() }}">
<head>
	<meta charset="utf-8">
	<title>	@if(isset($static_page)){{ $static_page->getTranslate('meta_title') }}  @elseif(isset($seo)) {{ $seo->getTranslate('meta_title') }} @endif</title>
	<meta name="description" content="@if(isset($static_page)) {{ $static_page->getTranslate('meta_description') }} @elseif(isset($seo)){{ $seo->getTranslate('meta_description') }}@endif">
	<meta name="keywords" content="@if(isset($static_page)) {{ $static_page->getTranslate('meta_keywords') }} @elseif(isset($seo)) {{ $seo->getTranslate('meta_keywords') }}@endif">

	{{-- CSS --}}
	<meta name="viewport" content="width=device-width, initial-scale=1.0">


	<link rel="shortcut icon" href="{{ asset('/img/favicon/favicon.ico') }}" type="image/x-icon">
	<link rel="apple-touch-icon" href="{{ asset('/img/favicon/apple-touch-icon.png') }}">
	<link rel="apple-touch-icon" sizes="72x72" href="{{ asset('img/favicon/apple-touch-icon-72x72.png') }}">
	<link rel="apple-touch-icon" sizes="114x114" href="{{ asset('/img/favicon/apple-touch-icon-114x114.png') }}">


	<link href="{{ asset('/libs/normalize.css/normalize.css') }}" rel="stylesheet" type="text/css" media="all">
	<link href="{{ asset('/libs/bootstrap-grid-only/css/grid12.css') }}" rel="stylesheet" type="text/css" media="all" />
	<link href="{{ asset('css/frontend/animate.css') }}" rel="stylesheet" type="text/css" media="all" />
	<link href="{{ asset('libs/owl-carousel-2/assets/owl.carousel.css') }}" rel="stylesheet" type="text/css" media="all" />
	<link href="{{ asset('/libs/owl-carousel/owl.theme.css') }}" rel="stylesheet" type="text/css" media="all" />
	<link href="{{ asset('/css/frontend/fonts.css') }}" rel="stylesheet" type="text/css" media="all" />
	<link href="{{ asset('/css/frontend/font-awesome.min.css') }}" rel="stylesheet" type="text/css" media="all" />
	<link href="{{ asset('/libs/unitegallery/dist/css/unite-gallery.css') }}" rel="stylesheet" type="text/css" media="all" />
	<link href="{{ asset('/css/frontend/main.css') }}?ver={{ $version }}" rel="stylesheet" type="text/css" media="all" />
	<link rel="stylesheet" href="{{ asset('/css/plugins/sweetalert.css') }}">
	{{-- /CSS --}}
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
</head>

<body>

<div class="sidebar-menu">
	<a href="index.html"><img src="img/frontend/logo.png" alt="Яна Луцкая" class="logo"></a>
	<ul class="menu">
		<li class="menu-item"><a class="active" href="index.html">главная</a></li>
		<li class="menu-item"><a href="about.html">яна луцкая</a></li>
		<li class="menu-item"><a href="portfolio.html">портфолио</a></li>
		<li class="menu-item"><a href="services.html">услуги</a></li>
		<li class="menu-item"><a href="publication.html">публикации</a></li>
		<li class="menu-item"><a href="calendar.html">календарь мероприятий</a></li>
		<li class="menu-item"><a href="contact.html">контакты</a></li>
	</ul>
	<ul class="phones">
		<li class="phones-item"><a href="tel:+380508094570">+380508094570</a></li>
		<li class="phones-item"><a href="tel:+380966610363">+380966610363</a></li>
	</ul>
</div>

@yield('content')

<footer class="footer">
	<div class="wrapper">
		<div class="news">
			<ul class="news-list">
				<li><a href="#">Время для себя: встреча с известным диетологом и тренером Линой Вертагус</a></li>
				<li><a href="#">Время для себя: встреча с известным диетологом и тренером Линой Вертагус</a></li>
				<li><a href="#">Время для себя: встреча с известным диетологом и тренером Линой Вертагус</a></li>
			</ul>
		</div>
		<div class="contacts">
			<ul>
				<li><a href="#"><i class="fa fa-map-marker"></i>Киев, Ул. Болсуновская, 2</a></li>
				<li><a href="mailto:mail@lutskaya.com"><i class="fa fa-envelope-o"></i>mail@lutskaya.com</a></li>
				<li>© Яна Луцкая, 2017 г</li>
			</ul>
		</div>
		<div class="center">
			<div class="phone"><a href="tel:+380508094570">+380508094570</a></div>
			<div class="social clearfix">
				<a href="#"><i class="fa fa-facebook"></i></a>
				<a href="#"><i class="fa fa-vk"></i></a>
				<a href="#"><i class="fa fa-instagram"></i></a>
			</div>
		</div>
	</div>
</footer>

<div id="callback" style="display: none;">
	<h1 class="title section-title section-title_service-form">{{ trans('base.callback_ring') }}</h1>
	<form action="" class="callback" method="post">
		<input type="text" name="name" placeholder="{{ trans('base.fio') }}">
		<input type="number" name="phone" placeholder="{{ trans('base.tel') }}">
		<textarea rows="8" name="text" placeholder="{{ trans('base.message') }}"></textarea>
		<input type="hidden" name="_token" value="{{csrf_token()}}"/>
		<button type="submit" id="submit-send" class="btn btn__blue">{{ trans('base.send') }}</button>
	</form>
</div>

<div id="overlay"></div><!-- Пoдлoжкa -->
<input type="hidden" name="url" value="/{{ App::getLocale() }}/contact"/>
{{--Файл переводов--}}
<script>
	var trans = {
		'base.success': '{{ trans('base.success_send_contact') }}',
		'base.error': '{{ trans('base.error_send_contact') }}',
	};
</script>
{{--Файл переводов--}}
{{-- JS --}}
	<script src="{{ asset('/libs/jquery/dist/jquery.min.js') }}"></script>
	<script src="{{ asset('/js/plugins/sweetalert.min.js') }}"></script>
{{--
	<script src="{{ asset('/js/frontend/jquery-3.1.1.min.js') }}"></script>
--}}
	<script src="{{ asset('/libs/unitegallery/dist/js/unitegallery.js') }}"></script>
	<script src="{{ asset('/libs/unitegallery/dist/themes/tilesgrid/ug-theme-tilesgrid.js') }}"></script>
	<script src="{{ asset('/js/frontend/common.js') }}?ver={{ $version }}"></script>
	<script src="{{ asset('/js/frontend/masonry.pkgd.min.js') }}?ver={{ $version }}"></script>
	<script src="{{ asset('/libs/owl-carousel/owl.carousel.min.js') }}"></script>


{{-- JS --}}
</body>
</html>