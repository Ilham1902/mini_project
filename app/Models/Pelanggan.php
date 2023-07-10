<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Pelanggan extends Model
{
    use HasFactory;

    protected $table = "pelanggan";

    protected $guarded = ['ID_PELANGGAN'];

    public $incrementing = false;

    protected static function boot()
    {
        parent::boot();

        static::creating(function ($model) {
            $model->ID_PELANGGAN = 'PELANGGAN_' . (static::count() + 1);
        });
    }
}
