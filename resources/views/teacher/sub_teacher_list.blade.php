@extends('layouts.main')

@section('title','Subject Teacher List')

@section('content')
	<!-- Page content -->
	<div class="container-fluid mt--7">
    <div class="row justify-content-center">
      <div class="col-12 mb-5 mb-xl-0">
        <div class="card bg-secondary shadow border-0">
          <div class="card-header bg-transparent">
            <div class="text-muted text-center mt-2 mb-4"><h3>Subject Teacher List</h3>
            </div>
          </div>
          <div class="card-body px-lg-5 py-lg-5">
            <div class="table-responsive">
              <table class="table align-items-center table-flush text-center display" id="example"  style="width:100%">
                <thead>
                  <tr>
                    <th scope="col">Class</th>
                    <th scope="col">Group</th>
                    <th scope="col">Subject</th>
                    <th scope="col">Section</th>
                    <th scope="col">Teacher</th>
                  </tr>
                  @if(count($sub_teachers)==0)
                    <h2>You do not have any subject assigned to a teacher</h2>
                  @else
                    @foreach ($sub_teachers as $sub)
                      @if ($sub->teacher_id !=null)
                        <tr>
                          <td>{{$sub->class}}</td>
                          <td>{{$sub->group}}</td>
                          <td>{{$sub->subject}}</td>
                          <td>{{$sub->section}}</td>
                          <td>{{$sub->teacher->teacher_name}}</td>   
                        </tr>
                      @endif
                    @endforeach
                  @endif
                </thead>
              </table>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
@endsection