@extends('admin.layouts.master')
@section('title')
Danh sách sản phẩm
@endsection
@section('style-libs')
<!-- Custom styles for this page -->
<link href="{{asset('theme/admin/vendor/datatables/dataTables.bootstrap4.min.css')}}" rel="stylesheet">
@endsection
@section('script-libs')
<!-- Page level plugins -->
<script src="{{asset('theme/admin/vendor/datatables/jquery.dataTables.min.js')}}"></script>
<script src="{{asset('theme/admin/vendor/datatables/dataTables.bootstrap4.min.js')}}"></script>

<!-- Page level custom scripts -->
<script src="{{asset('theme/admin/js/demo/datatables-demo.js')}}"></script>
@endsection
@section('content')
<!-- Begin Page Content -->

<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800">Danh sách sản phẩm</h1>
    <a href="{{route('admin.products.create')}}" class="btn btn-success mb-3">Tạo mới</a>
    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">DataTables Example</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>ID Người dùng</th>
                            <th>Email</th>
                            <th>Địa chỉ</th>
                            <th>Số điện thoại</th>
                            <th>Email user</th>
                            <th>Tên user</th>
                            <th>SDT user</th>
                            <th>Order status</th>
                            <th>Payment status</th>
                            <th>Tổng tiền</th>
                            <th>Hành động</th>
                        </tr>
                    </thead>
                    <tfoot>
                        <tr>
                            <th>ID</th>
                            <th>ID Người dùng</th>
                            <th>Email</th>
                            <th>Địa chỉ</th>
                            <th>Số điện thoại</th>
                            <th>Email user</th>
                            <th>Tên user</th>
                            <th>SDT user</th>
                            <th>Order status</th>
                            <th>Payment status</th>
                            <th>Tổng tiền</th>
                            <th>Hành động</th>
                        </tr>
                    </tfoot>
                    <tbody>
                        @foreach($data as $item)
                        <tr>
                            <td>{{$item->id}}</td>
                            <td>{{$item->user_id}}</td>
                            <td>{{$item->user_email}}</td>
                            <td>{{$item->user_address}}</td>
                            <td>{{$item->user_phone}}</td>
                            <td>{{$item->receiver_email}}</td>
                            <td>{{$item->user_name}}</td>
                            <td>{{$item->receiver_phone}}</td>
                            <td>{{$item->order_status}}</td>
                            <td>{{$item->payment_status}}</td>
                            <td>{{$item->total_price}}</td>
                            <td>
                                <a href="{{route('admin.products.show', $item)}}" class="btn btn-success">Xem</a>
                                <form action="{{route('admin.products.destroy', $item)}}" method="POST">
                                    @csrf
                                    @method('DELETE')
                                    <button type="submit" class="btn btn-danger">Xóa</button>
                                </form>
                            </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>

</div>
<!-- /.container-fluid -->

@endsection