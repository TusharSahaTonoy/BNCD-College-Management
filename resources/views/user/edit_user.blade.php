
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
            <div class="text-muted text-center mt-2 mb-4"><h3>Add Admin</h3>
            </div>
          </div>
          <div class="card-body px-lg-5 py-lg-5">
            <form role="form" action="{{ route('user.register') }}" method="POST">
              @csrf
              <div class="form-group">
                <div class="input-group input-group-alternative mb-3">
                  <div class="input-group-prepend">
                    <span class="input-group-text"><i class="ni ni-hat-3"></i></span>
                  </div>
                  <input type="text" class="form-control" name="user_id" value="{{ old('user_id') }}" readonly >
                </div>
              </div>
              <div class="form-group">
                  <div class="input-group input-group-alternative mb-3">
                    <div class="input-group-prepend">
                      <span class="input-group-text"><i class="ni ni-circle-08"></i></span>
                    </div>
                    <input type="text" class="form-control" name="user_name" value="{{ old('user_name') }}"  >
                  </div>
                </div>
              <input type="hidden" class="form-control" name="type" value="teacher" >
              <input type="hidden" class="form-control" name="role" value="admin">
              <input type="hidden" class="form-control" name="password" value="123456">
              <div class="text-center">
                <button type="submit" class="btn btn-primary mt-4">Add Admin</button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>

      
@endsection