@extends('layouts.master')
@section('title', 'Products Index')

@section('content')

<div class="container button">
    <div class="row">
      <a href="{{ route('products.create', ['id'=> $id]) }}"><button type="button" class="btn btn-primary">Add Product</button></a>
    </div>
</div>
@if($msg = session('info'))
  <div class="row one">
    <div class="col-sm-12">
      <div class="alert alert-success">
          <h6>{{ $msg }}<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a></h6>
      </div>
    </div>
  </div>
@endif
  
  <div class="row">
      <div class="col-sm-12">
      @if(count($products) > 0)
        <table class="table table-bordered">
        <thead style="text-align:center; background-color: #17a2b8;">
          <tr>
            <th>ID</th>
            <th>Product Title</th>
            <th>Product Description</th>
            <th>Product Review</th>
            <th colspan='2'>Actions</th>
          </tr>
        </thead>
        <tbody>
        @foreach($products as $pro)
          <tr class = "text-center">
            <td>{{ $pro->id }}</td>
            <td>{{ $pro->product_title }}</td>
            <td>{{ $pro->product_description }}</td>
            <td>{{ $pro->product_review }}</td>
            <td><a href="{{ route('products.edit', $pro->id) }}" class = "btn btn-info">Edit</a></td>
            <td><a href="{{ route('products.delete', $pro->id) }}" class = "btn btn-danger">Delete</a></td>
          </tr>
        @endforeach
        </tbody>
        </table>
        
        <div class="pull-right">{{ $products->links() }}</div>
      @else
			<center>No Products Found.</center>
			@endif
      </div>
    </div>
@endsection