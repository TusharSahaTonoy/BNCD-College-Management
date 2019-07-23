
@extends('layouts.main')

@section('title','Dashboard')

@section('content')
  <div class="container-fluid mt--7">
    <div class="row justify-content-center">
      <div class="col-xl-8 mb-5 mb-xl-0">
        <div class="card bg-secondary shadow border-0">
          <div class="card-header bg-transparent pb-5">
            <div class="text-muted text-center mt-2 mb-4"><h3>Add Teacher</h3>
            </div>
          </div>
          <div class="card-body px-lg-5 py-lg-5">
            <form role="form" action="{{ route('teacher.add_teacher') }}" method="POST">
              @csrf
              <div class="form-group">
                <div class="input-group input-group-alternative mb-3">
                  <div class="input-group-prepend">
                    <span class="input-group-text"></span>
                  </div>
                  <input type="text" class="form-control" name="teacher_id" value="{{ old('teacher_id') }}" required placeholder="Teacher Id" >
                </div>
              </div>
              <div class="form-group">
                <div class="input-group input-group-alternative mb-3">
                  <div class="input-group-prepend">
                    <span class="input-group-text"></span>
                  </div>
                  <input type="text" class="form-control" name="teacher_name" value="{{ old('teacher_name') }}" required placeholder="Full Name" >
                </div>
              </div>
              <div class="form-group row">
                <div class="input-group input-group-alternative mb-3">
                  <div class="input-group-prepend">
                    <span class="input-group-text"></span>
                  </div>
                  <input type="hidden" name="type" value="teacher">
                  <select name="role" class="form-control" required>
                    <option value="">Select Teacher Role</option>
                    <option value="principal">Principal</option>
                    <option value="vice_principal">Vice Principal</option>
                    <option value="co_odinator">Co-Odinator</option>
                    <option value="subject_teacher">Subject Teacher</option>
                  </select>
                </div>
              </div>

              <div class="form-group">
                <div class="input-group input-group-alternative mb-3">
                  <div class="input-group-prepend">
                    <span class="input-group-text"></span>
                  </div>
                  <input type="email" class="form-control" name="email" value=" {{ old('email') }}" placeholder="Email" >
                </div>
              </div>
              <div class="form-group">
                <div class="input-group input-group-alternative mb-3">
                  <div class="input-group-prepend">
                    <span class="input-group-text"></span>
                  </div>
                  <input type="number" class="form-control" name="phone" value=" {{ old('phone') }}" placeholder="Phone" >
                </div>
              </div>
              <div class="form-group">
                <div class="input-group input-group-alternative mb-3">
                  <div class="input-group-prepend">
                    <span class="input-group-text"></span>
                  </div>
                  <input type="text" class="form-control" name="department" value="{{ old('department') }}" placeholder="Department" >
                </div>
              </div>
              <div class="form-group">
                <div class="input-group input-group-alternative mb-3">
                  <div class="input-group-prepend">
                    <span class="input-group-text"></span>
                  </div>
                  <input type="number" class="form-control" name="join_year" value="{{ old('join_year') }}" required placeholder="Join Year" >
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