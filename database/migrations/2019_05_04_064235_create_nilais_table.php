<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateNilaisTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('nilais', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('nama',100);
            $table->integer('nilai');
            $table->string('tipe',100);
            $table->bigInteger('id_pelajaran')->unsigned()->nullable();
            $table->bigInteger('id_rapor')->unsigned()->nullable();
            $table->timestamps();
        });

        Schema::table('nilais', function (Blueprint $table) {
            $table->foreign('id_pelajaran')
            ->references('id')->on('pelajarans')
            ->onUpdate('cascade')
            ->onDelete('cascade');
            $table->foreign('id_rapor')
            ->references('id')->on('rapors')
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
        Schema::dropIfExists('nilais');
        Schema::dropForeign(['id_pelajaran']);
        Schema::dropForeign(['id_rapor']);
    }
}
