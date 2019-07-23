<li class="nav-item">
  <a class="nav-link" href=" {{route('dashboard')}} ">
    <i class="ni ni-tv-2 text-primary"></i>Profile
  </a>
</li>

<li class="nav-item">
  <a class="nav-link" href=" {{route('dashboard')}} ">
    <i class="ni ni-tv-2 text-primary"></i>Guide Teacher
  </a>
</li>

<li class="nav-item">
  <a class="nav-link active collapsed" href="#attendance-forms" data-toggle="collapse" role="button" aria-expanded="false" aria-controls="navbar-forms">
    <i class="fas fa-sticky-note text-orange"></i>
    <span class="nav-link-text">Subject </span>
  </a>
  <div class="collapse" id="attendance-forms">
    <ul class="nav nav-sm flex-column">
      <li class="nav-item"><a href="  " class="nav-link">Marks</a></li>
      <li class="nav-item"><a href=" {{route('student.view_all_attendance')}} " class="nav-link">Attendance</a></li>
    </ul>
  </div>
</li>

<li class="nav-item">
  <a class="nav-link" href=" {{route('dashboard')}} ">
    <i class="ni ni-tv-2 text-primary"></i>Result
  </a>
</li>