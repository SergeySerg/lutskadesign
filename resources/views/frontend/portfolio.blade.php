@extends('ws-app')
@section('content')
    <div class="section-portfolio">
        <div class="portfolio-item-wrap clearfix">
            @if(count($portfolio) > 1)
                @forelse($portfolio as $portfolio_item)
                    <div class="portfolio-item">
                            <a href="/{{ App::getLocale() }}/portfolio/{{ $portfolio_item->id }}">
                            <div class="portfolio-item-img" style="background-image: url('{{ asset($portfolio_item->getAttributeTranslate('Картинка')) }}');">
                                <div class="portfolio-item-img-bg"></div>
                            </div>
                            <div class="portfolio-item-wrap-title">
                                <div class="portfolio-item-title">{{ $portfolio_item->getTranslate('title') }}</div>
                                <div class="portfolio-item-year">
                                    {{ $portfolio_item->getAttributeTranslate('Год')}}
                                </div>
                            </div>
                        </a>
                    </div>
                @empty
                    <div class="portfolio-item">
                        {{ trans('base.no_item') }}
                    </div>
                @endforelse
            @elseif(count($portfolio) == 1)
                <div class="portfolio-item">
                    <a href="/{{ App::getLocale() }}/portfolio/{{ $portfolio->id }}">
                        <div class="portfolio-item-img" style="background-image: url('{{ asset($portfolio->getAttributeTranslate('Картинка')) }}');">
                            <div class="portfolio-item-img-bg"></div>
                        </div>
                        <div class="portfolio-item-wrap-title">
                            <div class="portfolio-item-title">{{ $portfolio->getTranslate('title') }}</div>
                            <div class="portfolio-item-year">
                                {{ $portfolio->getAttributeTranslate('Год')}}
                            </div>
                        </div>
                    </a>
                </div>
            @else
                <div class="portfolio-item">
                    {{ trans('base.no_item') }}
                </div>
            @endif
        </div>
        <div class="more">
            <a href="/{{ App::getLocale() }}/myself" class="more-portfolio-link">{{ $myself->getTranslate('title') }}<i class='fa fa-angle-right'></i></a>
        </div>
    </div>
@endsection