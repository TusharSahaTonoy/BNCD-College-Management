@extends('layouts.main')

@section('title','Add Subject Info')

@section('content')

	<!-- Page content -->
	<div class="container-fluid mt--7">
    <form action="{{ route('teacher.add_subject_teacher') }}" method="post">
			@csrf
			<div class="card bg-secondary shadow">
        <div class="card-body">
          <h6 class="heading-title text-muted mb-4">Class Info</h6>
          <div class="pl-lg-4">
            <div class="row">
              <div class="col-lg-4">
                <div class="form-group focused">
                  <label class="form-control-label" for="input-username">Class</label>
                  <input type="text"  class="form-control form-control-alternative" name="class" value="{{$class}}" readonly placeholder="">
                </div>
              </div>
              <div class="col-lg-4">
                <div class="form-group">
                  <label class="form-control-label" for="input-email">Group</label>
                  <input type="text"  class="form-control form-control-alternative" name="group" value="{{$group}}" readonly placeholder="">
                </div>
              </div>
              <div class="col-lg-4">
                <div class="form-group">
                  <label class="form-control-label" for="input-email">Subject</label>
                  <input type="text"  class="form-control form-control-alternative" name="subject" value="{{$subject}}" readonly placeholder="">
                </div>
              </div>
            </div>
          </div>
          <hr class="my-4">
          <div class="pl-lg-12">
            <h2 class="text-muted mb-4">Section List</h2>
            <div class="row">
              @foreach ($sub_teachers as $sub)
                <div class="col-6">
                  <div class="form-group">
                    <label class="form-control-label" for="input-email">Section</label>
                    <input type="text" class="form-control form-control-alternative" name="sec_list[]" readonly value="{{$sub->section}}" placeholder="">
                  </div>
                </div>
                <div class="col-6">
                  <div class="form-group">
                    <label class="form-control-label" for="input-email">Teacher ID</label>
                    <select class="form-control form-control-alternative" name="teacher_list[]">
                      <option value=""></option>
                      @foreach ($teachers as $teacher)
                        <option value="{{$teacher->teacher_id}}" {{(($sub->teacher_id == $teacher->teacher_id)? "selected":"")}} >{{$teacher->teacher_name}}</option>
                      @endforeach
                    </select>
                  </div>
                </div>
              @endforeach
            </div>
          </div>
          <hr class="my-4">
          <div class="text-center">
            <button type="submit" class="btn btn-primary mt-4">Save Information</button>
          </div> 
        </div>
      </div>
    </form>
  </div>

@endsection