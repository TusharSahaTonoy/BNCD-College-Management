<div class="pl-lg-4">
  <div class="row">

    <div class="col-lg-6">
      <div class="form-group focused">
        <label class="form-control-label" for="input-first-name">3rd Subject</label>
        <select id="stu_group" class="form-control form-control-alternative" name="sub_3rd">
          <Option value="{{old('sub_3rd')}}" >{{old('sub_3rd')}}</Option>
          @foreach ($subs as $sub)
            <Option value=" {{$sub}} "> {{$sub}} </Option>
          @endforeach
        </select>
      </div>
    </div>

    <div class="col-lg-6">
      <div class="form-group focused">
        <label class="form-control-label" for="input-first-name">4th Subject</label>
        <select id="stu_group" class="form-control form-control-alternative" name="sub_4th">
          <Option value="{{old('sub_4th')}}" >{{old('sub_4th')}}</Option>
          @foreach ($subs as $sub)
            <Option value=" {{$sub}} "> {{$sub}} </Option>
          @endforeach
        </select>
      </div>
    </div>

  </div>
</div>