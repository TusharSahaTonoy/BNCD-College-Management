<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateClassAttendancesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('class_attendances', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('class');
            $table->string('group')->nullable();
            $table->string('subject');
            $table->string('section');
            $table->string('att_list');
            $table->string('teacher_id');
            $table->timestamps();

            $table->foreign('teacher_id')->references('teacher_id')->on('teachers')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('class_attendances');
    }
}
