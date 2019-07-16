<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateStuSchoolInfosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('stu_school_infos', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('class');
            $table->string('group')->nullable();
            $table->string('section');
            $table->string('guide_teacher');
            $table->string('student_id')->unique();
            $table->timestamps();

            $table->foreign('student_id')->references('student_id')->on('students')->onDelete('cascade');
            $table->foreign('guide_teacher')->references('teacher_id')->on('teachers')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('stu_school_infos');
    }
}
