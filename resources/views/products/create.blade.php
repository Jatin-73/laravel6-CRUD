@extends('layouts.master')
@section('title', 'Add Products')

@section('content')
<div class="row mt-5">  
    <div class="col-sm-8 offset-sm-2">
    
        <a href="{{ route('products.index', ['id'=> $id]) }}"><button type="button" class="btn btn-primary" style="float: right; margin-bottom: 20px">Back</button></a>
        <h4 style="text-align: center; color:#007bff;">Add Product</h4>
        
        @if ($errors->any())
            <div class="alert alert-danger">
                <ul>
                    @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
        @endif 
        <form action="{{ route('products.store', ['id'=> $id]) }}" method = "post">
            @csrf
            <div class="form-group">
                <label for="firstname">Product Title:</label>
                <input type="text" name = "product_title" id = "product_title" class="form-control">
            </div>
            <div class="form-group">
                <label for="lastname">Product Description:</label>
                <input type="text" name = "product_description" id = "product_description" class="form-control">
            </div>
            <div class="form-group">
                <label for="department">Product Reviews:</label>
                <textarea class="form-control" rows="3" id="comment" name = "product_review" id = "product_review"></textarea>
            </div>
            <button type = "submit" class = "btn btn-success">Add</button>
        </form>
    </div>
</div>
@endsection


