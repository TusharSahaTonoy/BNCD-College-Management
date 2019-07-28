@extends('layouts.main')

@section('title','All Student Info')

@section('content')
	<div class="container-fluid mt--7">
    {{-- summary --}}
    <div class="row justify-content-center">
      <div class="col-12 mb-5 mb-xl-0">
        <div class="card bg-secondary shadow border-0">
          <div class="card-header bg-transparent pb-5">
            <div class="text-muted text-center mt-2 mb-4"><h3>Attendance Summary</h3>
            </div>
          </div>
          <div class="card-body px-lg-5 py-lg-5">
            <div class="table-responsive">
              <table class="table align-items-center table-flush text-center display" id="example"  style="width:100%">
                <thead>
                  <tr>
                    <th scope="col">Subject</th>
                    <th scope="col">Total Present</th>
                    <th scope="col">Total Absent</th>
                    <th scope="col">Total Leave</th>
                    <th scope="col">Teacher</th>
                  </tr>
                  {{-- @foreach ($persent_counts as $index => $class)
                    <tr>
                      <td>{{$class->subject}}</td>
                      <td>{{$class->present}}</td>
                      <td>{{($class->absent)}}</td>
                      <td>{{$class->leave}}</td>
                      <td>{{$class->teacher}}</td>
                      <td></td>
                    </tr>
                  @endforeach --}}
                </thead>
              </table>
            </div>
          </div>
        </div>
      </div>
    </div>
    <br>
    {{-- attendance records --}}
    <div class="row justify-content-center">
      <div class="col-12 mb-5 mb-xl-0">
        <div class="card bg-secondary shadow border-0">
          <div class="card-header text-center bg-transparent">
              <h3>All Attendance</h3>
          </div>
          <div class="card-body px-lg-5 py-lg-5">
            <div class="table-responsive">
              <table class="table align-items-center table-flush text-center display" id="example"  style="width:100%">
                <thead>
                  <tr>
                    <th scope="col">Date</th>
                    <th scope="col">Class</th>
                    <th scope="col">Section</th>
                    <th scope="col">Subject</th>
                    <th scope="col">Attendance</th>
                  </tr>
                  @foreach ($all_attendance as $att)
                    <tr>
                      <td>{{$att->att_date}}</td>
                      <td>{{$att->class}}</td>
                      <td>{{$att->section}}</td>
                      <td>{{$att->subject}}</td>
                      <td>
                      @switch($att->attendance)
                          @case(1)
                            <span class="badge badge-pill badge-success">Present</span>    
                              @break
                          @case(0)
                            <span class="badge badge-pill badge-danger">Absent</span>   
                            @break
                          @case(2)
                            <span class="badge badge-pill badge-warning">Leave</span>   
                            @break
                          @default
                            {{$att->attendance}}
                      @endswitch
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