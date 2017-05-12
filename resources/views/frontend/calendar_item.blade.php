@extends('ws-app')
@section('content')
    <div class="calendar-item-page-section">
        <div class="calendar-item-page-wrap">
            <div class="calendar-item-page-img" style="background-image: url('{{ asset($article->getAttributeTranslate('Картинка')) }}');">
                <div class="share42init"
                     data-url="{{Request::url()}}"
                     data-title="{{ $article->getTranslate('title') }}"
                     data-image="{{ asset($article->getAttributeTranslate('Картинка')) }}"
                     data-description="{!! $article->getTranslate('description') !!}">
                </div>
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
                <span class="text">{{ trans('base.share') }}:</span>
                <div class="share42init"
                     data-url="{{Request::url()}}"
                     data-title="{{ $article->getTranslate('title') }}"
                     data-image="{{ asset($article->getAttributeTranslate('Картинка')) }}"
                     data-description="{!! $article->getTranslate('description') !!}"></div>
            </div>
            <div class="more more-calendar">
                <a href="/{{ App::getLocale() }}/calendar" class="more-portfolio-link">{{ trans('base.all_calendar') }}<i class='fa fa-angle-right'></i></a>
            </div>
        </div>
    </div>
    <script type="text/javascript" src="{{ asset('/libs/share42/share42.js') }}"></script>
@endsection