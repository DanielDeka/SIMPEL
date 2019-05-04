<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAbsensisTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('absensis', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('id_siswa')->unsigned()->nullable();
            $table->integer('kehadiran');
            $table->string('keterangan', 100)->nullable();
            $table->timestamps();
        });

        Schema::table('absensis', function (Blueprint $table) {
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
        Schema::dropIfExists('absensis');
        $table->dropForeign(['id_siswa']);
    }
}
