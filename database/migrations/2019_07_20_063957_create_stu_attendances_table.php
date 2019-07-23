<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateStuAttendancesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('stu_attendances', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('student_id');
            $table->string('class');
            $table->string('group')->nullable();
            $table->string('subject');
            $table->string('section');
            $table->string('teacher_id');
            $table->tinyInteger('attendance');
            $table->date('att_date');
            $table->timestamps();

            $table->foreign('teacher_id')->references('teacher_id')->on('teachers')->onDelete('cascade');
            $table->foreign('student_id')->references('student_id')->on('students')->onDelete('cascade');

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('stu_attendances');
    }
}
