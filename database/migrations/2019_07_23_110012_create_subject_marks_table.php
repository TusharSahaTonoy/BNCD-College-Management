<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSubjectMarksTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('subject_marks', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('class');
            $table->string('subject');
            
            $table->decimal('quiz1_cq', 8, 2);
            $table->decimal('quiz1_mcq', 8, 2);

            $table->decimal('quiz2_cq', 8, 2);
            $table->decimal('quiz2_mcq', 8, 2);

            $table->decimal('mid_cq', 8, 2);
            $table->decimal('mid_mcq', 8, 2);

            $table->decimal('quiz3_cq', 8, 2);
            $table->decimal('quiz3_mcq', 8, 2);

            $table->decimal('quiz4_cq', 8, 2);
            $table->decimal('quiz4_mcq', 8, 2);

            $table->decimal('final_cq', 8, 2);
            $table->decimal('final_mcq', 8, 2);

            $table->decimal('att_mark', 8, 2);

            $table->string('student_id');
            $table->string('teacher_id');
            
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
        Schema::dropIfExists('subject_marks');
    }
}
