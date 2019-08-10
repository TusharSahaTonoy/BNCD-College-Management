<div class="pl-lg-4">
  <h2 class="text-muted mb-4">Father Info</h2>
  <div class="row">
    <div class="col-lg-12">
      <div class="form-group focused">
        <label class="form-control-label" for="input-username">Father Name</label>
        <input type="text"  class="form-control form-control-alternative" name="father_name" value="{{ old('father_name') }}" placeholder="" required>
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-lg-6">
      <div class="form-group focused">
        <label class="form-control-label" for="input-username">Occupation</label>
        <input type="text"  class="form-control form-control-alternative" name="father_occ" value="{{ old('father_occ') }}" placeholder=""
        >
      </div>
    </div>
    <div class="col-lg-6">
      <div class="form-group focused">
        <label class="form-control-label" for="input-username">Position</label>
        <input type="text"  class="form-control form-control-alternative" name="father_pos" value="{{ old('father_pos') }}" placeholder="">
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-lg-8">
      <div class="form-group focused">
        <label class="form-control-label" for="input-username">Institute Name</label>
        <input type="text"  class="form-control form-control-alternative" name="father_ins" value="{{ old('father_ins') }}" placeholder="">
      </div>
    </div>
    <div class="col-lg-4">
      <div class="form-group focused">
        <label class="form-control-label" for="input-username">Income</label>
        <input type="number"  class="form-control form-control-alternative" name="father_income" value="{{ old('father_income') }}" placeholder="">
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-lg-5">
      <div class="form-group focused">
        <label class="form-control-label" for="input-username">Mobile No.</label>
        <input type="number" class="form-control form-control-alternative" name="father_mobile" value="{{ old('father_mobile') }}" minlength="11" maxlength="14" placeholder="" required>
        @error('father_mobile')
          <span class="invalid-feedback" role="alert">
              <strong>{{ $message }}</strong>
          </span>
        @enderror
      </div>
    </div>

    <div class="col-lg-7">
      <div class="form-group focused">
        <label class="form-control-label" for="input-username">Father Image</label>
          <input type="file" class="form-control form-control-alternative" name="father_image" required class="custom-file-input" id="image" value="{{ old('father_image') }}" onchange="document.getElementById('father_image').src = window.URL.createObjectURL(this.files[0])">
          <img id="father_image" width="200px" />
      </div>
    </div>

  </div>

  <br>
  <h2 class="text-muted mb-4">Mother Info</h2>
  <div class="row">
    <div class="col-lg-12">
      <div class="form-group focused">
        <label class="form-control-label" for="input-username">Mother Name</label>
        <input type="text"  class="form-control form-control-alternative" name="mother_name" value="{{ old('mother_name') }}" placeholder="" required>
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-lg-6">
      <div class="form-group focused">
        <label class="form-control-label" for="input-username">Occupation</label>
        <input type="text"  class="form-control form-control-alternative" name="mother_occ" value="{{ old('mother_occ') }}" placeholder="">
      </div>
    </div>
    <div class="col-lg-6">
      <div class="form-group focused">
        <label class="form-control-label" for="input-username">Position</label>
        <input type="text"  class="form-control form-control-alternative" name="mother_pos" value="{{ old('mother_pos') }}" placeholder="">
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-lg-8">
      <div class="form-group focused">
        <label class="form-control-label" for="input-username">Institute Name</label>
        <input type="text"  class="form-control form-control-alternative" name="mother_ins" value="{{ old('mother_ins') }}" placeholder="">
      </div>
    </div>
    <div class="col-lg-4">
      <div class="form-group focused">
        <label class="form-control-label" for="input-username">Income</label>
        <input type="number"  class="form-control form-control-alternative" name="mother_income" value="{{ old('mother_income') }}" placeholder="">
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-lg-5">
      <div class="form-group focused">
        <label class="form-control-label" for="input-username">Mobile No.</label>
        <input type="number" class="form-control form-control-alternative" name="mother_mobile" value="{{ old('mother_mobile') }}" minlength="11" maxlength="14" placeholder="" required>
      </div>
    </div>
    
    <div class="col-lg-7">
      <div class="form-group focused">
        <label class="form-control-label" for="input-username">Mother Image</label>
          <input type="file" class="form-control form-control-alternative" name="mother_image" required class="custom-file-input" id="image" value="{{ old('mother_image') }}" onchange="document.getElementById('mother_image').src = window.URL.createObjectURL(this.files[0])">
          <img id="mother_image" width="200px" />
      </div>
    </div>

  </div>
</div>
