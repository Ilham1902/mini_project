<?php

namespace App\Models;

use App\Models\Pelanggan;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Penjualan extends Model
{
    use HasFactory;

    protected $table = "penjualan";

    protected $guarded = ['ID_NOTA'];

    public $incrementing = false;

    protected static function boot()
    {
        parent::boot();

        static::creating(function ($model) {
            $model->ID_NOTA = 'NOTA_' . (static::count() + 1);
        });
    }

    public function pelanggan()
    {
        return $this->belongsTo(Pelanggan::class);
    }
}
