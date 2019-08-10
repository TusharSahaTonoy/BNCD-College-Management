<div class="pl-lg-4">
  <div class="row">
    <div class="col-lg-3">
      <div class="form-group focused">
        <label class="form-control-label" for="input-first-name">Board</label>
        <input type="text" class="form-control form-control-alternative" name="ssc_board" value="{{old('ssc_board')}}" placeholder="" >
      </div>
    </div>
    
    <div class="col-lg-3">
      <div class="form-group focused">
        <label class="form-control-label" for="input-first-name">Pass Year</label>
        <input type="number" class="form-control form-control-alternative" name="ssc_pass_year" value="{{old('ssc_pass_year')}}" placeholder="" required >
      </div>
    </div>

    <div class="col-lg-3">
      <div class="form-group focused">
        <label class="form-control-label" for="input-first-name">Registration No</label>
        <input type="number" class="form-control form-control-alternative" name="ssc_regi" value="{{old('ssc_regi')}}" placeholder="" >
      </div>
    </div>

    <div class="col-lg-3">
      <div class="form-group focused">
        <label class="form-control-label" for="input-first-name">SSC Roll</label>
        <input type="number" class="form-control form-control-alternative" name="ssc_roll" value="{{old('ssc_roll')}}" placeholder="" >
      </div>
    </div>
  </div>

  <div class="row">
      
    <div class="col-lg-12">
      <div class="form-group focused">
        <label class="form-control-label" for="input-first-name">School Name</label>
        <input type="text" class="form-control form-control-alternative" name="ssc_school" value="{{old('ssc_school')}}" placeholder="" >
      </div>
    </div>
    
  </div>

  <div class="row">
      
    <div class="col-lg-4">
      <div class="form-group focused">
        <label class="form-control-label" for="input-first-name">Education Year</label>
        <input type="number" class="form-control form-control-alternative" name="ssc_year" value="{{old('ssc_year')}}" placeholder="" >
      </div>
    </div>
    
    <div class="col-lg-4">
      <div class="form-group focused">
        <label class="form-control-label" for="input-last-name">Group</label>
        <select class="form-control form-control-alternative" name="ssc_group" placeholder="" >
          <option value="{{old('stu_group')}}">{{old('stu_group')}}</option>
          <option value="Science">Science</option>
          <option value="Commerce">Commerce</option>
          <option value="Arts">Arts</option>
        </select>
      </div>
    </div>

  </div>

  <div class="row">
    
    <div class="col-lg-4">
      <div class="form-group focused">
        <label class="form-control-label" for="input-first-name">SSC Result</label>
        <input type="text" class="form-control form-control-alternative" name="ssc_result" value="{{old('ssc_result')}}" placeholder="" >
      </div>
    </div>
    <div class="col-lg-5">
      <div class="form-group focused">
        <label class="form-control-label" for="input-first-name">Own District</label>
        <input type="text" class="form-control form-control-alternative" name="ssc_district" value="{{old('ssc_district')}}" placeholder="" >
      </div>
    </div>
    
  </div>

</div>