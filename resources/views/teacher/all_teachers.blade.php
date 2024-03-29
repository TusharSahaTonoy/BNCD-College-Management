@extends('layouts.main')

@section('title','View Teacher Info')

@section('content')
	<!-- Page content -->
	<div class="container-fluid mt--7">
    <div class="row justify-content-center">
      <div class="col-12 mb-5 mb-xl-0">
        <div class="card bg-secondary shadow border-0">
          <div class="card-header bg-transparent pb-5">
            <div class="text-muted text-center mt-2 mb-4"><h3>All Teacher</h3>
            </div>
          </div>
          <div class="card-body px-lg-5 py-lg-5">
            <div class="table-responsive">
              <table id="mytable" class="table align-items-center table-flush text-center display" style="width:100%">
                <thead>
                  <tr>
                    <th scope="col">#</th>
                    <th scope="col">User Id</th>
                    <th scope="col">Teacher Id</th>
                    <th scope="col">Name</th>
                    <th scope="col">Role</th>
                    <th scope="col">Action</th>
                  </tr>
                  @foreach ($teachers as $index => $teacher)
                    <tr>
                      <td>{{++$index}}</td>
                      <td>{{$teacher->user_id}}</td>
                      <td>{{$teacher->teacher_id}}</td>
                      <td>{{$teacher->teacher_name}}</td>
                      <td>{{$teacher->user->role}}</td>
                      <td>
                        <a href=" {{route('teacher.view_teacher',$teacher->id)}} " class="btn btn-sm btn-default"><i class="far fa-eye"></i></a>
                        <a href=" {{route('teacher.edit_teacher_form',$teacher->id)}} " class="btn btn-sm btn-warning"><i class="fas fa-edit"></i></a>
                      </td>
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