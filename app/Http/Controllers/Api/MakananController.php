<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;
use Validator;
use App\Models\Makanan;

class MakananController extends Controller
{
    public function index()
    {
        $makanans=Makanan::all();

        if(count($makanans)>0) {
            return response([
                'message' => 'Retrieve All Success',
                'data' => $makanans
            ], 200);
        }

        return response([
            'message' => 'Empty',
            'data' => null
        ], 400);
    }

    public function show($id)
    {
        $makanan = Makanan::find($id);

        if(!is_null($makanan)) {
            return response([
                'message' => 'Retrieve Makanan Success',
                'data' => $makanan
            ], 200);
        }

        return response([
            'message' => 'Makanan Not Found',
            'data' => null
        ], 404);
    }

    public function store(Request $request)
    {
        $storeData=$request->all();
        $validate=Validator::make($storeData, [
            'name' => 'required|unique:makanans',
            'stok' => 'required|numeric',
            'harga' => 'required|numeric'
        ]);
        
        if($validate->fails())
            return response(['message' => $validate->errors()], 400);

        $makanan=Makanan::create($storeData);
        return response([
            'message' => 'Add Makanan Success',
            'data' => $makanan
        ], 200);
    }

    public function destroy($id)
    {
        $makanan = Makanan::find($id);

        if(is_null($makanan)) {
            return response([
                'message' => 'Makanan Not Found',
                'data' => null
            ], 404);
        }

        if($makanan->delete()) {
            return response([
                'message' => 'Delete Makanan Success',
                'data' => $makanan
            ], 200); 
        }

        return response([
            'message' => 'Delete Makanan Failed',
            'data' => null,
        ], 400);
    }

    public function update(Request $request, $id)
    {
        $makanan=Makanan::find($id);
        if(is_null($makanan)) {
            return response([
                'message' => 'Makanan Not Found',
                'data' => null
            ], 404);
        }

        $updateData=$request->all();
        $validate=Validator::make($updateData, [
            'name' => ['required', Rule::unique('makanans')->ignore($makanan)],
            'stok' => 'required|numeric',
            'harga' => 'required|numeric'
        ]);

        if($validate->fails())
            return response(['message' => $validate->errors()], 400);

        $makanan->name=$updateData['name'];
        $makanan->stok=$updateData['stok'];
        $makanan->harga=$updateData['harga'];

        if($makanan->save()) {
            return response([
                'message' => 'Update Makanan Success',
                'data' => $makanan
            ], 200);
        }

        return response([
            'message' => 'Update Makanan Failed',
            'data' => null,
        ], 400);
    }
}
