<?php

namespace App\Http\Controllers;

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
        $data = Penjualan::all();

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
        $sub_total      = $request->sub_total;

        $data = Penjualan::create([
            "TGL"               => $tgl,
            "KODE_PELANGGAN"    => $kode_pelanggan,
            "SUB_TOTAL"         => $sub_total
        ]);

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
        $data = Penjualan::where('ID_NOTA', $id)->get();

        return response()->json($data, 200);
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
        $sub_total      = $request->sub_total;

        $data = Penjualan::where('ID_NOTA', $id)->update([
            "TGL"               => $tgl,
            "KODE_PELANGGAN"    => $kode_pelanggan,
            "SUB_TOTAL"         => $sub_total
        ]);

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
        $data = Penjualan::where('ID_NOTA', $id)->delete();
        return response()->json($data, 200);
    }
}
