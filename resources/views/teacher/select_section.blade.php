@extends('layouts.main')

@section('title','Select Section Info')

@section('content')

	<!-- Header -->
	{{-- <div class="header pb-8 pt-5 pt-lg-8 d-flex align-items-center" style="min-height: 600px; background-image: url(../assets/img/theme/profile-cover.jpg); background-size: cover; background-position: center top;">
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
  </div> --}}
	<!-- Page content -->
	<div class="container-fluid mt--7">
    <form action="" method="post">
			@csrf
			<div class="card bg-secondary shadow">
        <div class="card-body">
          <h6 class="heading-title text-muted mb-4">Class Info</h6>
          <div class="pl-lg-4">
            <div class="table-responsive">
              <table class="table align-items-center table-flush text-center display" id="example"  style="width:100%">
                <thead>
                  <tr>
                    <th scope="col">Class</th>
                    <th scope="col">Group</th>
                    <th scope="col">Section</th>
                    <th scope="col">Action</th>
                  </tr>
                  @foreach ($all_classes as $classes)
                    @foreach ($classes as $class)
                      <tr>
                        <td>{{$class->class}}</td>
                        <td>{{$class->group}}</td>
                        <td>{{$class->section}}</td>
                        <td><a href=" {{route('teacher.select_section',$class->class.','.$class->group.','.$class->section)}} ">Assign</a></td>
                      </tr>
                    @endforeach
                  @endforeach
                </thead>
              </table>
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
