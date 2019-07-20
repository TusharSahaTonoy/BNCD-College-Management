@extends('layouts.main')

@section('title','Take Attendance')

@section('content')

<div class="main-content">
  <div class="header pb-8 pt-5 pt-lg-8 d-flex align-items-center" {{-- style="min-height: 600px; background-image: url(../assets/img/theme/profile-cover.jpg); background-size: cover; background-position: center top;" --}}>
    <!-- Mask -->
    <span class="mask bg-gradient-default opacity-8"></span>
    <!-- Header container -->
    <div class="container-fluid d-flex align-items-center">
      <div class="row">
        <div class="col-lg-7 col-md-10">
          @if (count($errors)>0)
            @foreach ($errors->all() as $error)
              <div class="alert alert-danger">{{ $error }}</div>
            @endforeach
          @endif
        </div>
      </div>
    </div>
  </div>

  <div class="row justify-content-center">
    <div class="col-xl-4" style="margin-top: -8rem;">
      <form action="{{-- {{ route('attendance.store') }} --}}" method="post">
        @csrf
        <div class="card card-profile shadow">
          <div class="row justify-content-center">
            <label class="form-check-label">Date: 
              <input type="date" name="att_date">
            </label>
          </div>
        </div>
        <hr>
        <br>
        @foreach ($student_list as $student)
          <div class="card card-profile shadow">
            <div class="row justify-content-center">
              {{-- <div class="pt-md-4">
                <img src="{{ Storage::url($info->studentinfo->StudentImage) }}" class="Avatar">
              </div> --}}
            </div>
            <div class="card-body pt-0 pt-md-4">
              <div class="text-center">
                <h3>
                  <strong>Name: </strong>{{ $student->student->student_name }}<br>
                  <strong>Roll: </strong>{{ $student->student->office->roll }}
                  <span class="font-weight-light"></span>
                </h3>
                <div class="form-check form-check-inline">
                  <input class="form-check-input" type="radio" name="att_list[{{ $student->student_id }}]" value="1" id="{{ $student->student_id }}" ><label class="form-check-label">Present</label> &nbsp
                  <input class="form-check-input" type="radio" name="att_list[{{ $student->student_id }}]" value="0" id="{{ $student->student_id }}"><label class="form-check-label">Absent</label> &nbsp
                  <input class="form-check-input" type="radio" name="att_list[{{ $student->student_id }}]" value="2" id="{{ $student->student_id }}"><label class="form-check-label">Leave</label> &nbsp
                </div>

                {{-- <input type="hidden" name="student_list[]" value="{{ $info->student_id }}"> --}}

              </div>
            </div>
          </div>
        @endforeach

        {{-- <input type="hidden" name="teacher_id" value="{{ auth()->user()-> }}"> --}}
        <input type="hidden" name="att_class" value="{{ $att->class }}">
        <input type="hidden" name="att_group" value="{{ $att->group }}">
        <input type="hidden" name="att_sec" value="{{ $att->subject }}">
        <input type="hidden" name="att_sub" value="{{ $att->section }}">
        {{-- <input type="hidden" name="att_date" value="{{ $data->date }}"> --}}

        <div class="justify-content-center">
          <div class="col text-center"><br>
            <input type="submit" value="Save" class="btn col-md-12 btn-success">
          </div>
        </div>
      </form>
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

@endsection
