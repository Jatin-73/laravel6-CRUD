@extends('layouts.master')
@section('title', 'Create Employee')

@section('content')
<div class="row mt-5">  
    <div class="col-sm-8 offset-sm-2">
        <a href="{{ route('employees.index') }}"><button type="button" class="btn btn-primary" style="float: right; margin-bottom: 20px">Back</button></a>
        <h4 style="text-align: center; color:#007bff;">Add Employee</h4>
        @if ($errors->any())
            <div class="alert alert-danger">
                <ul>
                    @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
        @endif 
        <form action="{{ route('employees.store') }}" method = "post">
            @csrf
            <div class="form-group">
                <label for="firstname">Firstname:</label>
                <input type="text" name = "firstname" id = "firstname" class="form-control">
                <!-- @if($errors->has('firstname'))
                    <div class="error">{{ $errors->first('firstname') }}</div>
                @endif -->
            </div>
            <div class="form-group">
                <label for="lastname">Lastname:</label>
                <input type="text" name = "lastname" id = "lastname" class="form-control">
                <!-- @if($errors->has('lastname'))
                    <div class="error">{{ $errors->first('lastname') }}</div>
                @endif -->
            </div>
            <div class="form-group">
                <label for="department">Department:</label>
                <input type="text" name = "department" id = "department" class="form-control">
                <!-- @if($errors->has('department'))
                    <div class="error">{{ $errors->first('department') }}</div>
                @endif -->
            </div>
            <div class="form-group">
                <label for="phone">Phone Number:</label>
                <input type="text" name = "phone" id = "phone" class="form-control">
                <!-- @if($errors->has('phone'))
                    <div class="error">{{ $errors->first('phone') }}</div>
                @endif -->
            </div>
            <button type = "submit" class = "btn btn-success">Submit</button>
        </form>
    </div>
</div>
@endsection


