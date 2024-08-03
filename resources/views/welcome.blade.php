@extends('layouts.app')
@section('content')

<main class="main">
    <div class="content">
        <div class="banner">
            <img src="{{Storage::url($data_banner->image)}}" width="100%" alt="">
        </div>
        <div class="content-sanpham">
            <div class="content-sanpham-loai">
                <h3>Sản phẩm mới</h3>
                <a href="">Xem tất cả</a>
            </div>
            <div class="content-sanpham-chitiet">
                @foreach($products as $item)
                <div class="content-sanpham-item">
                    <div class="baotrum-sanpham-img">
                        <a href="{{route('product.detail', $item->slug)}}" class="content-sanpham-item-img">
                            <img src="{{Storage::url($item->img_thumb)}}" height="500px" width="100%" alt="">
                        </a>
                        @if($item->is_best_sale)
                        <span class="badge badge-primary">BEST SALE</span>
                        @elseif($item->is_40_sale)
                        <span class="badge badge-warning">SALE 40%</span>
                        @elseif($item->is_hot_online)
                        <span class="badge badge-primary">HOST ONLINE</span>
                        @endif
                        <a href="{{route('product.detail', $item->slug)}}" class="sanpham-chitiet">Chi tiết</a>
                        <a href="" class="sanpham-search">
                            <i class="fa-solid fa-magnifying-glass-plus"></i>
                        </a>
                    </div>
                    <a href="" class="content-sanpham-item-ten">
                        {{Str::limit($item->name, 30)}}
                    </a>
                    {{$item->category->name}}
                    <a href=""></a>
                    <div class="content-sanpham-gia-khuyenmai">
                        <div class="content-sanpham-item-gia">
                            <div class="sanpham-item-gia-ban">
                                {{$item->price_sale ? $item->price : ''}}
                            </div>
                            <div class="sanpham-item-gia-goc">
                                {{$item->price_sale ?: $item->price}}
                            </div>
                        </div>
                        <div class="content-sanpham-item-khuyenmai">
                            <p>- 18%</p>
                        </div>
                    </div>
                </div>
                @endforeach

            </div>




        </div>
    </div>
</main>

@endsection