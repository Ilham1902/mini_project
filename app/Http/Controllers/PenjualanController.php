<?php

namespace App\Http\Controllers;

use App\Models\barang;
use App\Models\item_penjualan;
use App\Models\Penjualan;
use Illuminate\Http\Request;

class PenjualanController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = Penjualan::join('pelanggan', 'pelanggan.ID_PELANGGAN', '=', 'penjualan.KODE_PELANGGAN')->get();

        return response()->json($data, 200);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $tgl            = $request->tgl;
        $kode_pelanggan = $request->kode_pelanggan;
        $item           = $request->item;
        $qty            = $request->qty;

        $sub_total = 0;

        for ($i = 0; $i < count($item); $i++) {
            $data_barang = barang::where('KODE', $item[$i])->first();
            $price = $data_barang->HARGA;
            $total_price_item = $price * $qty[$i];
            $sub_total += $total_price_item;
        }

        $data = Penjualan::create([
            "TGL"               => $tgl,
            "KODE_PELANGGAN"    => $kode_pelanggan,
            "SUB_TOTAL"         => $sub_total
        ]);

        $ID_NOTA = $data->ID_NOTA;

        for ($i = 0; $i < count($item); $i++) {
            $data_item = item_penjualan::create([
                "NOTA"          => $ID_NOTA,
                "KODE_BARANG"   => $item[$i],
                "QTY"           => $qty[$i]
            ]);
        }

        return response()->json($data, 200);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $penjualan = Penjualan::join('pelanggan', 'pelanggan.ID_PELANGGAN', '=', 'penjualan.KODE_PELANGGAN')->where('ID_NOTA', $id)->get();
        $item_penjualan = Penjualan::select('penjualan.SUB_TOTAL', 'barang.NAMA as nama_barang', 'barang.harga', 'item_penjualan.qty', 'item_penjualan.KODE_BARANG')
            ->join('item_penjualan', 'item_penjualan.NOTA', '=', 'penjualan.ID_NOTA')
            ->join('barang', 'barang.KODE', '=', 'item_penjualan.KODE_BARANG')
            ->where('ID_NOTA', $id)
            ->get();

        return response()->json([
            "penjualan" => $penjualan,
            "item_penjualan" => $item_penjualan
        ], 200);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $tgl            = $request->tgl;
        $kode_pelanggan = $request->kode_pelanggan;
        $item           = $request->item;
        $qty            = $request->qty;

        $sub_total = 0;

        for ($i = 0; $i < count($item); $i++) {
            $data_barang = barang::where('KODE', $item[$i])->first();
            $price = $data_barang->HARGA;
            $total_price_item = $price * $qty[$i];
            $sub_total += $total_price_item;
        }

        $data = Penjualan::where('ID_NOTA', $id)->update([
            "TGL"               => $tgl,
            "KODE_PELANGGAN"    => $kode_pelanggan,
            "SUB_TOTAL"         => $sub_total
        ]);

        for ($i = 0; $i < count($item); $i++) {
            if ($qty[$i] < 1) {
                $data_item = item_penjualan::where('NOTA', $id)
                    ->where('KODE_BARANG', $item[$i])
                    ->delete();
            } else {
                $data_item = item_penjualan::where('NOTA', $id)
                    ->where('KODE_BARANG', $item[$i])
                    ->update([
                        "QTY"           => $qty[$i]
                    ]);
            }
        }

        return response()->json($data, 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $data = item_penjualan::where('NOTA', $id)->delete();
        $data = Penjualan::where('ID_NOTA', $id)->delete();
        return response()->json($data, 200);
    }
}
