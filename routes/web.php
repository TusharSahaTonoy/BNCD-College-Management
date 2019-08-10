<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('layouts.dashboard');
})->name('dashboard');

Route::get('/home', function () {
    return view('layouts.dashboard');
});

//---------------------- user -------------------------
Route::get('users', 'UserController@index')->name('user.index');

Route::get('admin/add', 'UserController@add_admin_form')->name('user.add_admin_form');
Route::post('admin/add', 'UserController@add_admin')->name('user.register');

Route::get('login', 'UserController@login_form')->name('user.loin_form');
Route::get('login', 'UserController@login_form')->name('login');

Route::post('login', 'Auth\LoginController@login')->name('user.login');

Route::get('user/edit/{id}', 'UserController@edit_user_form')->name('user.edit_form');
Route::post('user/edit', 'UserController@edit_user')->name('user.edit');



Route::post('logout', 'Auth\LoginController@logout')->name('logout');



//---------------------- teacher -------------------------

Route::get('teacher', 'TeacherController@index')->name('teacher.index');

Route::get('teacher/add', 'TeacherController@add_teacher_form')->name('teacher.add_teacher_form');
Route::post('teacher/add', 'TeacherController@add_teacher')->name('teacher.add_teacher');

Route::get('teacher/view/{id}', 'TeacherController@view_teacher')->name('teacher.view_teacher');

Route::get('teacher/edit/{id}', 'TeacherController@edit_teacher_form')->name('teacher.edit_teacher_form');
Route::post('teacher/edit', 'TeacherController@edit_teacher')->name('teacher.edit_teacher');

Route::get('teacher/delete/{id}', 'TeacherController@delete_teacher')->name('teacher.delete_teacher');


//---------------------- Subject Teacher ------------------

Route::get('teacher-assign', 'SubjectTeacherController@index')->name('teacher.sub_teachers');
Route::get('teacher-assign/subject-list', 'SubjectTeacherController@sub_list_form')->name('teacher.sub_list');
Route::get('teacher-assign/select-subject/{class}', 'SubjectTeacherController@select_sub')->name('teacher.select_subject');

Route::post('subject-teacher/add', 'SubjectTeacherController@add_subject_teacher')->name('teacher.add_subject_teacher');


//---------------------- Marks ---------------------------------
Route::get('marks/give-marks', 'MarksController@subject_list_teacher')->name('marks.subject_list');

Route::get('marks/give-marks/quiz/{subject}', 'MarksController@quiz_form')->name('marks.quiz.form');
Route::post('marks/give-marks/quiz', 'MarksController@store_marks_quiz')->name('marks.quiz.store');

Route::get('marks/give-marks/mid-final/{subject}', 'MarksController@mid_final_form')->name('marks.mid_final.form');
Route::post('marks/give-marks/mid-final', 'MarksController@store_marks_mid_final')->name('marks.mid_final.store');


//----------------------- Attendance ----------------------------
Route::get('attendance', 'AttendanceController@index')->name('attendance');

Route::get('attendance/take-attendance', 'AttendanceController@attendance_subject_list')->name('attendance.take_attendance');

Route::get('attendance/take-attendance/{section}', 'AttendanceController@attendence_form')->name('attendance.attendance_form');
Route::post('attendance/take-attendance/store', 'AttendanceController@attendence_store')->name('attendance.attendance_store');

Route::get('attendance/view/{attendance}', 'AttendanceController@view_attendance')->name('attendance.view');

Route::get('attendance/view-all/principal','AttendanceController@view_attendance_principal_form')->name('attendance.all.principal.form');
Route::get('attendance/view-all/principal/{class}','AttendanceController@view_attendance_principal')->name('attendance.all.principal');

//------------------------- student ---------------------------

Route::get('student', 'StudentController@index')->name('student.index');

Route::get('student/add', 'StudentController@add_student_form')->name('student.add_student_form');
Route::post('student/add', 'StudentController@add_student')->name('student.add_student');

Route::get('student/view/{id}', 'StudentController@view_student')->name('student.view');
Route::post('student/edit/', 'StudentController@edit_student')->name('student.edit_student');

Route::get('student/attendence', 'StudentController@view_all_attendance')->name('student.view_all_attendance');

Route::get('student/marks', 'StudentController@view_marks')->name('student.view_marks');

//--------------------------- parents ----------------------------------
Route::get('parents/student-attendance','ParentsController@stu_att_summary')->name('parents.student_attendance');

Route::get('parents/student-marks','ParentsController@view_marks_stu')->name('parents.student_marks');

//------------------------- section list ---------------------------------
// Route::get('section-list/add', 'SectionListController@add_section_list_form')->name('section.add_section_list_form');
// Route::post('section-list/add', 'SectionListController@add_section_list')->name('section.add_section_list');




//------------------------- subject list ---------------------------------
Route::get('subject-list/add', 'SubjectListController@add_subject_list_form')->name('subject.add_subject_list_form');
Route::post('subject-list/add', 'SubjectListController@add_subject_list')->name('subject.add_subject_list');

Route::get('subject-list', 'SubjectListController@view_subject_list')->name('subject.view_list');