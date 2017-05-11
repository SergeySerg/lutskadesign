@extends('ws-app')
@section('content')
    <div class="calendar-section">
        <div class="calendar-section-wrap">
            @if(count($calendar) > 1)
                @forelse($calendar as $calendar_item)
                    <div class="calendar-item">
                        <a href="/{{ App::getLocale() }}/calendar/{{ $calendar_item->id }}"><img class="calendar-item-img" src="{{ asset($calendar_item->getAttributeTranslate('Картинка')) }}" alt=""><div class="bg-img"></div></a>
                        <div class="calendar-item-wrap-text">
                            <h2 class="calendar-item-title"><a href="/{{ App::getLocale() }}/calendar/{{ $calendar_item->id }}">{{ $calendar_item->getTranslate('title') }}</a></h2>
                                {!! $calendar_item->getTranslate('short-description') !!}
                            <div class="calendar-item-date">{{ $calendar_item->date }}</div>
                        </div>
                    </div>
                @empty
                    <div class="calendar-item">
                        {{ trans('base.no_item') }}
                    </div>
                @endforelse
            @else
                <div class="calendar-item">
                    <a href="/{{ App::getLocale() }}/calendar/{{ $calendar->id }}"><img class="calendar-item-img" src="{{ asset($calendar->getAttributeTranslate('Картинка')) }}" alt=""><div class="bg-img"></div></a>
                    <div class="calendar-item-wrap-text">
                        <h2 class="calendar-item-title"><a href="/{{ App::getLocale() }}/calendar/{{ $calendar->id }}">{{ $calendar->getTranslate('title') }}</a></h2>
                        {!! $calendar->getTranslate('short_description') !!}
                        <div class="calendar-item-date">{{ $calendar->date }}</div>
                    </div>
                </div>
            @endif
        </div>
        <div class="more">
            <a href="/{{ App::getLocale() }}/portfolio" class="more-portfolio-link">{{ trans('base.portfolio') }}<i class='fa fa-angle-right'></i></a>
        </div>
    </div>

@endsection