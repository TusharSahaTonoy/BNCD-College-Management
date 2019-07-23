<li class="nav-item">
  <a class="nav-link" href=" {{route('dashboard')}} ">
    <i class="ni ni-tv-2 text-primary"></i> Guided Students
  </a>
</li>

<li class="nav-item">
  <a class="nav-link" href=" {{route('dashboard')}} ">
    <i class="ni ni-tv-2 text-primary"></i> All student marks
  </a>
</li>

<li class="nav-item">
  <a class="nav-link active collapsed" href="#attendance-forms" data-toggle="collapse" role="button" aria-expanded="false" aria-controls="navbar-forms">
    <i class="fas fa-sticky-note text-orange"></i>
    <span class="nav-link-text">Attendance</span>
  </a>
  <div class="collapse" id="attendance-forms">
    <ul class="nav nav-sm flex-column">
      <li class="nav-item"><a href=" {{ route('attendance.take_attendance') }} " class="nav-link">Take Attendance</a></li>
      <li class="nav-item"><a href=" {{ route('attendance') }} " class="nav-link">All Attendance</a></li>
      <li class="nav-item"><a href="  " class="nav-link">Student Attendance list</a></li>
    </ul>
  </div>
</li>

<li class="nav-item">
  <a class="nav-link active collapsed" href="#marks-forms" data-toggle="collapse" role="button" aria-expanded="false" aria-controls="navbar-forms">
    <i class="fas fa-sticky-note text-orange"></i>
    <span class="nav-link-text">Marks</span>
  </a>
  <div class="collapse" id="marks-forms">
    <ul class="nav nav-sm flex-column">
      <li class="nav-item"><a href=" {{ route('attendance.take_attendance') }} " class="nav-link">Quiz</a></li>
      <li class="nav-item"><a href=" {{ route('attendance') }} " class="nav-link">Mid</a></li>
      <li class="nav-item"><a href="  " class="nav-link">Final</a></li>
    </ul>
  </div>
</li>

{{-- @if (Auth::user()->role == 'vice_principal')
  <li class="nav-item">
    <a class="nav-link" href=" {{route('dashboard')}} ">
      <i class="ni ni-tv-2 text-primary"></i> All student marks
    </a>
  </li>
@endif --}}

{{-- <li class="nav-item">
  <a class="nav-link active collapsed" href="#attendance-forms" data-toggle="collapse" role="button" aria-expanded="false" aria-controls="navbar-forms">
    <i class="fas fa-sticky-note text-orange"></i>
    <span class="nav-link-text">Marks</span>
  </a>
  <div class="collapse" id="attendance-forms">
    <ul class="nav nav-sm flex-column">
      <li class="nav-item"><a href="  " class="nav-link">All student marks</a></li>
      <li class="nav-item"><a href="  " class="nav-link"></a></li>
    </ul>
  </div>
</li> --}}

