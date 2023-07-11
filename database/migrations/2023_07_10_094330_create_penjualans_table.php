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
        Schema::create('PENJUALAN', function (Blueprint $table) {
            $table->string('ID_NOTA')->primary();
            $table->date('TGL');
            $table->string('KODE_PELANGGAN');
            $table->string('SUB_TOTAL');
            $table->timestamps();

            $table->foreign('KODE_PELANGGAN')->references('ID_PELANGGAN')->on('PELANGGAN');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('PENJUALAN');
    }
};
