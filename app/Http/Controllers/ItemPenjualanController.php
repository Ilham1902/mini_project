<?php

namespace App\Http\Controllers;

use App\Models\item_penjualan;
use App\Http\Requests\Storeitem_penjualanRequest;
use App\Http\Requests\Updateitem_penjualanRequest;

class ItemPenjualanController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\Storeitem_penjualanRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Storeitem_penjualanRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\item_penjualan  $item_penjualan
     * @return \Illuminate\Http\Response
     */
    public function show(item_penjualan $item_penjualan)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\item_penjualan  $item_penjualan
     * @return \Illuminate\Http\Response
     */
    public function edit(item_penjualan $item_penjualan)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\Updateitem_penjualanRequest  $request
     * @param  \App\Models\item_penjualan  $item_penjualan
     * @return \Illuminate\Http\Response
     */
    public function update(Updateitem_penjualanRequest $request, item_penjualan $item_penjualan)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\item_penjualan  $item_penjualan
     * @return \Illuminate\Http\Response
     */
    public function destroy(item_penjualan $item_penjualan)
    {
        //
    }
}
