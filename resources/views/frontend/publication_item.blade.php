@extends('ws-app')
@section('content')
    <div class="section-publication clearfix">
        <div id="page-publication-item" class="flex-gallery" style="display:none;">
            @forelse($article->getImages() as $imgSrc)
                <img alt="Интерьеры в стиле Luxury living" src="/{{ $imgSrc['full'] }}"
                     data-image="/{{ $imgSrc['full'] }}"
                     data-description="{{ $article->getTranslate('title') }}">
            @empty
                {{ trans('base.no_item') }}
            @endforelse

        </div>
        <div class="more">
            <a href="/{{ App::getLocale() }}/publication" class="more-portfolio-link">{{ trans('base.all_public') }}<i class='fa fa-angle-right'></i></a>
        </div>
    </div>
@endsection