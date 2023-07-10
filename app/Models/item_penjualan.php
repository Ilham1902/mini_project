<?php

namespace App\Models;

use App\Models\penjualan;
use App\Models\barang;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class item_penjualan extends Model
{
    use HasFactory;

    protected $table = "item_penjualan";

    protected $fillable = ['NOTA', 'KODE_BARANG', 'QTY'];

    public function penjualan()
    {
        return $this->hasMany(penjualan::class);
    }

    public function barang()
    {
        return $this->belongsTo(barang::class);
    }
}
