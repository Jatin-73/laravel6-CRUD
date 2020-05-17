@extends('layouts.master')
@section('title', 'Edit Employee')

@section('content')
    <div class="row mt-5">
        <div class="col-sm-8 offset-sm-2">
        
        <a href="{{ route('employees.index') }}"><button type="button" class="btn btn-primary" style="float: right; margin-bottom: 20px">Back</button></a>
        <h4 style="text-align: center; color:#007bff;">Update Employee Details</h4>

        @if ($errors->any())
            <div class="alert alert-danger">
                <ul>
                    @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
        @endif
        <form action="{{ route('employees.update', ['id'=> $employee->id) }}" method = "post">
            @csrf
            <div class="form-group">
            <label for="firstname">Firstname:</label>
            <input type="text" name = "firstname" id = "firstname" class="form-control" 
            value = "{{ $employee->firstname }}">
            </div>
            <div class="form-group">
            <label for="lastname">Lastname:</label>
            <input type="text" name = "lastname" id = "lastname" class="form-control" 
            value = "{{ $employee->lastname }}">
            </div>
            <div class="form-group">
            <label for="department">Department:</label>
            <input type="text" name = "department" id = "department" class="form-control" 
            value = "{{ $employee->department }}">
            </div>
            <div class="form-group">
            <label for="phone">Phone Number:</label>
            <input type="text" name = "phone" id = "phone" class="form-control" 
            value = "{{ $employee->phone }}">
            </div>
            <input type="hidden" name="id" value = "">
            <button type = "submit" class = "btn btn-success">Submit</button>
        </form>
        </div>
    </div>
@endsection