@extends('ws-app')

@section('content')

        <div class="services-section">
            @forelse($services as $service)
                <div class="service-item clearfix">
                <div class="service-item-description-wrap">
                    <h2 class="service-item-name">{{ $service->getTranslate('title') }}</h2>
                    <hr>
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
            <div class="more">
                <a href="/{{ App::getLocale() }}/contact" class="more-portfolio-link">{{ trans('base.contact') }}<i class='fa fa-angle-right'></i></a>
            </div>
        </div>
@endsection