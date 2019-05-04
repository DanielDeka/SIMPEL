<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSiswasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('siswas', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('nama',100);
            $table->bigInteger('id_ortu')->unsigned()->nullable();
            $table->bigInteger('id_guru')->unsigned()->nullable();
            $table->string('kelas',100);
            $table->timestamps();
        });

        Schema::table('siswas', function (Blueprint $table) {
            $table->foreign('id_ortu')
            ->references('id')->on('ortus')
            ->onUpdate('cascade')
            ->onDelete('cascade');

            $table->foreign('id_guru')
            ->references('id')->on('gurus')
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
        Schema::dropIfExists('siswas');
        Schema::dropForeign(['id_ortu']);
        Schema::dropForeign(['id_guru']);
    }
}
