<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateStuParentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('stu_parents', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('father_name');
            $table->string('father_occu')->nullable();
            $table->string('father_position')->nullable();
            $table->string('father_ins')->nullable();
            $table->string('father_income')->nullable();
            $table->string('father_mobile');
            $table->string('father_image')->nullable();

            $table->string('mother_name');
            $table->string('mother_occu')->nullable();
            $table->string('mother_position')->nullable();
            $table->string('mother_ins')->nullable();
            $table->string('mother_income')->nullable();
            $table->string('mother_mobile');
            $table->string('mother_image')->nullable();
            $table->string('student_id')->unique();
            $table->string('user_id');
            $table->timestamps();

            $table->foreign('student_id')->references('student_id')->on('students')->onDelete('cascade');
            $table->foreign('user_id')->references('user_id')->on('users')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('stu_parents');
    }
}
