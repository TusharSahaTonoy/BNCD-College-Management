@extends('layouts.main')

@section('title','All Marks')

@section('content')
	<div class="container-fluid mt--7">
    <div class="row justify-content-center">
      <div class="col-12 mb-5 mb-xl-0">
        <div class="card bg-secondary shadow border-0">
          <div class="card-header bg-transparent pb-5">
            <div class="text-muted text-center mt-2 mb-4"><h3>All Marks</h3>
            </div>
          </div>
          <div class="card-body px-lg-5 py-lg-5">
            <div class="table-responsive"><br>
              <table class="table align-items-center table-flush text-center display" id="example"  style="width:100%">
                <thead>
                  <tr>
                    <th scope="col">class</th>
                    <th scope="col">Subject</th>
                    <th scope="col">Quiz1 (CQ - MCQ)</th>
                    <th scope="col">Quiz2</th>
                    <th scope="col">Quiz3</th>
                    <th scope="col">Quiz4</th>
                    <th scope="col">Mid</th>
                    <th scope="col">Final</th>
                  </tr>
                  @foreach ($marks as $mark)
                    <tr>
                      <td>{{$mark->class}}</td>
                      <td>{{$mark->subject}}</td>
                      <td>{{$mark->quiz1_cq}} - {{$mark->quiz1_mcq}}</td>
                      <td>{{$mark->quiz2_cq}} - {{$mark->quiz2_mcq}}</td>
                      <td>{{$mark->quiz3_cq}} - {{$mark->quiz3_mcq}}</td>
                      <td>{{$mark->quiz4_cq}} - {{$mark->quiz4_mcq}}</td>
                      <td>{{$mark->mid_cq}} - {{$mark->mid_mcq}}</td>
                      <td>{{$mark->final_cq}} - {{$mark->final_mcq}}</td>
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