@extends('ws-app')

@section('content')
    <div class="header-section">
        <div class="owl-carousel owl-theme">
            @foreach($slider as $slide)
                <div class="slide" style="background-image: url('{{ asset($slide->getAttributeTranslate('Слайд')) }}');">
                    <div class="slide-title_wrap">
                        <h2 class="slide-title">{{ $slide->getTranslate('title') }}</h2>
                    </div>
                </div>
            @endforeach
        </div>
        <div id="arrow-down" data-scroll-to="about"><i class='fa fa-angle-down'></i></div>
    </div>

    <div id="about" class="about-section" style="background-image: url('{{ asset($myself->getAttributeTranslate('Фото')) }}');">
        <div class="about-img-bg"></div>
        <div class="description-wrap">
            <h2 class="about-title"> {{ $myself->getTranslate('title') }}</h2>
            <div class="subtitle"> {!! $myself->getTranslate('short_description') !!}</div>
            <hr class="hr-1">
            <div class="description">
                {!! $myself->getTranslate('description') !!}
            </div>
            <a href="about.html">
                <i class='fa fa-angle-right'></i>
            </a>
        </div>
    </div>

    <div class="portfolio-section">
        <div class="static-gallery">
            <div id="page-gallery-1" class="flex-gallery" style="display:none;">
                @foreach($portfolio as $portfolio_item)
                    <a href="portfolio-item.html">
                        <img alt="{{ $portfolio_item->getTranslate('title') }}" src="{{ $portfolio_item->getAttributeTranslate('Картинка') }}"
                             data-image="{{ $portfolio_item->getAttributeTranslate('Картинка') }}"
                             data-description="2017">
                    </a>
                @endforeach
            </div>
        </div>
        <div class="more more_portfolio">
            <a href="/{{ App::getLocale() }}/portfolio" class="more-portfolio-link">{{ trans('base.portfolio') }}<i class='fa fa-angle-right'></i></a>
        </div>
    </div>


@endsection