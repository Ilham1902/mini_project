<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('PELANGGAN', function (Blueprint $table) {
            $table->bigIncrements("ID_PELANGGAN");
            $table->string("NAMA");
            $table->string("DOMISILI");
            $table->string("JENIS_KELAMIN");
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('PELANGGAN');
    }
};
