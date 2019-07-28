@extends('layouts.main')

@section('title','All Attendence')

@section('content')

	<!-- Page content -->
	<div class="container-fluid mt--7">
    <div class="card bg-secondary shadow">
      <div class="card-body">
        <h6 class="heading-title text-muted mb-4">Class Info</h6>
        <div class="pl-lg-4">
          <form action=" {{route('marks.quiz.store')}} " method="post">
            @csrf
            <div class="table-responsive">
              <table class="table align-items-center table-flush display " id="example"  style="width:100%">
                <thead>
                  <tr>
                    <th scope="col">Student Name (Roll)</th>
                    <th scope="col">Quiz 1 (CQ & MCQ)</th>
                    <th scope="col">Quiz 2</th>
                    <th scope="col">Quiz 3</th>
                    <th scope="col">Quiz 4</th>
                  </tr>
                </thead>
                <tbody>
                  @foreach ($student_quizes as $student)
                    <tr>
                      <td>
                        <input type="hidden" name="students[]" value="{{$student->student_id}}">
                        {{$student->student->student_name}} ({{$student->student->office->roll}})
                      </td>
                      {{-- quiz1 --}}
                      <td>
                        <div class="row justify-center">
                          <input type="number" class="col-lg-8 col-md-10 col-sm-12" name="quiz1_cq[{{$student->student_id}}]"         value="{{ $student->quiz1_cq }}" placeholder="CQ" min="0" max="100" step="0.01">
                          <br>
                          <input type="number" class="col-lg-8 col-md-10 col-sm-12" name="quiz1_mcq[{{$student->student_id}}]"        value="{{$student->quiz1_mcq }}" placeholder="MCQ" min="0" max="100" step="0.01">
                        </div>
                      </td>
                      {{-- quiz2 --}}
                      <td>
                        <div class="row justify-center">
                          <input type="number" class="col-lg-8 col-md-10 col-sm-12" name="quiz2_cq[{{$student->student_id}}]"        value="{{ $student->quiz2_cq }}" placeholder="CQ" min="0" max="100" step="0.01">
                          <br>
                          <input type="number" class="col-lg-8 col-md-10 col-sm-12" name="quiz2_mcq[{{$student->student_id}}]"        value="{{$student->quiz2_mcq }}" placeholder="MCQ" min="0" max="100" step="0.01">
                        </div>
                      </td>
                      {{-- quiz3 --}}
                      <td>
                        <div class="row justify-center">
                          <input type="number" class="col-lg-8 col-md-10 col-sm-12" name="quiz3_cq[{{$student->student_id}}]"         value="{{ $student->quiz3_cq }}" placeholder="CQ" min="0" max="100" step="0.01">
                          <br>
                          <input type="number" class="col-lg-8 col-md-10 col-sm-12" name="quiz3_mcq[{{$student->student_id}}]"        value="{{ $student->quiz3_mcq }}" placeholder="MCQ" min="0" max="100" step="0.01">
                        </div>
                      </td>
                      {{-- quiz4 --}}
                      <td>
                        <div class="row justify-center">
                          <input type="number" class="col-lg-8 col-md-10 col-sm-12" name="quiz4_cq[{{$student->student_id}}]"         value="{{$student->quiz4_cq }}" placeholder="CQ" min="0" max="100" step="0.01">
                          <br>
                          <input type="number" class="col-lg-8 col-md-10 col-sm-12" name="quiz4_mcq[{{$student->student_id}}]"        value="{{$student->quiz4_mcq }}" placeholder="MCQ" min="0" max="100" step="0.01">
                        </div>
                      </td>
                    </tr>
                  @endforeach
                </tbody>
              </table>
              <input type="hidden" name="class" value="{{$quiz->class}}">
              <input type="hidden" name="group" value="{{$quiz->group}}">
              <input type="hidden" name="subject" value="{{$quiz->subject}}">
              <input type="hidden" name="teacher_id" value="{{$quiz->teacher_id}}">

              <hr class="my-4">
              <div class="text-center">
                <button type="submit" class="btn btn-primary mt-4">Save Information</button>
              </div> 
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>

@endsection
