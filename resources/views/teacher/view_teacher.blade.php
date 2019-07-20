
@extends('layouts.main')

@section('title','Dashboard')


@section('content')
  <!-- Header -->
  <div class="header bg-gradient-primary pb-8 pt-5 pt-md-8">
    <div class="container-fluid">
      <div class="header-body">
        @if (count($errors)>0)
          @foreach ($errors->all() as $error)
            <div class="alert alert-danger">{{ $error }}</div>
          @endforeach
        @endif
      </div>
    </div>
  </div>
  <div class="container-fluid mt--7">
    <div class="row justify-content-center">
      <div class="col-xl-8 mb-5 mb-xl-0">
        <div class="card bg-secondary shadow border-0">
          <div class="card-header bg-transparent pb-5">
            <div class="text-muted text-center mt-2 mb-4"><h3>View Teacher</h3>
            </div>
          </div>
          <div class="card-body px-lg-5 py-lg-5">
              <div class="form-group">
                <div class="input-group input-group-alternative mb-3">
                  <div class="input-group-prepend">
                    <span class="input-group-text"> Teacher Id</span>
                  </div>
                  <input type="text" class="form-control" name="teacher_id" value="{{$teacher->teacher_id }}" readonly laceholder="Teacher Id" >
                </div>
              </div>
              <div class="form-group">
                <div class="input-group input-group-alternative mb-3">
                  <div class="input-group-prepend">
                    <span class="input-group-text"> Name</span>
                  </div>
                  <input type="text" class="form-control" name="teacher_name" value="{{ $teacher->teacher_name }}" readonly laceholder="Full Name" >
                </div>
              </div>
              <div class="form-group">
                <div class="input-group input-group-alternative mb-3">
                  <div class="input-group-prepend">
                    <span class="input-group-text">Role </span>
                  </div>
                  <input type="email" class="form-control" name="email" value=" {{ $teacher->user->role }}" readonly >
                </div>
              </div>

              <div class="form-group">
                <div class="input-group input-group-alternative mb-3">
                  <div class="input-group-prepend">
                    <span class="input-group-text">Email </span>
                  </div>
                  <input type="email" class="form-control" name="email" value=" {{ $teacher->email }}" readonly >
                </div>
              </div>
              <div class="form-group">
                <div class="input-group input-group-alternative mb-3">
                  <div class="input-group-prepend">
                    <span class="input-group-text">Phone </span>
                  </div>
                  <input type="number" class="form-control" name="phone" value=" {{$teacher->phone }}" readonly >
                </div>
              </div>
              <div class="form-group">
                <div class="input-group input-group-alternative mb-3">
                  <div class="input-group-prepend">
                    <span class="input-group-text">Department </span>
                  </div>
                  <input type="text" class="form-control" name="department" value="{{ $teacher->department}}" readonly >
                </div>
              </div>
              <div class="form-group">
                <div class="input-group input-group-alternative mb-3">
                  <div class="input-group-prepend">
                    <span class="input-group-text">Join Year</span>
                  </div>
                  <input type="number" class="form-control" name="join_year" value="{{ $teacher->join_year}}" readonly >
                </div>
              </div>
          </div>
        </div>
      </div>
    </div>
  </div>

      
@endsection