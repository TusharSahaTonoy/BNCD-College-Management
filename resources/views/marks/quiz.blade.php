@extends('layouts.main')

@section('title','All Attendence')

@section('content')

	<!-- Page content -->
	<div class="container-fluid mt--7">
    <div class="card bg-secondary shadow">
      <div class="card-body">
        <h6 class="heading-title text-muted mb-4">Class Info</h6>
        <div class="pl-lg-4">
          <form action="" method="post">
            <div class="table-responsive">
              <table class="table align-items-center table-flush text-center display " id="example"  style="width:100%">
                <thead>
                  <tr>
                    <th scope="col">Student Name (Roll)</th>
                    <th scope="col">Quiz 1</th>
                    <th scope="col">Quiz 2</th>
                    <th scope="col">Quiz 1</th>
                    <th scope="col">Quiz 2</th>
                  </tr>
                  {{-- @foreach ($all_att as $att)
                    <tr>
                      <td>{{$att->class}}</td>
                      <td>{{$att->group}}</td>
                      <td>{{$att->subject}}</td>
                      <td>{{$att->section}}</td>
                      <td>{{$att->att_date}}</td>
                      <td><a href=" {{route('attendance.view',$att->class.','.$att->group.','.$att->subject.','.$att->section.','.$att->att_date)}} ">View</a></td>
                    </tr>
                  @endforeach --}}
                </thead>
                <tbody>
                  @foreach ($students as $student)
                    <tr>
                      <td>
                        {{$student->student->student_name}} ({{$student->student->office->roll}})
                      </td>
                      @for ($i = 1; $i < 5; $i++)
                        <td>
                          <div class="row">
                            <input type="number" class="col-lg-8 col-md-10 col-sm-12" name="quiz{{$i}}_cq[]" placeholder="CQ" min="0" max="100">
                            <br>
                            <input type="number" class="col-lg-8 col-md-10 col-sm-12" name="quiz{{$i}}_mcq[]" placeholder="MCQ" min="0" max="100">
                          </div>
                        </td>
                      @endfor
                    </tr>
                  @endforeach
                </tbody>
              </table>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>

@endsection
