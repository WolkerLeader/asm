@extends('admin.layouts.master')

@section('title')
    Sửa danh mục sản phẩm
@endsection

@section('content')
    <form action="{{route('admin.banners.store')}}" method="POST" enctype="multipart/form-data">
        @csrf
        <div class="mb-3">
            <label class="form-label">Tên:</label>
            <input type="text" name="name_banner" >
        </div>
        <div class="mb-3">
            <label class="form-label">Ảnh:</label>
            <input type="file" name="image">
        </div>
        <button type="submit" class="btn btn-success">Add Banner</button>
    </form>
@endsection
