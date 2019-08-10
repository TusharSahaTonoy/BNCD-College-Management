<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateStuOfficeInfosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('stu_office_infos', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('class');
            $table->string('group')->nullable();
            $table->string('section');
            $table->string('roll');
            $table->date('admission_date');
            $table->string('nomination_count')->nullable();
            $table->string('security_code')->nullable();
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
        Schema::dropIfExists('stu_office_infos');
    }
}
