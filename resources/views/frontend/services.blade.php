@extends('ws-app')

@section('content')

    <div class="services-section">
        @if(count($services) > 1)
            @forelse($services as $service)
                <div class="service-item clearfix">
                    <div class="service-item-description-wrap">
                        <h2 class="service-item-name">{{ $service->getTranslate('title') }}</h2>
                        <div class="service-item-description">
                            <h3>{{ trans('base.services_desc') }}</h3>
                                {!! $service->getAttributeTranslate('Описание услуги') ? $service->getAttributeTranslate('Описание услуги') : '' !!}
                            <h3>{{ trans('base.termines') }}</h3>
                            {!! $service->getAttributeTranslate('Время исполнения') ? $service->getAttributeTranslate('Время исполнения') : '' !!}
                        </div>
                        <a href="#" class="services-content-link" data-services-id="services-{{ $service->id }}">{{ trans('base.content_services') }}</a>
                    </div>
                    <div class="service-item-img" style="background-image: url('{{ asset($service->getAttributeTranslate('Картинка')) }}');">
                        <div id="services-{{ $service->id }}" class="services-content">
                            {!! $service->getAttributeTranslate('Содержание услуги') ? $service->getAttributeTranslate('Содержание услуги') : '' !!}
                        </div>
                    </div>
                </div>
            @empty
                <div class="service-item clearfix">
                    {{ trans('base.no_item') }}
                </div>
            @endforelse
        @elseif(count($services) == 1)
            <div class="service-item clearfix">
                <div class="service-item-description-wrap">
                    <h2 class="service-item-name">{{ $services->getTranslate('title') }}</h2>
                    <div class="service-item-description">
                        <h3>{{ trans('base.services_desc') }}</h3>
                        {!! $services->getAttributeTranslate('Описание услуги') ? $services->getAttributeTranslate('Описание услуги') : '' !!}
                        <h3>{{ trans('base.termines') }}</h3>
                        {!! $services->getAttributeTranslate('Время исполнения') ? $services->getAttributeTranslate('Время исполнения') : '' !!}
                    </div>
                    <a href="#" class="services-content-link" data-services-id="services-{{ $services->id }}">{{ trans('base.content_services') }}</a>
                </div>
                <div class="service-item-img" style="background-image: url('{{ asset($services->getAttributeTranslate('Картинка')) }}');">
                    <div id="services-{{ $services->id }}" class="services-content">
                        {!! $services->getAttributeTranslate('Содержание услуги') ? $services->getAttributeTranslate('Содержание услуги') : '' !!}
                    </div>
                </div>
            </div>
        @else
            <div class="service-item clearfix">
                {{ trans('base.no_item') }}
            </div>
        @endif
        <div class="more">
            <a href="/{{ App::getLocale() }}/contact" class="more-portfolio-link">{{ trans('base.contact') }}<i class='fa fa-angle-right'></i></a>
        </div>
    </div>

@endsection