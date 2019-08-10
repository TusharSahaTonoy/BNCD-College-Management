@extends('layouts.main')

@section('title','View Studrnt Info')

@section('content')
	
	<!-- Page content -->
	<div class="container-fluid mt--7">
		
		<form id="student-info-form" action="{{ route('student.add_student') }}" method="post" enctype="multipart/form-data">
			@csrf
			<div class="card bg-secondary shadow">
        <div class="card-body">
          {{-- office fillable --}}
          <div>
            <h6 class="heading-title text-muted mb-4">Office Fillable</h6>
            @include('student.view.stu_office_and_school')
          </div>
          <hr class="my-4">

          {{-- Admition Related Info --}}
          <div>
            <h6 class="heading-title text-muted mb-4">Admition Related Info</h6>
            @include('student.view.admission_info')
          </div>
          <hr class="my-4">
          
          {{-- student info --}}
          <div>
            <h6 class="heading-title text-muted mb-4">Student Info</h6>
            @include('student.view.stu_info')
          </div>
          <hr class="my-4">

          {{-- Admition Related Info --}}
          <div>
            <h6 class="heading-title text-muted mb-4">3rd And 4th Subject (If any)</h6>
            @include('student.view._3rd_4th_subs')
          </div>
          <hr class="my-4">

          <div>
            <h6 class="heading-title text-muted mb-4">Student Parents Info</h6>
            @include('student.view.stu_parents')
          </div>
          <hr class="my-4">
          
          <div class="text-center">
            <button type="submit" class="btn btn-primary mt-4">Save Information</button>
          </div> 
        </div>
      </div>
		</form>
  </div>
  

  @if(auth()->user()->type=='Admin')
    <script>
      $('#student-info-form :input').attr('disabled','disabled');
      $('#student-info-form button').show();
    </script>
    @else
    <script>
      $('#student-info-form :input').attr('disabled','disabled');
      $('#student-info-form button').hide();
    </script>
  @endif

@endsection
