<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateLaporansTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('laporans', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('id_siswa')->unsigned()->nullable();
            $table->string('judul',100);
            $table->string('detail',255);
            $table->dateTime('waktu');
            $table->timestamps();
        });

        Schema::table('laporans', function (Blueprint $table) {
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
        Schema::dropIfExists('laporans');
        Schema::dropForeign(['id_siswa']);
    }
}
