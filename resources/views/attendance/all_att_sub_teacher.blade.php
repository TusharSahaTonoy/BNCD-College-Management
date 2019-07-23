@extends('layouts.main')

@section('title','All Attendence')

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
                  <th scope="col">Date</th>
                  <th scope="col">Action</th>
                </tr>
                @foreach ($all_att as $att)
                  <tr>
                    <td>{{$att->class}}</td>
                    <td>{{$att->group}}</td>
                    <td>{{$att->subject}}</td>
                    <td>{{$att->section}}</td>
                    <td>{{$att->att_date}}</td>
                    <td><a href=" {{route('attendance.view',$att->class.','.$att->group.','.$att->subject.','.$att->section.','.$att->att_date)}} ">View</a></td>
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
