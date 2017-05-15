@extends('ws-app')

@section('content')
    
    <div class="header-section">
        <div class="owl-carousel owl-theme">
            @if( count($slider) !== 0 AND $categories_data['slider']->active == 1)
                @if(count($slider) > 1)
                    @foreach($slider as $slide)
                        <div class="slide" style="background-image: url('{{ asset($slide->getAttributeTranslate('Слайд')) }}');">
{{--
                            <div class="slide-title_wrap">
                                <h2 class="slide-title">{{ $slide->getTranslate('title') }}</h2>
                            </div>
--}}
                        </div>
                    @endforeach
                @else
                    <div class="slide" style="background-image: url('{{ asset($slider->getAttributeTranslate('Слайд')) }}');">
{{--
                        <div class="slide-title_wrap">
                            <h2 class="slide-title">{{ $slider->getTranslate('title') }}</h2>
                        </div>
--}}
                    </div>
                @endif
            @endif
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
                <a href="/{{ App::getLocale() }}/myself">
                    <i class='fa fa-angle-right'></i>
                </a>
            </div>
            <a href="/{{ App::getLocale() }}/myself">
                <i class='fa fa-angle-right'></i>
            </a>
        </div>
    </div>

    <div class="portfolio-section">
        <div class="static-gallery">
            <div id="page-gallery-1" class="flex-gallery" style="display:none;">
                @if( count($portfolio) !== 0 AND $categories_data['portfolio']->active == 1)
                    @if(count($portfolio) > 1)
                        @foreach($portfolio as $portfolio_item)
                            <a href="/{{ App::getLocale() }}/portfolio/{{ $portfolio_item->id }}">
                                <img alt="{{ $portfolio_item->getTranslate('title') }}" src="{{ $portfolio_item->getAttributeTranslate('Картинка') }}"
                                     data-image="{{ $portfolio_item->getAttributeTranslate('Картинка') }}"
                                     data-description="2017">
                            </a>
                        @endforeach
                    @else
                        <a href="/{{ App::getLocale() }}/portfolio/{{ $portfolio->id }}">
                            <img alt="{{ $portfolio->getTranslate('title') }}" src="{{ $portfolio->getAttributeTranslate('Картинка') }}"
                                 data-image="{{ $portfolio->getAttributeTranslate('Картинка') }}"
                                 data-description="2017">
                        </a>
                    @endif
                @endif
            </div>
        </div>
        <div class="more more_portfolio">
            <a href="/{{ App::getLocale() }}/portfolio" class="more-portfolio-link">{{ trans('base.portfolio') }}<i class='fa fa-angle-right'></i></a>
        </div>
    </div>

@endsection