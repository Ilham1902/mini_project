<?php

namespace App\Http\Controllers;

use App\Models\Pelanggan;
use Illuminate\Http\Request;

class PelangganController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = Pelanggan::all();

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
        $nama = $request->nama;
        $domisili = $request->domisili;
        $jenis_kelamin = $request->jenis_kelamin;

        $data = Pelanggan::create([
            "NAMA"  => $nama,
            "DOMISILI"  => $domisili,
            "JENIS_KELAMIN"  => $jenis_kelamin
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
        $data = Pelanggan::where('ID_PELANGGAN', $id)->get();

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
        $nama = $request->nama;
        $domisili = $request->domisili;
        $jenis_kelamin = $request->jenis_kelamin;

        $data = Pelanggan::where('ID_PELANGGAN', $id)->update([
            "NAMA"  => $nama,
            "DOMISILI"  => $domisili,
            "JENIS_KELAMIN"  => $jenis_kelamin
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
        $data = Pelanggan::where('ID_PELANGGAN', $id)->delete();
        return response()->json($data, 200);
    }
}
