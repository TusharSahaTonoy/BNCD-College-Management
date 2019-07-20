<div class="pl-lg-4">
  <div class="row">
    <div class="col-lg-4">
      <div class="form-group focused">
        <label class="form-control-label" for="input-username">Nationality</label>
        <input type="text"  class="form-control form-control-alternative" name="nationality" value="{{ old('nationality') }}" placeholder="">
      </div>
    </div>
    <div class="col-lg-4">
      <div class="form-group">
        <label class="form-control-label" for="input-email">Religion</label>
        <input type="text"  class="form-control form-control-alternative" name="religion" value="{{ old('religion') }}" placeholder="">
      </div>
    </div>
    <div class="col-lg-4">
      <div class="form-group">
        <label class="form-control-label" for="input-email">Date Of Birth</label>
        <input type="date"  class="form-control form-control-alternative datepicker" name="date_of_birth" value="{{ old('date_of_birth') }}" placeholder="">
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-lg-6">
      <div class="form-group focused">
        <label class="form-control-label" for="input-first-name">Emargency Contact No 1</label>
        <input type="text" class="form-control form-control-alternative" name="emargency1"  value="{{ old('emargency1') }}" placeholder="">
      </div>
    </div>
    <div class="col-lg-6">
      <div class="form-group focused">
        <label class="form-control-label" for="input-last-name">Emargency Contact No 2</label>
        <input type="text" class="form-control form-control-alternative" name="emargency1" value="{{ old('emargency1') }}" placeholder="">
      </div>
    </div>
  </div>
  <div class="row">
    {{-- image --}}
  </div>
</div>