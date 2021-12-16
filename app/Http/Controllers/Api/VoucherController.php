<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;
use Validator;
use App\Models\Voucher;

class VoucherController extends Controller
{
    //
    public function index()
    {
        $vouchers=Voucher::all();

        if(count($vouchers)>0) {
            return response([
                'message' => 'Retrieve All Success',
                'data' => $vouchers
            ], 200);
        }

        return response([
            'message' => 'Empty',
            'data' => null
        ], 400);
    }

    public function show($id)
    {
        $voucher = Voucher::find($id);

        if(!is_null($voucher)) {
            return response([
                'message' => 'Retrieve Voucher Success',
                'data' => $voucher
            ], 200);
        }

        return response([
            'message' => 'Voucher Not Found',
            'data' => null
        ], 404);
    }

    public function store(Request $request)
    {
        $storeData=$request->all();
        $validate=Validator::make($storeData, [
            'name' => 'required|unique:vouchers',
            'stok' => 'required|numeric',
            'harga' => 'required|numeric'
        ]);
        
        if($validate->fails())
            return response(['message' => $validate->errors()], 400);

        $voucher=Voucher::create($storeData);
        return response([
            'message' => 'Add Voucher Success',
            'data' => $voucher
        ], 200);
    }

    public function destroy($id)
    {
        $voucher = Voucher::find($id);

        if(is_null($voucher)) {
            return response([
                'message' => 'Voucher Not Found',
                'data' => null
            ], 404);
        }

        if($voucher->delete()) {
            return response([
                'message' => 'Delete Voucher Success',
                'data' => $voucher
            ], 200); 
        }

        return response([
            'message' => 'Delete Voucher Failed',
            'data' => null,
        ], 400);
    }

    public function update(Request $request, $id)
    {
        $voucher=Voucher::find($id);
        if(is_null($voucher)) {
            return response([
                'message' => 'Voucher Not Found',
                'data' => null
            ], 404);
        }

        $updateData=$request->all();
        $validate=Validator::make($updateData, [
            'name' => ['required', Rule::unique('vouchers')->ignore($voucher)],
            'stok' => 'required|numeric',
            'harga' => 'required|numeric'
        ]);

        if($validate->fails())
            return response(['message' => $validate->errors()], 400);

            $voucher->name=$updateData['name'];
            $voucher->stok=$updateData['stok'];
            $voucher->harga=$updateData['harga'];

        if($voucher->save()) {
            return response([
                'message' => 'Update Voucher Success',
                'data' => $voucher
            ], 200);
        }

        return response([
            'message' => 'Update Voucher Failed',
            'data' => null,
        ], 400);
    }
}
