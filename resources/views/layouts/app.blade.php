<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>

    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.bunny.net">
    <link href="https://fonts.bunny.net/css?family=Nunito" rel="stylesheet">
    <link rel="stylesheet" href="{{asset('theme/html/style.css')}}" />
    <link rel="stylesheet" href="{{asset('theme/html/taikhoan.css')}}">
    <link rel="stylesheet" href="{{asset('theme/html/danhmuc.css')}}">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <!-- Scripts -->
    @vite(['resources/sass/app.scss', 'resources/js/app.js'])
</head>

<body>
    <style>
        .thong-tin li {
            text-decoration: none;
            list-style: none;
        }

        .thong-tin {
            display: flex;
            margin-top: 3%;
        }

        .thong-tin li a {
            text-decoration: none;
            list-style: none;
        }
    </style>
    <header class="header">
        <div class="khung-1">
            <div class="header-1">
                <div class="topbar-trai">
                    <i class="fa-solid fa-phone"></i>
                    <a class="topbar-trai-sdt" href="#">0369306545/ 0904215169 |</a>
                    <i class="fa-solid fa-envelope"></i>
                </div>
                <div class="topbar-phai">
                    <div class="thong-tin" id="navbarSupportedContent">

                        <!-- Authentication Links -->

                        @guest
                        @if (Route::has('login'))
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
                        </li>
                        @endif

                        @if (Route::has('register'))
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
                        </li>
                        @endif
                        @else
                        <li class="nav-item dropdown">
                            <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                {{ Auth::user()->name }}
                            </a>

                            <div class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                                @if (Auth::user()->is_active==0)
                                <a href="{{route('admin.dashboard')}}">Admin</a>
                                @endif
                                <a class="dropdown-item" href="{{ route('logout') }}" onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                    {{ __('Logout') }}
                                </a>

                                <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                    @csrf
                                </form>
                            </div>
                        </li>
                        @endguest


                    </div>
                    <div class="form-header-input">
                        <input type="text" placeholder="Tìm kiếm sản phẩm tại đây" />
                        <i class="fa-solid fa-magnifying-glass" style="color: gray"></i>
                    </div>
                </div>

            </div>
        </div>
        <div class="khung-2">
            <div class="header-2">
                <div class="header2-trai">
                    <a href="{{ url('/') }}">
                        <img src="https://ageofsigmar.com/wp-content/themes/gw-age-of-sigmar/assets/images/aos-logo.png" alt="">
                    </a>
                </div>
                <div class="header2-phai">
                    <div class="thongtin-cuahang">
                        <a class="diachi-cuahang" href="">
                            <span class="thongtin-cuahang-icon">
                                <i class="fa-solid fa-clock-rotate-left"></i>
                            </span>
                            <span class="thongtin-cuahang-text">
                                <b>Cửa hàng</b>
                                HCM - Ha Noi
                                <br>
                                Da Nang - Can Tho - Hai Phong
                            </span>
                        </a>
                        <a class="nhapkhau-cuahang" href="">
                            <span class="thongtin-cuahang-icon">
                                <i class="fa-solid fa-truck-pickup"></i>
                            </span>
                            <span class="thongtin-cuahang-text">
                                <b>Nhập khẩu trực tiếp</b>
                                <br>
                                Hàng chính hãng
                            </span>
                        </a>
                    </div>
                    <div class="giohang">
                        <i class="fa-solid fa-cart-shopping"></i>
                        <span class="giohang-soluong">
                            <i>2</i>
                        </span>
                        <div class="giohang-nav">
                            <div class="giohang-text">
                                GIỎ HÀNG
                            </div>
                            <div class="baotrum-giohang-item">
                                @if (Auth::user())
                                @foreach ($productVariants as $item)
                                <div class="giohang-item">
                                    <div class="giohang-item-img">
                                        <a href="">
                                            @if (str_contains($item->product_img_thumb, 'products/'))
                                            <img src="{{Storage::url($item->product_img_thumb)}}" alt="" class="mw-100 mh-100">
                                            @else
                                            <img src="{{$item->img_thumb}}" alt="" class="mw-100 mh-100">
                                            @endif
                                        </a>
                                    </div>
                                    <div class="giohang-item-thongtin">
                                        <div class="giohang-ten">
                                            <a href="">
                                                {{$item->product_name}}
                                            </a>
                                        </div>
                                        <div class="giohang-gia">
                                            {{$item->product_price_sale ?: $item->product_price}}
                                        </div>
                                    </div>
                                    <div class="giohang-item-soluong">
                                        x {{$item->quantity}}
                                    </div>
                                </div>
                                @endforeach

                            </div>
                            <div class="giohang-footer">
                                <h3>{{$totalAmount}}$</h3>
                                <a href="{{url('cart/list')}}">XEM GIỎ HÀNG</a>
                            </div>
                            @endif
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="khung-3">
            <ul class="header-3">
                <li><a href="{{url('/')}}">Trang chủ</a></li>
                <li>
                    <a href="{{route('danh-muc')}}">Quần áo nam</a>
                    <ul class="luachon-protein">
                        <li><a href="../danhmucsp2/index.html">Whey Protein</a></li>
                        <li><a href="">Protein Isolate</a></li>
                        <li><a href="">Naturally Protein</a></li>
                        <li><a href="">Casein</a></li>
                    </ul>
                </li>
                <li>
                    <a href="">Quần áo nữ</a>
                    <ul class="luachon-sua">
                        <li><a href="../danh-muc-sp/index.html">Tăng Cân Nhanh</a></li>
                        <li><a href="">Tăng Cân Nạc</a></li>
                    </ul>
                </li>
                <li>
                    <a href="">Quần áo trẻ em</a>
                    <ul class="luachon-workout">
                        <li><a href="">Pre-Workout</a></li>
                        <li><a href="">Amino Energy</a></li>
                        <li><a href="">Intra Workout</a></li>
                    </ul>
                </li>
                <li>
                    <a href="">Đầm</a>
                    <ul class="luachon-bcaa">
                        <li><a href="">BCAA</a></li>
                        <li><a href="">Creatine</a></li>
                        <li><a href="">Glutamine</a></li>
                    </ul>
                </li>
                <li>
                    <a href="">Váy</a>
                    <ul class="luachon-sanphamdacbiet">
                        <li><a href="">Giảm Cân/Đốt Mỡ</a></li>
                        <li><a href="">Vitamin/Collagen</a></li>
                        <li><a href="">Phụ Kiện</a></li>
                    </ul>
                </li>
                <li>
                    <a href="">Áo Golf</a>
                    <ul class="luachon-herb">
                        <li><a href="">Xương & Khớp</a></li>
                        <li><a href="">Thải Độc & Gan</a></li>
                        <li><a href="">Sức Đề Kháng</a></li>
                        <li><a href="">Tóc Da & Móng</a></li>
                        <li><a href="">Hệ Tiêu Hóa</a></li>
                        <li><a href="">Vitamin/Khoáng</a></li>
                    </ul>
                </li>
            </ul>
        </div>

    </header>
    <div id="app">
        <nav class="navbar navbar-expand-md navbar-light bg-white shadow-sm">
            <div class="container">
                <a class="navbar-brand" href="{{ url('/') }}">
                    {{ config('app.name', 'Laravel') }}
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="{{ __('Toggle navigation') }}">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <!-- Left Side Of Navbar -->
                    <ul class="navbar-nav me-auto">

                    </ul>

                    <!-- Right Side Of Navbar -->

                </div>
            </div>
        </nav>

        <main class="py-4">
            @yield('content')
        </main>
    </div>
</body>

</html>