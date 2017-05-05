@extends('ws-app')
@section('content')
    <div class="calendar-item-page-section">
        <div class="calendar-item-page-wrap">
            <div class="calendar-item-page-img" style="background-image: url('{{ asset($article->getAttributeTranslate('Картинка')) }}');">
                @section('share')
                    <div class="social-share social-share-on-img">
                        <a href="#"><i class="fa fa-facebook"></i></a>
                        <a href="#"><i class="fa fa-vk"></i></a>
                        <a href="#"><i class="fa fa-instagram"></i></a>
                        <a href="#"><i class="fa fa-pinterest-p"></i></a>
                    </div>
                @show
            </div>
            <h1 class="calendar-item-page-title">{{ $article->getTranslate('title') }}</h1>
            <div class="calendar-item-page-description">
                {!! $article->getTranslate('description') !!}
            </div>
            <div class="owl-carousel owl-theme">
                @foreach($article->getImages() as $imgSrc)
                    <div class="calendar-item-slide" style="background-image: url('{{ asset($imgSrc['full']) }}');"></div>
                @endforeach
            </div>
            <div class="calendar-item-page-wrap-footer">
                <div class="social-share clearfix">
                    <span class="text">{{ trans('base.share') }}:</span>
                    <a href="#"><i class="fa fa-facebook"></i></a>
                    <a href="#"><i class="fa fa-vk"></i></a>
                    <a href="#"><i class="fa fa-instagram"></i></a>
                    <a href="#"><i class="fa fa-pinterest-p"></i></a>
                </div>
            </div>
            <div class="more more-calendar">
                <a href="/{{ App::getLocale() }}/calendar" class="more-portfolio-link">{{ trans('base.all_calendar') }}<i class='fa fa-angle-right'></i></a>
            </div>
        </div>

    </div>
@endsection