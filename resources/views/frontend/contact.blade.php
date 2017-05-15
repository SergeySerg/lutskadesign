@extends('ws-app')

@section('content')
    <div class="contact-section clearfix">
        <div class="first-img" style="background-image: url('{{ asset('img/frontend/contact_1.jpg') }}');"></div>
        <div class="second-img" style="background-image: url('{{ asset('img/frontend/contact.png') }}');"></div>
{{--
        <div class="contact-info">
            <h4>{{ $texts->get('name_studio') }}</h4>
            <h3>{{ $texts->get('owner') }}</h3>
            <hr>
            <div class="address">{{ $texts->get('address') }}</div>
            <div class="phone">
                <a href="tel:+380508094570">{{ $texts->get('telephone 1') }}</a>
                <br>
                <a href="tel:+380966610363">{{ $texts->get('telephone 2') }}</a>
            </div>
            <div class="email">
                {{ $texts->get('email') }}
            </div>
        </div>
--}}
    </div>
@endsection