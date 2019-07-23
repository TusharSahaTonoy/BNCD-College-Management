@extends('layouts.main')

@section('title','View Attendance')

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
            <div class="col-lg-4">
              <div class="form-group focused">
                <label class="form-control-label" for="input-username">Teacher</label>
                <input type="text" class="form-control form-control-alternative" value="{{ $att->teacher_name }}" readonly>
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
                  <th scope="col">Date</th>
                  <th scope="col">Student Roll</th>
                  <th scope="col">Name </th>
                  <th scope="col">Attendance</th>
                </tr>
                @foreach ($att_list as $attendance)
                  <tr>
                    <td>{{date('d/m/Y', strtotime($attendance->att_date))}}</td>
                    <td>{{$attendance->student->office->roll }}</td>
                    <td>{{ $attendance->student->student_name}}</td>
                    {{-- <td>{{ $attendance->subject}}</td> --}}
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
