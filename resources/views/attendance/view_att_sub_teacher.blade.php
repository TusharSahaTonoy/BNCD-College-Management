@extends('layouts.main')

@section('title','View Attendance')

{{-- @section('content')

<div class="main-content">

  <div class="row justify-content-center">
    <div class="col-xl-4" style="margin-top: -8rem;">
      <form action="{{ route('attendance.attendace_store') }}" method="post">
        @csrf
        <div class="card card-profile shadow">
          <div class="row justify-content-center">
            <label class="form-check-label">Date: 
              <input type="text" name="att_date" value=" {{$att->att_date}} " readonly>
            </label>
          </div>
        </div>
        <hr>
        <br>
        @foreach ($att_list as $attendance)
          <div class="card card-profile shadow">
            <div class="row justify-content-center"> --}}
              {{-- <div class="pt-md-4">
                <img src="{{ Storage::url($info->studentinfo->StudentImage) }}" class="Avatar">
              </div> --}}
            {{-- </div>
            <div class="card-body pt-0 pt-md-4">
              <div class="text-center">
                <h3>
                  <strong>Name: </strong>{{ $attendance->student->student_name }}<br>
                  <strong>Roll: </strong>{{ $attendance->student->office->roll }}
                  <span class="font-weight-light"></span>
                </h3>
                <div class="form-check form-check-inline">
                  <input class="form-check-input" type="radio" name="att_list[{{ $attendance->student->student_id }}]" {{ (($attendance->attendance ==1)? 'checked':'') }} value="1" ><label class="form-check-label">Present</label> &nbsp
                  <input class="form-check-input" type="radio" name="att_list[{{ $attendance->student->student_id }}]" {{ (($attendance->attendance ==0)? 'checked':'') }} value="0" ><label class="form-check-label">Absent</label> &nbsp
                  <input class="form-check-input" type="radio" name="att_list[{{ $attendance->student->student_id }}]" {{ (($attendance->attendance ==2)? 'checked':'') }} value="2"><label class="form-check-label">Leave</label> &nbsp
                </div>
              </div>
            </div>
          </div>
        @endforeach --}}

        {{-- <input type="hidden" name="teacher_id" value="{{ $att->teacher_id }}"> --}}
        {{-- <input type="hidden" name="class" value="{{ $att->class }}">
        <input type="hidden" name="group" value="{{ $att->group }}">
        <input type="hidden" name="subject" value="{{ $att->subject }}">
        <input type="hidden" name="section" value="{{ $att->section }}"> --}}

        {{-- <div class="justify-content-center">
          <div class="col text-center"><br>
            <input type="submit" value="Save" class="btn col-md-12 btn-success">
          </div>
        </div> --}}
      {{-- </form>
    </div>
  </div>

  <style media="screen">
  .Avatar{
    border-radius: 5rem;
    width:95px;
    height:90px;
    margin-top: 5px;
  }
  </style>

@endsection --}}

@section('content')

	<!-- Page content -->
	<div class="container-fluid mt--7">

    <div class="card bg-secondary shadow">
      <div class="card-body">
        <h6 class="heading-title text-muted mb-4">Class Info</h6>
        <div class="pl-lg-4">
          <div class="row">
            <div class="col-lg-4">
              <div class="form-group focused">
                <label class="form-control-label" for="input-username">Class</label>
                <input type="text" class="form-control form-control-alternative" value="{{ $att->class }}" readonly>
              </div>
            </div>
            <div class="col-lg-4">
              <div class="form-group focused">
                <label class="form-control-label" for="input-username">Group</label>
                <input type="text" class="form-control form-control-alternative" value="{{ $att->group }}" readonly>
              </div>
            </div>
          </div>

          <div class="row">
            <div class="col-lg-4">
              <div class="form-group focused">
                <label class="form-control-label" for="input-username">Subject</label>
                <input type="text" class="form-control form-control-alternative" value="{{ $att->subject }}" readonly>
              </div>
            </div>
            <div class="col-lg-4">
              <div class="form-group focused">
                <label class="form-control-label" for="input-username">Section</label>
                <input type="text" class="form-control form-control-alternative" value="{{ $att->section }}" readonly>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <br>

    <div class="card bg-secondary shadow">
      <div class="card-body">
        <h6 class="heading-title text-muted mb-4">Attendance Info</h6>
        <div class="pl-lg-4">
          <div class="table-responsive">
            <table class="table align-items-center table-flush text-center display" id="example"  style="width:100%">
              <thead>
                <tr>
                  <th scope="col">Student ID</th>
                  <th scope="col">Name </th>
                  <th scope="col">Roll</th>
                  <th scope="col">Attendance</th>
                </tr>
                @foreach ($att_list as $attendance)
                  <tr>
                    <td>{{$attendance->student->student_id }}</td>
                    <td>{{ $attendance->student->student_name}}</td>
                    <td>{{ $attendance->student->office->roll}}</td>
                    <td>
                      @switch($attendance->attendance)
                          @case(0)
                            Absent
                            @break
                          @case(1)
                          Present
                            @break
                          @case(2)
                            Leave
                            @break    
                          @default
                          {{$attendance->attendance}}
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
@endsection
