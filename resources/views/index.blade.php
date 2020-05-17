@extends('layouts.master')
@section('title', 'Employees Index')

@section('content')

<div class="container button">
    <div class="row">
      <a href="{{ route('employees.create') }}"><button type="button" class="btn btn-primary">Add Employee</button></a>
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
        <table class="table table-bordered">
        <thead style="text-align:center; background-color: #17a2b8;">
          <tr>
            <th>ID</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Department</th>
            <th>Phone No.</th>
            <th colspan='2'>Actions</th>
          </tr>
        </thead>
        <tbody>
        @foreach($employees as $emp)
          <tr class = "text-center">
            <td>{{ $emp->id }}</td>
            <td>{{ $emp->firstname }}</td>
            <td>{{ $emp->lastname }}</td>
            <td>{{ $emp->department }}</td>
            <td>{{ $emp->phone }}</td>
            <td><a href="{{ route('employees.edit', $emp->id) }}" class = "btn btn-info">Edit</a></td>
            <td><a href="{{ route('employees.destroy', ['id'=> $emp->id]) }}" class = "btn btn-danger">Delete</a></td>
          </tr>
        @endforeach
        </tbody>
        </table>

        <div class="pull-right">{{ $employees->links() }}</div>
      </div>
    </div>
@endsection