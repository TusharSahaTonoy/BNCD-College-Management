@extends('layouts.main')

@section('title','edit Studrnt Info')

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
		
		<form action="{{ route('student.edit_student') }}" method="post" enctype="multipart/form-data">
			@csrf
			<div class="card bg-secondary shadow">
        <div class="card-body">
          {{-- student info --}}
          <div>
            <h6 class="heading-title text-muted mb-4">Student Academic Info</h6>
            @include('student.edit.stu_office_and_school')
          </div>
          <hr class="my-4">
          {{-- student basic info --}}
          <div>
            <h6 class="heading-title text-muted mb-4">Student Basic Info</h6>
            @include('student.edit.stu_info')
          </div>
          <hr class="my-4">
          
          {{-- student parents info --}}
          <div>
            <h6 class="heading-title text-muted mb-4">Student Parents Info</h6>
            @include('student.edit.stu_parents')
          </div>
          <hr class="my-4">

          {{-- student guardian --}}
          {{-- <div>
            <h6 class="heading-title text-muted mb-4">Student Gardian Info</h6>
            @include('student.edit.stu_guardian_info')
          </div>--}}
          <hr class="my-4">
          <div class="text-center">
            <button type="submit" class="btn btn-primary mt-4">Save Information</button>
          </div> 
        </div>
      </div>
			
		</form>
	</div>
@endsection
