<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Employee;

class EmployeeController extends Controller
{
    public function index()
    {
        //$employees = Employee::latest()->paginate(5);
        //return view('index', compact('employees'))->with('i', (request()->input('page', 1)  -1) * 5);
        //return view('index', ['employees' => $employees]);
        $employees = Employee::paginate(5);
        return view('index', compact('employees')); 
    }     

    public function create()
    {
        return view('create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'firstname' => 'required|alpha|min:3',
            'lastname'  => 'required|alpha|min:3',
            'department'=> 'required|alpha',
            'phone'     => 'required|numeric|digits:10|unique:employees'
        ]);

        $employee = new Employee();
        $employee->firstname    =   $request->input('firstname');
        $employee->lastname     =   $request->input('lastname');
        $employee->department   =   $request->input('department');
        $employee->phone        =   $request->input('phone');
        
        if($employee->save()){
           return redirect()->route('employees.index')->with('info', 'Employee Added Successfully');
        } 
        else{
            return redirect()->route('employees.index')->with('info', 'Employee Could Not Be Addedd');
        }
    }

    public function edit($id)
    {
        $employee = Employee::find($id);
        return view('edit', ['employee' => $employee]);
    }

    public function update(Request $request, $id)
    {
        $employee = Employee::find($id);
        $request->validate([
            'firstname' => 'required|alpha|min:3',
            'lastname'  => 'required|alpha|min:3',
            'department'=> 'required|alpha',
            'phone'     => 'required|numeric|digits:10'
        ]);

        if($employee->update($request->all())){
            return redirect()->route('employees.index')->with('info','Employee Updated Successfully');
        }
    }

    public function destroy($id)
    {
        $employee = Employee::find($id);
        if($employee->delete()){
            return redirect()->route('employees.index')->with('info','Employee Deleted Successfully');
        }
    }
}
