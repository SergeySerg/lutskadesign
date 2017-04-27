@extends('ws-app')

@section('content')

    <div class="header-section">
        <ul class="langs">
            <li class="lang-item"><a class="active" href="#">rus</a></li>
            <li class="lang-item"><a href="#">eng</a></li>
        </ul>

        <div class="owl-carousel owl-theme">
            <div class="slide" style="background-image: url('img/frontend/slide-1.jpg');">
                <div class="slide-title_wrap">
                    <h2 class="slide-title">Интерьеры в стиле Luxury living</h2>
                </div>
            </div>
            <div class="slide" style="background-image: url('img/frontend/slide-2.jpg');">
                <div class="slide-title_wrap">
                    <h2 class="slide-title">Интерьеры в стиле Luxury living</h2>
                </div>
            </div>
            <div class="slide" style="background-image: url('img/frontend/slide-3.jpg');">
                <div class="slide-title_wrap">
                    <h2 class="slide-title">Интерьеры в стиле Luxury living</h2>
                </div>
            </div>
            <div class="slide" style="background-image: url('img/frontend/slide-4.jpg');">
                <div class="slide-title_wrap">
                    <h2 class="slide-title">Неординарные и яркие идеи</h2>
                </div>
            </div>
        </div>
        <div id="arrow-down"><i class='fa fa-angle-down'></i></div>
    </div>

    <div id="about" class="about-section" style="background-image: url('img/frontend/about.jpg');">
        <div class="description-wrap">
            <h2 class="about-title"> Яна Луцкая</h2>
            <p class="subtitle">член Британского союза дизайна SBID, руководитель студии интерьерного дизайна</p>
            <hr class="hr-1">
            <div class="description">
                <p>Собственный стиль – привилегия избранных, а его поиск – интрига новых впечатлений.</p>
                <p>Я создаю особенные интерьеры для особенных клиентов. Пространство, которое соответствует Вашему представлению о luxury living. Интерьеры, которые являются продолжением Вашего стиля.</p>
                <p>Со мной Вы не требуете совершенства, а просто рассчитываете на него!</p>
            </div>
            <a href="about.html">
                <i class='fa fa-angle-right'></i>
            </a>
        </div>
    </div>

@endsection