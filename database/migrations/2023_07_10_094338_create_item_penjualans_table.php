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
        Schema::create('ITEM_PENJUALAN', function (Blueprint $table) {
            $table->string("NOTA");
            $table->string("KODE_BARANG");
            $table->integer("QTY");
            $table->timestamps();

            $table->foreign('ID_NOTA')->references('NOTA')->on('PENJUALAN');
            $table->foreign('KODE_BARANG')->references('KODE')->on('BARANG');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('ITEM_PENJUALAN');
    }
};
