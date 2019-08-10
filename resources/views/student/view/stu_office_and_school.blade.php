<div class="pl-lg-4">
    <div class="row">
      <div class="col-lg-4">
        <div class="form-group focused">
          <label class="form-control-label" for="input-first-name">ID (Board) </label>
          <input type="text" class="form-control form-control-alternative" name="board_id" value = "{{((old('board_id')== null)? $student->board_id : old('board_id')) }}" placeholder="" required >
        </div>
      </div>
    </div>
    <div class="row">

      <div class="col-lg-4">
        <div class="form-group focused">
          <label class="form-control-label" for="input-first-name">Admission Date</label>
          <input type="date" class="form-control form-control-alternative" name="admission_date" value = " {{((old('admission_date')== null)? $student->office->admission_date : old('admission_date')) }}" placeholder="" required>
        </div>
      </div>

      <div class="col-lg-4">
        <div class="form-group focused">
          <label class="form-control-label" for="input-first-name">Class</label>
          <select id="stu_class" class="form-control form-control-alternative selectpicker" name="stu_class" placeholder="" required>
            <option value="{{((old('stu_class')== null)? $student->office->class : old('stu_class')) }}">{{((old('stu_class')== null)? $student->office->class : old('stu_class')) }}</option>
            @foreach (range(1, 12) as $class)
              <option value="{{$class}}">{{$class}}</option>
            @endforeach
          </select>
        </div>
      </div>
      
      <div class="col-lg-4">
        <div class="form-group focused">
          <label class="form-control-label" for="input-last-name">Section</label>
          <select class="form-control form-control-alternative selectpicker" name="stu_section" placeholder="" required>
            <option value="{{((old('stu_section')== null)? $student->office->section : old('stu_section')) }}">{{((old('stu_section')== null)? $student->office->section : old('stu_section')) }}</option>
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
          <label class="form-control-label" for="input-last-name">Group</label>
          <select id="stu_group" class="form-control form-control-alternative" name="stu_group" placeholder="" >
            <option value="{{((old('stu_group')== null)? $student->office->group : old('stu_group')) }}">{{((old('stu_group')== null)? $student->office->group : old('stu_group')) }}</option>
            <option value="Science">Science</option>
            <option value="Commerce">Commerce</option>
            <option value="Arts">Arts</option>
          </select>
        </div>
      </div>

      <div class="col-lg-4">
        <div class="form-group focused">
          <label class="form-control-label" for="input-first-name">Roll</label>
          <input type="number" class="form-control form-control-alternative" name="stu_roll" value="{{((old('stu_roll')== null)? $student->student_id : old('stu_roll')) }}" placeholder="" required >
        </div>
      </div>
      
      <div class="col-lg-4">
        <div class="form-group focused">
          <label class="form-control-label" for="input-first-name">Guide Teacher ID</label>
          <select class="form-control form-control-alternative" name="guide_teacher" required>
            <option value="{{((old('guide_teacher')== null)? $student->school->guide_teacher : old('guide_teacher')) }}" >{{((old('guide_teacher')== null)? $student->school->guide_teacher : old('guide_teacher')) }}</option>
            @foreach ($teachers as $teacher)
              <option value=" {{$teacher->teacher_id}} "> {{$teacher->teacher_name}} </option>
            @endforeach
          </select>
        </div>
      </div>

    </div>

  </div>

  <script>
    $('#stu_group').prop('disabled', 'disabled');
    $('#stu_class').on('change', function() {
      if(this.value<9)
      {
        $('#stu_group').prop('disabled', 'disabled');
        // $('#ss').prop('disabled', 'disabled');
      }
      else
      {
        $('#stu_group').prop('disabled', false);
        $('#stu_group option[value=""]').attr('selected','selected');        
      }
    });

  </script>
  