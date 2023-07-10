<?php

namespace Tests\Feature;

use App\Models\item_penjualan;
use App\Models\Penjualan;
use App\Models\User;
use App\Models\Post;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

class TestRelasi extends TestCase
{
    public function testHasManyRelationship()
    {
        // Membuat pengguna baru
        $penjualan = Penjualan::factory()->create();

        // Membuat beberapa postingan terkait dengan pengguna
        $item1 = item_penjualan::factory()->create(['NOTA' => $penjualan->ID_NOTA]);
        $item2 = item_penjualan::factory()->create(['NOTA' => $penjualan->ID_NOTA]);

        // Memastikan hubungan hasMany berfungsi dengan benar
        $this->assertInstanceOf(item_penjualan::class, $penjualan->NOTA()->first());
        $this->assertCount(2, $penjualan->NOTA());
    }

    // public function testBelongsToRelationship()
    // {
    //     // Membuat postingan baru
    //     $post = Post::factory()->create();

    //     // Mendapatkan pengguna yang terkait dengan postingan
    //     $user = $post->user;

    //     // Memastikan hubungan belongsTo berfungsi dengan benar
    //     $this->assertInstanceOf(User::class, $post->user);
    //     $this->assertEquals($user->id, $post->user_id);
    // }
}
