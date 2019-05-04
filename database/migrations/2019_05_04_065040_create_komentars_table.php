<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateKomentarsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('komentars', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('isi',255);
            $table->bigInteger('id_laporan')->unsigned()->nullable();
            $table->integer('tipe');
            $table->timestamps();
        });

        Schema::table('komentars', function (Blueprint $table) {
            $table->foreign('id_laporan')
            ->references('id')->on('laporans')
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
        Schema::dropIfExists('komentars');
        Schema::dropForeign(['id_laporan']);
    }
}
