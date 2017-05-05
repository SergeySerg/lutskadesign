@extends('ws-app')
@section('content')
    <div class="section-publication clearfix">
        @if(count($publication) > 1)
           @forelse($publication as $publication_item)
                <div class="publication-item">
                    <a href="/{{ App::getLocale() }}/publication/{{ $publication_item->id }}" class="publication-item-link">
                        <img class="publication-item-img" src="{{ asset($publication_item->getAttributeTranslate('Картинка')) }}" alt="{{ $publication_item->getTranslate('title') }}">
                        <div class="publication-item-title">{{ $publication_item->getTranslate('title') }}</div>
                    </a>
                </div>
           @empty
                <div class="publication-item">
                    {{ trans('base.no_item') }}
                </div>
           @endforelse
        @else
            <div class="publication-item">
                <a href="/{{ App::getLocale() }}/publication/{{ $publication->id }}" class="publication-item-link">
                    <img class="publication-item-img" src="{{ asset($publication->getAttributeTranslate('Картинка')) }}" alt="{{ $publication->getTranslate('title') }}">
                    <div class="publication-item-title">{{ $publication->getTranslate('title') }}</div>
                </a>
            </div>
        @endif
    </div>
@endsection
