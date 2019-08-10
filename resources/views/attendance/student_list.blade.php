@extends('layouts.main')

@section('title','Take Attendance')

@section('content')


<div class="main-content">
  
  <div class="row justify-content-center">
    <div class="col-xl-4" style="margin-top: -8rem;">
      <form action="{{ route('attendance.attendance_store') }}" method="post">
        @csrf
        <div class="card card-profile shadow">
          <div class="row justify-content-center">
            <label class="form-check-label">Date: 
              <input type="date" name="att_date" required>
            </label>
          </div>
        </div>
        <hr>
        <br>
        {{-- swipe container --}}
        <div class="swiper-container">
          <div class="swiper-wrapper">
            @foreach ($student_list as $student)
              <div class="swiper-slide">
                <div class="card card-profile shadow" >
                  <div class="row justify-content-center">
                    <div class="pt-md-4">
                      <img src="{{ asset('/storage/students/student/'.$student->student->image) }}" class="Avatar">
                    </div>
                  </div>
                  <div class="card-body pt-0 pt-md-4">
                    <div class="text-center">
                      <h3>
                        <strong>Name: </strong>{{ $student->student->student_name }}<br>
                        <strong>Roll: </strong>{{ $student->student->office->roll }}
                        <span class="font-weight-light"></span>
                      </h3>
                      <div class="form-check form-check-inline att-slide">
                        <input class="check-boxes form-check-input" type="radio" name="att_list[{{ $student->student_id }}]" value="1" id="{{ $student->student_id }}" ><label class="form-check-label">Present</label> &nbsp
                        <input class="check-boxes form-check-input" type="radio" name="att_list[{{ $student->student_id }}]" value="0" checked id="{{ $student->student_id }}"><label class="form-check-label">Absent</label> &nbsp
                        <input class="check-boxes form-check-input" type="radio" name="att_list[{{ $student->student_id }}]" value="2" id="{{ $student->student_id }}"><label class="form-check-label">Leave</label> &nbsp
                      </div>

                      {{-- <input type="hidden" name="student_list[]" value="{{ $info->student_id }}"> --}}

                    </div>
                  </div>
                </div>
              </div>
            @endforeach
          </div>
          <div class="swiper-pagination"></div>

          <div class="swiper-button-prev"></div>
          <div class="swiper-button-next"></div>
        </div>
        {{-- swipe container --}}
        <input type="hidden" name="teacher_id" value="{{ auth()->user()->teacher->teacher_id }}">
        <input type="hidden" name="class" value="{{ $att->class }}">
        <input type="hidden" name="group" value="{{ $att->group }}">
        <input type="hidden" name="subject" value="{{ $att->subject }}">
        <input type="hidden" name="section" value="{{ $att->section }}">

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
  .swiper-container {
    width: 400px;
    height: 300px;
    padding: 50px;
  }
  .swiper-slide {
    background-position: center;
    background-size: cover;
    width: 400px;
    height: 300px;
  }
  </style>

  <script>
    $(".check-boxes").click(function(){
      // console.log('pressed');
      $(".swiper-button-next").click();
    });
  </script>

@endsection

