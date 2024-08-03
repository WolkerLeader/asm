@extends('admin.layouts.master')

@section('title')
Sửa danh mục sản phẩm
@endsection

@section('content')
<form action="{{route('admin.phanquyen.update', $id)}}" method="POST" enctype="multipart/form-data">
    @csrf
    @method('PUT')
    <div class="mb-3">
        <label class="form-label">Tên:</label>
        <input type="text" name="name" value="{{$data->name}}">
    </div>
    <div class="mb-3">
        <label class="form-label">Trạng thái:</label>
        <select name="is_active" id="">
            <option value="0">Admin</option>
            <option value="1">Người dùng</option>
        </select>
    </div>
    <button type="submit" class="btn btn-success">Cập nhật</button>
</form>
@endsection