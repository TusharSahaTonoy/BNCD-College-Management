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
Route::get('user', 'UserController@index')->name('user.index');

Route::get('admin/add', 'UserController@add_admin')->name('user.add_admin');
Route::post('admin/add', 'Auth\RegisterController@register')->name('user.register');

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

Route::get('select-section', 'SubjectTeacherController@selcet_section_form')->name('teacher.select_section_form');
Route::get('select-section/{class}', 'SubjectTeacherController@selcet_section')->name('teacher.select_section');

Route::post('subject-teacher/add', 'SubjectTeacherController@add_subject_teacher')->name('teacher.add_subject_teacher');


//----------------------- Attendance ----------------------------
Route::get('attendance/take-attendance', 'AttendanceController@attendance_subject_list')->name('attendance.take_attendance');

Route::get('attendance/take-attendance/{section}', 'AttendanceController@attendence_form')->name('attendance.attendace_form');
Route::post('attendance/take-attendance/store', 'AttendanceController@attendence_store')->name('attendance.attendace_store');



//------------------------- student ---------------------------

Route::get('student', 'StudentController@index')->name('student.index');

Route::get('student/add', 'StudentController@add_student_form')->name('student.add_student_form');
Route::post('student/add', 'StudentController@add_student')->name('student.add_student');

Route::get('student/view/{id}', 'StudentController@view_student')->name('student.view_student');


//------------------------- section list ---------------------------------
Route::get('section-list/add', 'SectionListController@add_section_list_form')->name('section.add_section_list_form');
Route::post('section-list/add', 'SectionListController@add_section_list')->name('section.add_section_list');




//------------------------- subject list ---------------------------------
Route::get('subject-list/add', 'SubjectListController@add_subject_list_form')->name('subject.add_subject_list_form');
Route::post('subject-list/add', 'SubjectListController@add_subject_list')->name('subject.add_subject_list');

Route::get('subject-list', 'SubjectListController@view_subject_list')->name('subject.view_list');