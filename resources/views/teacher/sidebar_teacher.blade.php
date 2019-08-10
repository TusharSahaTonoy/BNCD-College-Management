{{-- <li class="nav-item">
  <a class="nav-link" href="{{route('dashboard')}}">
    <i class="ni ni-tv-2 text-primary"></i> Profile
  </a>
</li> --}}

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
      <li class="nav-item"><a href=" {{ route('marks.subject_list') }} " class="nav-link">Give Marks</a></li>
    </ul>
  </div>
</li>

@switch(Auth::user()->role)
  @case('principal')
    @include('teacher.principal.sidebar_principal')      
    @break

  @case('vice_principal')
    @include('teacher.vice_principal.sidebar_vice_principal')
    @break

  @case('co_odinator')
    @include('teacher.co_odinator.sidebar_co_odinator')
    @break
  @default
    @include('teacher.sidebar_teacher')
@endswitch



