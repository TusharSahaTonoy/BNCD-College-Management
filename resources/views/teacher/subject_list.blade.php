@extends('layouts.main')

@section('title','Select Subject Info')

@section('content')

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
                    <th scope="col">Subject</th>
                    <th scope="col">Action</th>
                  </tr>
                  @foreach ($subjects as $subject)

                  <tr>
                    <td>{{$subject->class}}</td>
                    <td>{{$subject->group}}</td>
                    <td>{{$subject->subject}}</td>
                    <td><a href=" {{route('teacher.select_subject',$subject->class.','.$subject->group.','.$subject->subject)}} ">Assign</a></td>
                  </tr>
                    {{-- @foreach ($subject->sec_list as $sec)
                      
                    @endforeach --}}
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
