@extends('ws-app')
@section('content')
    <div class="section-portfolio">
        <div class="portfolio-item-wrap clearfix">
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
        </div>
        <div class="more">
            <a href="/{{ App::getLocale() }}/myself" class="more-portfolio-link">{{ $myself->getTranslate('title') }}<i class='fa fa-angle-right'></i></a>
        </div>
    </div>
@endsection