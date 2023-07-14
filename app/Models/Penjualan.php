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
            $latestNota = static::max('ID_NOTA');
            if (!$latestNota) {
                $notaNumber = 1;
            } else {
                $notaNumber = intval(substr($latestNota, strpos($latestNota, '_') + 1)) + 1;
            }
            $model->ID_NOTA = 'NOTA_' . $notaNumber;
        });
    }

    public function pelanggan()
    {
        return $this->belongsTo(Pelanggan::class);
    }
}
