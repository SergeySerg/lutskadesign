@extends('ws-app')
@section('content')
    <div class="about-section page-about-section" style="background-image: url('{{ asset($myself->getAttributeTranslate('Фото')) }}');">
        <div class="description-wrap">
            <h2 class="about-title"> {{ $myself->getTranslate('title') }}</h2>
            <div class="subtitle">
                {!! $myself->getTranslate('short_description') !!}
            </div>
            <hr class="hr-1">
            <div class="description">
                {!! $myself->getTranslate('description') !!}
            </div>
        </div>
    </div>
@endsection