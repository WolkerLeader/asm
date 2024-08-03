@extends('layouts.app')
@section('content')
<main class="main">
  <div class="content">
    <p class="tieu-de-dm"><a href="../index.html">Trang chủ</a> / <a href="../danh-muc-sp/index.html">Danh mục</a> / Tăng Cân Nhanh</p>
    <div class="content-sanpham">
      <div class="danh-muc">
        <div class="loc-sp">
          <p class="locsp">LỌC SẢN PHẨM</p>
          <p class="text-thuonghieu">THƯƠNG HIỆU</p>
          <div class="checkbox-thuonghieu">
            @foreach ($products as $item)
            <p>
              <input type="checkbox" />
              {{$item->category->name}}
            </p>
            @endforeach
          </div>
        </div>
        <div class="sp-moi">
          <p class="text-sp-moi">SẢN PHẨM MỚI</p>
          <div class="sp-moicon">
            <img src="../img/r1-collagen-peptides-chocolate-fudge-28svs-336g-768x768_c28ec2a6c0f448f5aa26bb952085c1d4_small.webp" width="50px" height="50px" alt="" />
            <div class="content-spm">
              <p class="ten-ctspmoi">R1 Collagen Peptides 28 servings</p>
              <i class="gia-ctspmoi">550,000₫</i>
            </div>
          </div>
          <div class="sp-moicon">
            <img src="../img/r1-collagen-peptides-chocolate-fudge-28svs-336g-768x768_c28ec2a6c0f448f5aa26bb952085c1d4_small.webp" width="50px" height="50px" alt="" />
            <div class="content-spm">
              <p class="ten-ctspmoi">R1 Collagen Peptides 28 servings</p>
              <i class="gia-ctspmoi">550,000₫</i>
            </div>
          </div>
          <div class="sp-moicon">
            <img src="../img/r1-collagen-peptides-chocolate-fudge-28svs-336g-768x768_c28ec2a6c0f448f5aa26bb952085c1d4_small.webp" width="50px" height="50px" alt="" />
            <div class="content-spm">
              <p class="ten-ctspmoi">R1 Collagen Peptides 28 servings</p>
              <i class="gia-ctspmoi">550,000₫</i>
            </div>
          </div>
        </div>

        <div class="duoc-xem-nhieu">
          <div class="sp-moi">
            <p class="text-sp-moi">ĐƯỢC XEM NHIỀU</p>
            <div class="sp-moicon">
              <img src="../img/hydrowhey_2_8b0ea040292045139c8d2b37ed3b2347_small.webp" width="50px" height="50px" alt="" />
              <div class="content-spm">
                <p class="ten-ctspmoi">ON Platinum HydroWhey, 3.5lb</p>
                <i class="gia-ctspmoi">1,610,000₫</i>
              </div>
            </div>
            <div class="sp-moicon">
              <img src="../img/hydrowhey_2_8b0ea040292045139c8d2b37ed3b2347_small.webp" width="50px" height="50px" alt="" />
              <div class="content-spm">
                <p class="ten-ctspmoi">ON Platinum HydroWhey, 3.5lb</p>
                <i class="gia-ctspmoi">1,610,000₫</i>
              </div>
            </div>
            <div class="sp-moicon">
              <img src="../img/hydrowhey_2_8b0ea040292045139c8d2b37ed3b2347_small.webp" width="50px" height="50px" alt="" />
              <div class="content-spm">
                <p class="ten-ctspmoi">ON Platinum HydroWhey, 3.5lb</p>
                <i class="gia-ctspmoi">1,610,000₫</i>
              </div>
            </div>
          </div>
        </div>
        <div class="anh">
          <img src="../img/left_sidebar_banner.webp" width="250px" alt="" />
        </div>
      </div>
      <div class="content-sanpham-chitiet">
        @foreach($products as $item)
        <div class="content-sanpham-item">
          <div class="baotrum-sanpham-img">
            <a href="{{route('product.detail', $item->slug)}}" class="content-sanpham-item-img">
              <img src="{{Storage::url($item->img_thumb)}}" height="100px" width="100%" alt="">
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

        <div class="phantrang">
          <ul>
            <span><a href="../danh-muc-sp/index.html" style="background-color: #fc4d1e;color: white;">1</a></span>
            <span><a href="../danhmucsp2/index.html">2</a></span>
            <span>...</span>
            <span><a href="#">8</a></span>
            <span><a href="#">9</a></span>
          </ul>
        </div>
      </div>
    </div>

  </div>
</main>
@endsection