
@extends('layouts.main')

@section('title','Edit Teacher')


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
            <div class="text-muted text-center mt-2 mb-4"><h3>Edit Teacher</h3>
            </div>
          </div>
          <div class="card-body px-lg-5 py-lg-5">
            <form role="form" action="{{ route('teacher.edit_teacher') }}" method="POST">
              @csrf
              <input type="hidden" class="form-control" name="id" value="{{ $id }}" >
              
              <div class="form-group">
                <div class="input-group input-group-alternative mb-3">
                  <div class="input-group-prepend">
                    <span class="input-group-text"></span>
                  </div>
                  <input type="text" class="form-control" name="teacher_name" value="{{ ((old('teacher_name')==null)? $teacher->teacher_name : old('teacher_name'))  }}" required placeholder="Full Name" >
                </div>
              </div>
              

              <div class="form-group">
                <div class="input-group input-group-alternative mb-3">
                  <div class="input-group-prepend">
                    <span class="input-group-text"></span>
                  </div>
                  <input type="email" class="form-control" name="email" value=" {{ ((old('email')==null)? $teacher->email : old('email'))  }}" placeholder="Email" >
                </div>
              </div>
              <div class="form-group">
                <div class="input-group input-group-alternative mb-3">
                  <div class="input-group-prepend">
                    <span class="input-group-text"></span>
                  </div>
                  <input type="number" class="form-control" name="phone" value=" {{ ((old('phone')==null)? $teacher->phone : old('phone'))  }}" placeholder="Phone" >
                </div>
              </div>
              <div class="form-group">
                <div class="input-group input-group-alternative mb-3">
                  <div class="input-group-prepend">
                    <span class="input-group-text"></span>
                  </div>
                  <input type="text" class="form-control" name="department" value="{{ ((old('department')==null)? $teacher->department : old('department'))  }}" placeholder="Department" >
                </div>
              </div>
              <div class="form-group">
                <div class="input-group input-group-alternative mb-3">
                  <div class="input-group-prepend">
                    <span class="input-group-text"></span>
                  </div>
                  <input type="number" class="form-control" name="join_year" value="{{ ((old('join_year')==null)? $teacher->join_year : old('join_year'))  }}" required placeholder="Join Year" >
                </div>
              </div>
              <div class="text-center">
                <button type="submit" class="btn btn-primary mt-4">Save</button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>

      
@endsection