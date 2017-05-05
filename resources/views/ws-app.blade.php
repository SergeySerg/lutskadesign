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
	<a href="/{{App::getLocale()}}"><img src="{{ asset('img/frontend/logo.png') }}" alt="{{ $myself->getTranslate('title') }}" class="logo"></a>
	<ul class="menu">
		<li class="menu-item"><a @if(!$type) class="active" @endif href="/{{App::getLocale()}}">{{ trans('base.main') }}</a></li>
		<li class="menu-item"><a @if($type == 'myself') class="active" @endif href="/{{ App::getLocale() }}/myself">{{ $myself->getTranslate('title') }}</a></li>
		<li class="menu-item"><a @if($type == 'portfolio') class="active" @endif href="/{{ App::getLocale() }}/portfolio">{{ trans('base.portfolio') }}</a></li>
		<li class="menu-item"><a @if($type == 'services') class="active" @endif href="/{{ App::getLocale() }}/services">{{ trans('base.services') }}</a></li>
		<li class="menu-item"><a @if($type == 'publication') class="active" @endif href="/{{ App::getLocale() }}/publication">{{ trans('base.publication') }}</a></li>
		<li class="menu-item"><a @if($type == 'calendar') class="active" @endif href="/{{ App::getLocale() }}/calendar">{{ trans('base.calendar') }}</a></li>
		<li class="menu-item"><a @if($type == 'contact') class="active" @endif href="/{{ App::getLocale() }}/contact">{{ trans('base.contact') }}</a></li>
	</ul>
	<ul class="phones">
		<li class="phones-item"><a href="tel:{{ $texts->get('telephone 1') }}">{{ $texts->get('telephone 1') }}</a></li>
		<li class="phones-item"><a href="tel:{{ $texts->get('telephone 2') }}">{{ $texts->get('telephone 2') }}</a></li>
	</ul>
</div>
<ul class="langs">
	@foreach($langs as $lang)
		<li class="lang-item"> <a @if($lang->lang == App::getLocale()) class="active" @endif href="{{str_replace(url(App::getLocale()), url($lang->lang), Request::url())}}">{{$lang->lang}}</a></li>
	@endforeach
</ul>

@yield('content')

<footer class="footer">
	<div class="wrapper">
		<div class="news">
			<ul class="news-list">
				@if(count($calendar) > 1)
					@foreach($calendar as $calendar_item)
						<li><a href="/{{ App::getLocale() }}/calendar/{{ $calendar_item->id }}">{{ $calendar_item->getTranslate('title') }}</a></li>
					@endforeach
				@else
					<li><a href="/{{ App::getLocale() }}/calendar/{{ $calendar->id }}">{{ $calendar->getTranslate('title') }}</a></li>
				@endif
			</ul>
		</div>
		<div class="contacts">
			<ul>
				<li><a href="#"><i class="fa fa-map-marker"></i>{{ $texts->get('address') }}</a></li>
				<li><a href="mailto:{{ $texts->get('email') }}"><i class="fa fa-envelope-o"></i>{{ $texts->get('email') }}</a></li>
				<li>©  {{ $myself->getTranslate('title') }}, 2017 г</li>
			</ul>
		</div>
		<div class="center">
			<div class="phone"><a href="{{ $texts->get('telephone 1') }}">{{ $texts->get('telephone 1') }}</a></div>
			<div class="social clearfix">
				@foreach($social as $social_item)
					<a href="{{ $social_item->getAttributeTranslate('Ссылка') ? $social_item->getAttributeTranslate('Ссылка') : 'https://www.facebook.com/' }}">{!! $social_item->getAttributeTranslate('Иконка') !!}</a>
				@endforeach
			</div>
		</div>
	</div>
</footer>

{{--<div id="callback" style="display: none;">
	<h1 class="title section-title section-title_service-form">{{ trans('base.callback_ring') }}</h1>
	<form action="" class="callback" method="post">
		<input type="text" name="name" placeholder="{{ trans('base.fio') }}">
		<input type="number" name="phone" placeholder="{{ trans('base.tel') }}">
		<textarea rows="8" name="text" placeholder="{{ trans('base.message') }}"></textarea>
		<input type="hidden" name="_token" value="{{csrf_token()}}"/>
		<button type="submit" id="submit-send" class="btn btn__blue">{{ trans('base.send') }}</button>
	</form>
</div>--}}

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
	<script src="{{ asset('/libs/owl-carousel-2/owl.carousel.min.js') }}"></script>
	<script src="{{ asset('/libs/unitegallery/dist/js/unitegallery.js') }}"></script>
	<script src="{{ asset('/libs/unitegallery/dist/themes/tiles/ug-theme-tiles.js') }}"></script>
	<script src="{{ asset('/js/frontend/masonry.pkgd.min.js') }}?ver={{ $version }}"></script>
	<script src="{{ asset('/js/frontend/common.js') }}?ver={{ $version }}"></script>





{{-- JS --}}
</body>
</html>