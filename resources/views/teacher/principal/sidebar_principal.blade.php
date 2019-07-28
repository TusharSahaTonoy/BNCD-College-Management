<li class="nav-item">
  <a class="nav-link" href=" {{route('attendance.all.principal.form')}} ">
    <i class="ni ni-tv-2 text-primary"></i>All Attendence
  </a>
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