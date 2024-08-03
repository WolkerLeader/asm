@extends('admin.layouts.master')

@section('title')
Danh sách banner
@endsection

@section('content')
<a href="{{route('admin.banners.create')}}">
    <button class="btn btn-success">Tạo mới</button>
</a>
@if (session('message'))
<h3>{{session('message')}}</h3>
@endif
<table class="table">
    <thead>
        <th>ID</th>
        <th>Tên</th>
        <th>Ảnh</th>
        <th>Hành động</th>
    </thead>
    <tbody>
        @foreach($data as $item)
        <tr>
            <td>{{$item->id}}</td>
            <td>{{$item->name_banner}}</td>
            <td>
                <div style="width: 100px; height: 100px;">
                    <img src="{{ Storage::url($item->image)}}" style="max-width: 100%; max-height: 100%;" alt="">
                </div>
            </td>
            <td>
                <a href="{{route('admin.banners.show', $item)}}">
                    <button class="btn btn-success">Xem</button>
                </a>
                <a href="{{route('admin.banners.edit', $item)}}">
                    <button class="btn btn-warning">Sửa</button>
                </a>
                <form action="{{route('admin.banners.destroy', $item)}}" method="POST">
                    @csrf
                    @method('DELETE')
                    <button class="btn btn-danger">Xóa</button>
                </form>
            </td>
        </tr>
        @endforeach

    </tbody>
</table>
{{-- Phân trang  --}}
{{-- {{$data ->links()}}--}}
@endsection