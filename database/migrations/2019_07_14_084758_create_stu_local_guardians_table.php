<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateStuLocalGuardiansTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('stu_local_guardians', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('name');
            $table->string('reletion');
            $table->string('occupation')->nullable();
            $table->string('name_of_int')->nullable();
            $table->string('position')->nullable();
            $table->string('income')->nullable();
            $table->string('mobile');
            $table->string('student_id')->unique();
            $table->timestamps();

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
        Schema::dropIfExists('stu_local_guardians');
    }
}
