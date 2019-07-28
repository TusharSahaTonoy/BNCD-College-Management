@extends('layouts.main')

@section('title','All Uses')

@section('content')
	<!-- Page content -->
	<div class="container-fluid mt--7">
    <div class="row justify-content-center">
      <div class="col-12 mb-5 mb-xl-0">
        <div class="card bg-secondary shadow border-0">
          <div class="card-header bg-transparent pb-5">
            <div class="text-muted text-center mt-2 mb-4"><h3>All Users</h3>
            </div>
          </div>
          <div class="card-body px-lg-5 py-lg-5">
            <div class="table-responsive"><br>
              <table class="table align-items-center table-flush text-center display" id="example"  style="width:100%">
                <thead>
                  <tr>
                    <th scope="col">#</th>
                    <th scope="col">User Id</th>
                    <th scope="col">Name</th>
                    <th scope="col">Type</th>
                    <th scope="col">Role</th>
                    {{-- <th scope="col">Action</th> --}}
                  </tr>
                  @foreach ($users as $index => $user)
                    <tr>
                      <td>{{++$index}}</td>
                      <td>{{$user->user_id}}</td>
                      <td>{{$user->user_name}}</td>
                      <td>{{$user->type}}</td>
                      <td>{{$user->role}}</td>
                      <td>
                        {{-- <a href=" {{route('user.edit_form',$user->id)}} " class="btn btn-sm btn-warning"><i class="fas fa-edit"></i></a> --}}
                      </td>
                    </tr>
                  @endforeach
                </thead>
              </table>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
@endsection