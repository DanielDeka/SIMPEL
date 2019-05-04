<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateRaporsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('rapors', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('id_siswa')->unsigned()->nullable();
            $table->integer('semester');
            $table->timestamps();
        });

        Schema::table('rapors', function (Blueprint $table) {
            $table->foreign('id_siswa')
            ->references('id')->on('siswas')
            ->onUpdate('cascade')
            ->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('rapors');
        Schema::dropForeign(['id_siswa']);
    }
}
