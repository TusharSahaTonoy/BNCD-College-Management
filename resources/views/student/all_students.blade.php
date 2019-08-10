@extends('layouts.main')

@section('title','All Student Info')

@section('content')
	<div class="container-fluid mt--7">
    <div class="row justify-content-center">
      <div class="col-12 mb-5 mb-xl-0">
        <div class="card bg-secondary shadow border-0">
          <div class="card-header bg-transparent pb-5">
            <div class="text-muted text-center mt-2 mb-4"><h3>All Student</h3>
            </div>
          </div>
          <div class="card-body px-lg-5 py-lg-5">
            <div class="table-responsive"><br>
              <table class="table align-items-center table-flush text-center display" id="example" style="width:100%">
                <thead>
                  <tr>
                    <th scope="col">#</th>
                    <th scope="col">User Id</th>
                    <th scope="col">Name</th>
                    <th scope="col">Roll</th>
                    <th scope="col">Class</th>
                    <th scope="col">Group</th>
                    <th scope="col">Section</th>
                    <th scope="col">Action</th>
                  </tr>
                  @foreach ($students as $index => $student)
                    <tr>
                      <td>{{++$index}}</td>
                      <td>{{$student->user_id}}</td>
                      <td>{{$student->student_name}}</td>
                      <td>{{$student->student_id}}</td>
                      <td>{{$student->office->class}}</td>
                      <td>{{$student->office->group}}</td>
                      <td>{{$student->office->section}}</td>
                      <td><a href="{{route('student.view',$student->id)}}" class="btn btn-sm btn-primary">View Student</a></td>
                    </tr>
                  @endforeach
                </thead>
              </table>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

@endsection