<li class="nav-item">
  <a class="nav-link active collapsed" href="#user-forms" data-toggle="collapse" role="button" aria-expanded="false" aria-controls="navbar-forms">
    <i class="fas fa-sticky-note text-orange"></i>
    <span class="nav-link-text">User</span>
  </a>
  <div class="collapse" id="user-forms">
    <ul class="nav nav-sm flex-column">
      <li class="nav-item"><a href=" {{route('user.index')}} " class="nav-link">All Users</a></li>
      <li class="nav-item"><a href=" {{route('user.add_admin')}} " class="nav-link">Add Admin</a></li>
    </ul>
  </div>
</li>
<li class="nav-item">
  <a class="nav-link active collapsed" href="#student-forms" data-toggle="collapse" role="button" aria-expanded="false" aria-controls="navbar-forms">
    <i class="fas fa-sticky-note text-orange"></i>
    <span class="nav-link-text">Student</span>
  </a>
  <div class="collapse" id="student-forms">
    <ul class="nav nav-sm flex-column">
      <li class="nav-item"><a href=" {{route('student.add_student_form')}} " class="nav-link">Add Student</a></li>
      <li class="nav-item"><a href=" {{route('student.index')}} " class="nav-link">All Student</a></li>
      <li class="nav-item"><a href=" {{route('student.index')}} " class="nav-link">Change Guide Teacher</a></li>
    </ul>
  </div>
</li>
<li class="nav-item">
  <a class="nav-link active collapsed" href="#teacher-forms" data-toggle="collapse" role="button" aria-expanded="false" aria-controls="navbar-forms">
    <i class="fas fa-sticky-note text-orange"></i>
    <span class="nav-link-text">Teacher</span>
  </a>
  <div class="collapse" id="teacher-forms">
    <ul class="nav nav-sm flex-column">
      <li class="nav-item"><a href=" {{route('teacher.add_teacher_form')}} " class="nav-link">Add Teacher</a></li>
      <li class="nav-item"><a href=" {{route('teacher.index')}} " class="nav-link">All Teacher</a></li>
      <li class="nav-item"><a href=" {{route('teacher.select_section_form')}} " class="nav-link">Assign Subject Teacher</a></li>
    </ul>
  </div>
</li>

<li class="nav-item">
  <a class="nav-link active collapsed" href="#class-forms" data-toggle="collapse" role="button" aria-expanded="false" aria-controls="navbar-forms">
    <i class="fas fa-sticky-note text-orange"></i>
    <span class="nav-link-text">Class</span>
  </a>
  <div class="collapse" id="class-forms">
    <ul class="nav nav-sm flex-column">
      <li class="nav-item"><a href=" {{route('subject.add_subject_list_form')}} " class="nav-link">Add Class Subjects</a></li>
      <li class="nav-item"><a href=" {{route('subject.view_list')}} " class="nav-link">View Class Subjects</a></li>
      
      <li class="nav-item"><a href=" {{route('section.add_section_list_form')}} " class="nav-link">Add Class Sections</a></li>
      <li class="nav-item"><a href=" {{route('section.add_section_list_form')}} " class="nav-link">View Class Sections</a></li>
    </ul>
  </div>
</li>

<li class="nav-item">
  <a class="nav-link" href=" {{route('user.login')}} ">
    <i class="ni ni-spaceship"></i> 
  </a>
</li>