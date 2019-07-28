@extends('layouts.main')

@section('title','edit Studrnt Info')

@section('content')
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
