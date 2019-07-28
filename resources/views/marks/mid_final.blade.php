@extends('layouts.main')

@section('title','All Student Mid and Final Marks')

@section('content')

	<!-- Page content -->
	<div class="container-fluid mt--7">
    <div class="card bg-secondary shadow">
      <div class="card-body">
        {{-- <h6 class="heading-title text-muted mb-4">Class Info</h6> --}}
        <div class="pl-lg-4">
          <form action=" {{route('marks.mid_final.store')}} " method="post">
            @csrf
            <div class="table-responsive">
              <table class="table align-items-center table-flush display " id="example"  style="width:100%">
                <thead>
                  <tr>
                    <th scope="col">Student Name (Roll)</th>
                    <th scope="col">Mid CQ</th>
                    <th scope="col">Mid MCQ</th>
                    <th scope="col">Final CQ</th>
                    <th scope="col">Final MCQ</th>
                  </tr>
                </thead>
                <tbody>
                  @foreach ($mid_finals as $student)
                    <tr>
                      <td>
                        <input type="hidden" name="students[]" value="{{$student->student_id}}">
                        {{$student->student->student_name}} ({{$student->student->office->roll}})
                      </td>
                      {{-- mid --}}
                      <td>
                        <div class="row justify-center">
                          <input type="number" class="col-lg-8 col-md-10 col-sm-12" name="mid_cq[{{$student->student_id}}]"          value="{{ $student->mid_cq }}" placeholder="CQ" min="0.00" max="100" step="0.01">
                        </div>
                      </td>
                      {{-- mid --}}
                      <td>
                        <div class="row justify-center">
                          <input type="number" class="col-lg-8 col-md-10 col-sm-12" name="mid_mcq[{{$student->student_id}}]"         value="{{ $student->mid_mcq }}" placeholder="CQ" min="0" max="100" step="0.01">
                        </div>
                      </td>
                      {{-- final --}}
                      <td>
                        <div class="row justify-center">
                          <input type="number" class="col-lg-8 col-md-10 col-sm-12" name="final_cq[{{$student->student_id}}]"         value="{{ $student->final_cq }}" placeholder="CQ" min="0" max="100" step="0.01">
                        </div>
                      </td>
                      {{-- final --}}
                      <td>
                        <div class="row justify-center">
                          <input type="number" class="col-lg-8 col-md-10 col-sm-12" name="final_mcq[{{$student->student_id}}]"         value="{{$student->final_mcq }}" placeholder="CQ" min="0" max="100" step="0.01">
                        </div>
                      </td>
                    </tr>
                  @endforeach
                </tbody>
              </table>
              <input type="hidden" name="class" value="{{$subject->class}}">
              <input type="hidden" name="group" value="{{$subject->group}}">
              <input type="hidden" name="subject" value="{{$subject->subject}}">
              <input type="hidden" name="teacher_id" value="{{$subject->teacher_id}}">

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
