<div class="pl-lg-4">
  <div class="row">
    <div class="col-lg-12">
      <div class="form-group focused">
        <label class="form-control-label" for="input-username">Student Name</label>
        <input type="text"  class="form-control form-control-alternative" name="stu_name" value=" {{old('stu_name')}} " required placeholder="Name" >
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-lg-4">
      <div class="form-group">
        <label class="form-control-label" for="input-email">Date Of Birth</label>
        <input type="date"  class="form-control form-control-alternative datepicker" name="date_of_birth" value="{{ old('date_of_birth') }}" placeholder="">
      </div>
    </div>
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
  </div>

  {{-- <div class="row">
    <div class="col-lg-6">
      <div class="form-group focused">
        <label class="form-control-label" for="input-first-name">Emargency Contact No 1</label>
        <input type="number" class="form-control form-control-alternative @error('emergency1') is-invalid @enderror" name="emergency1"  value="{{ old('emergency1') }}" placeholder="">
        @error('emergency1')
          <span class="invalid-feedback" role="alert">
              <strong>{{ $message }}</strong>
          </span>
        @enderror
      </div>
    </div>
    <div class="col-lg-6">
      <div class="form-group focused">
        <label class="form-control-label" for="input-last-name">Emargency Contact No 2</label>
        <input type="number" class="form-control form-control-alternative  @error('emergency2') is-invalid @enderror" name="emergency2" value="{{ old('emergency2') }}" placeholder="">
        @error('emergency2')
          <span class="invalid-feedback" role="alert">
              <strong>{{ $message }}</strong>
          </span>
        @enderror
      </div>
    </div>
  </div> --}}
  <div class="row">
    <div class="col-lg-12">
      <div class="form-group focused">
        <label class="form-control-label" for="input-username">Student Image</label>
          <input type="file" class="form-control form-control-alternative" name="stu_image" required class="custom-file-input" id="image" value="{{ old('stu_image') }}" onchange="document.getElementById('stu_image').src = window.URL.createObjectURL(this.files[0])">
          <img id="stu_image" width="200px" />
      </div>
    </div>
  </div>
  
</div>