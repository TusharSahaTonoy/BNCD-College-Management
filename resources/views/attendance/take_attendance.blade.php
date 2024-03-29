@extends('layouts.main')

@section('title','Select Section')

@section('content')

	<!-- Page content -->
	<div class="container-fluid mt--7">
    <div class="card bg-secondary shadow">
      <div class="card-body">
        <h6 class="heading-title text-muted mb-4">Class Info</h6>
        <div class="pl-lg-4">
          <div class="table-responsive">
            <table class="table align-items-center table-flush text-center display" id="example"  style="width:100%">
              <thead>
                <tr>
                  <th scope="col">Class</th>
                  <th scope="col">Group</th>
                  <th scope="col">Subject</th>
                  <th scope="col">Section</th>
                  <th scope="col">Action</th>
                </tr>
                @foreach ($subjects as $subject)
                  <tr>
                    <td>{{$subject->class}}</td>
                    <td>{{$subject->group}}</td>
                    <td>{{$subject->subject}}</td>
                    <td>{{$subject->section}}</td>
                    <td><a href=" {{route('attendance.attendance_form',$subject->class.','.$subject->group.','.$subject->subject.','.$subject->section)}} ">Take Attendence</a></td>
                  </tr>
                @endforeach
              </thead>
            </table>
          </div>
        </div>
      </div>
    </div>
  </div>

@endsection
