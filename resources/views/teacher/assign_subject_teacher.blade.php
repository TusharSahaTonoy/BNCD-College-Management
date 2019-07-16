@extends('layouts.main')

@section('title','Add Subject Info')

@section('content')

	<!-- Header -->
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
                  <input type="text"  class="form-control form-control-alternative" name="sub_class" value="{{$class}}" readonly placeholder="">
                </div>
              </div>
              <div class="col-lg-4">
                <div class="form-group">
                  <label class="form-control-label" for="input-email">Group</label>
                  <input type="text"  class="form-control form-control-alternative" name="sub_group" value="{{$group}}" readonly placeholder="">
                </div>
              </div>
              <div class="col-lg-4">
                <div class="form-group">
                  <label class="form-control-label" for="input-email">Section</label>
                  <input type="text"  class="form-control form-control-alternative" name="sub_section" value="{{$section}}" readonly placeholder="">
                </div>
              </div>
            </div>
          </div>
          <hr class="my-4">
          <div class="pl-lg-12">
            <h2 class="text-muted mb-4">Subject List</h2>
            <div class="row">
              @foreach ($subjects as $subject)
                <div class="col-6">
                  <div class="form-group">
                    <label class="form-control-label" for="input-email">Subject name </label>
                    <input type="text"  class="form-control form-control-alternative" name="sub_list[]" readonly value=" {{$subject->subject}} " placeholder="">
                  </div>
                </div>
                <div class="col-6">
                  <div class="form-group">
                    <label class="form-control-label" for="input-email">Teacher ID</label>
                    <input class="form-control form-control-alternative" name="teacher_list[]" placeholder="">
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