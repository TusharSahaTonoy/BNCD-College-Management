@extends('layouts.main')

@section('title','Add Subject Info')

@section('content')

	<!-- Page content -->
	<div class="container-fluid mt--7">
    <form action="{{ route('subject.add_subject_list') }}" method="post">
			@csrf
			<div class="card bg-secondary shadow">
        <div class="card-body">
          <h6 class="heading-title text-muted mb-4">Class Info</h6>
          <div class="pl-lg-4">
            <div class="row">
              <div class="col-lg-4">
                <div class="form-group focused">
                  <label class="form-control-label" for="input-first-name">Class</label>
                  <select id="stu_class" class="form-control form-control-alternative selectpicker" name="sub_class" placeholder="" required>
                    <option value="{{old('stu_class')}}">{{old('stu_class')}}</option>
                    @foreach ($classes as $class)
                      <option value="{{$class->class}}">{{$class->class}}</option>
                    @endforeach
                  </select>
                </div>
              </div>
              <div class="col-lg-4">
                <div class="form-group focused">
                  <label class="form-control-label" for="input-last-name">Group</label>
                  <select id="stu_group" class="form-control form-control-alternative" name="sub_group" placeholder="" >
                    <option value="{{old('stu_group')}}">{{old('stu_group')}}</option>
                    <option value="Science">Science</option>
                    <option value="Commerce">Commerce</option>
                    <option value="Arts">Arts</option>
                  </select>
                </div>
              </div>
            </div>
          </div>
          <hr class="my-4">
          <div class="pl-lg-12">
            <h2 class="text-muted mb-4">Subject List</h2>
            <div class="row">
              <div class="col-6">
                <div class="form-group">
                  <label class="form-control-label" for="input-email">Subject 1 </label>
                  <input type="text"  class="form-control form-control-alternative" name="sub_list[]" required placeholder="">
                </div>
              </div>
              <div class="col-6">
                <div class="form-group">
                  <label class="form-control-label" for="input-email">Subject 2 </label>
                  <input type="text"  class="form-control form-control-alternative" name="sub_list[]" required placeholder="">
                </div>
              </div>
              @for ($i = 3; $i <= 15; $i++)
                <div class="col-6">
                  <div class="form-group">
                    <label class="form-control-label" for="input-email">Subject {{$i}} </label>
                    <input type="text"  class="form-control form-control-alternative" name="sub_list[]" placeholder="">
                  </div>
                </div>
              @endfor
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


  <script>
    $('#stu_group').prop('disabled', 'disabled');
    $('#stu_class').on('change', function() {
      if(this.value<9)
      {
        $('#stu_group').prop('disabled', 'disabled');
      }
      else
      {
        $('#stu_group').prop('disabled', false);
        $('#stu_group option[value=""]').attr('selected','selected');        
      }
    });

  </script>
@endsection
