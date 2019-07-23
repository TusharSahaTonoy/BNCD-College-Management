@extends('layouts.main')

@section('title','Add Section Info')

@section('content')

	<!-- Page content -->
	<div class="container-fluid mt--7">
    <form action="{{ route('section.add_section_list') }}" method="post">
			@csrf
			<div class="card bg-secondary shadow">
        <div class="card-body">
          <h6 class="heading-title text-muted mb-4">Class Info</h6>
          <div class="pl-lg-4">
            <div class="row">
              <div class="col-lg-4">
                <div class="form-group focused">
                  <label class="form-control-label" for="input-username">Class</label>
                  <select name="sub_class" class="form-control form-control-alternative" required>
                    <option value="" >Select Class</option>
                    @foreach ($class_list as $class)
                      <option value=" {{$class->class}} "> {{$class->class}} </option>
                    @endforeach
                  </select>
                </div>
              </div>
              <div class="col-lg-4">
                <div class="form-group">
                  <label class="form-control-label" for="input-email">Group</label>
                  <select name="sub_class" class="form-control form-control-alternative" required>
                      <option value="" >Select Group</option>
                      <option value="Science" >Science</option>
                      <option value="Commerce" >Commerce</option>
                      <option value="Arts" >Arts</option>
                    </select>
                </div>
              </div>
            </div>
          </div>
          <hr class="my-4">
          <div class="pl-lg-12">
            <h2 class="text-muted mb-4">Section List</h2>
            <div class="row">
              <div class="col-4">
                <div class="form-group">
                  <label class="form-control-label" for="input-email">Total Number Of Section (Max 10) </label>
                  <input type="number"  class="form-control form-control-alternative" name="sec_list" min="1" max="10" placeholder="">
                </div>
              </div>
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
