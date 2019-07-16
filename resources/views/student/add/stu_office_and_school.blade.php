<div class="pl-lg-4">
    <div class="row">
      <div class="col-lg-12">
        <div class="form-group focused">
          <label class="form-control-label" for="input-username">Student Name</label>
          <input type="text"  class="form-control form-control-alternative" name="stu_name" value=" {{old('stu_name')}} " placeholder="Name" >
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-lg-4">
        <div class="form-group focused">
          <label class="form-control-label" for="input-first-name">Class</label>
          <input type="number" class="form-control form-control-alternative" name="stu_class" value="{{old('stu_class')}}" min="1" max="12" placeholder="" >
        </div>
      </div>
      <div class="col-lg-4">
        <div class="form-group focused">
          <label class="form-control-label" for="input-last-name">Group</label>
          <select class="form-control form-control-alternative" name="stu_group" placeholder="" >
            <option value="{{old('stu_group')}}">{{old('stu_group')}}</option>
            <option value="Science">Science</option>
            <option value="Commerce">Commerce</option>
            <option value="Arts">Arts</option>
          </select>
        </div>
      </div>
      <div class="col-lg-4">
        <div class="form-group focused">
          <label class="form-control-label" for="input-last-name">Section</label>
          <select class="form-control form-control-alternative selectpicker" name="stu_section" placeholder="" >
            <option value="{{old('stu_section')}}">{{old('stu_section')}}</option>
            @foreach (range('A', 'J') as $section)
              <option value=" {{$section}} ">{{$section}}</option>
            @endforeach
            
          </select>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-lg-4">
        <div class="form-group focused">
          <label class="form-control-label" for="input-first-name">Roll</label>
          <input type="number" class="form-control form-control-alternative" name="stu_roll" value="{{old('stu_roll')}}" placeholder="" >
        </div>
      </div>
      <div class="col-lg-4">
        <div class="form-group focused">
          <label class="form-control-label" for="input-first-name">Guide Teacher ID</label>
          <input type="text" class="form-control form-control-alternative" name="guide_teacher" value="{{old('guide_teacher')}}" placeholder="" >
        </div>
      </div>
      <div class="col-lg-4">
        <div class="form-group focused">
          <label class="form-control-label" for="input-first-name">Admition Date</label>
          <input type="date" class="form-control form-control-alternative" name="admition_date" value="{{old('admition_date')}}" placeholder="" >
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-lg-6">
        <div class="form-group focused">
          <label class="form-control-label" for="input-first-name">Nomination List No</label>
          <input type="text" class="form-control form-control-alternative" name="nomination_no" value="{{old('nomination_no')}}" placeholder="" >
        </div>
      </div>
      <div class="col-lg-6">
        <div class="form-group focused">
          <label class="form-control-label" for="input-first-name">Student Security Code</label>
          <input type="text" class="form-control form-control-alternative" name="seccurity_code" value="{{old('seccurity_code')}}" placeholder="" >
        </div>
      </div>
    </div>
  </div>