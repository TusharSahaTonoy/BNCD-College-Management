<div class="pl-lg-4">
  <div class="row">
    <div class="col-lg-6">
      <div class="form-group focused">
        <label class="form-control-label" for="input-first-name">Nomination List No</label>
        <input type="text" class="form-control form-control-alternative" name="nomination_no" value="{{((old('stu_roll')== null)? $student->student_id : old('stu_roll')) }}" placeholder="" >
      </div>
    </div>
    <div class="col-lg-6">
      <div class="form-group focused">
        <label class="form-control-label" for="input-first-name">Student Security Code</label>
        <input type="text" class="form-control form-control-alternative" name="seccurity_code" value="{{((old('stu_roll')== null)? $student->student_id : old('stu_roll')) }}" placeholder="" required >
      </div>
    </div>
  </div>
</div>