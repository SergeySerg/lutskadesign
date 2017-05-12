@extends('ws-app')
@section('content')
    <div class="portfolio-item-main" style="background-image: url('{{ asset($article->getAttributeTranslate('Картинка')) }}');">
        <div class="text">
            <h1>{{ $article->getAttributeTranslate('Название проекта') ? $article->getAttributeTranslate('Название проекта') : '' }}</h1>
            <hr>
            <p>{{ $article->getAttributeTranslate('Месторасположение') ? $article->getAttributeTranslate('Месторасположение') : '' }}, {{ $article->getAttributeTranslate('Год') ? $article->getAttributeTranslate('Год') : '' }}</p>
        </div>
        <div id="arrow-down" data-scroll-to="section-portfolio-item"><i class='fa fa-angle-down'></i></div>
{{--
        <div class="share-btn">
            <i class="fa fa-share-alt"></i>
        </div>
--}}
    </div>
    <div id="section-portfolio-item" class="section-portfolio-item">
        <div class="portfolio-item-wrap  clearfix">
            {!! $article->getTranslate('description') !!}
        </div>
        <div class="more">
            <a href="/{{ App::getLocale() }}/portfolio" class="more-portfolio-link">{{ trans('base.all_project') }}<i class='fa fa-angle-right'></i></a>
        </div>
    </div>

@endsection