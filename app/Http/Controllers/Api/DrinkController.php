<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;
use Validator;
use App\Models\Drink;

class DrinkController extends Controller
{
    public function index()
    {
        $drinks=Drink::all();

        if(count($drinks)>0) {
            return response([
                'message' => 'Retrieve All Success',
                'data' => $drinks
            ], 200);
        }

        return response([
            'message' => 'Empty',
            'data' => null
        ], 400);
    }

    public function show($id)
    {
        $drink = Drink::find($id);

        if(!is_null($drink)) {
            return response([
                'message' => 'Retrieve Drink Success',
                'data' => $drink
            ], 200);
        }

        return response([
            'message' => 'Drink Not Found',
            'data' => null
        ], 404);
    }

    public function store(Request $request)
    {
        $storeData=$request->all();
        $validate=Validator::make($storeData, [
            'name' => 'required|unique:drinks',
            'stok' => 'required|numeric',
            'harga' => 'required|numeric'
        ]);
        
        if($validate->fails())
            return response(['message' => $validate->errors()], 400);

        $drink=Drink::create($storeData);
        return response([
            'message' => 'Add Drink Success',
            'data' => $drink
        ], 200);
    }

    public function destroy($id)
    {
        $drink = Drink::find($id);

        if(is_null($drink)) {
            return response([
                'message' => 'Drink Not Found',
                'data' => null
            ], 404);
        }

        if($drink->delete()) {
            return response([
                'message' => 'Delete Drink Success',
                'data' => $drink
            ], 200); 
        }

        return response([
            'message' => 'Delete Drink Failed',
            'data' => null,
        ], 400);
    }

    public function update(Request $request, $id)
    {
        $drink=Drink::find($id);
        if(is_null($drink)) {
            return response([
                'message' => 'Drink Not Found',
                'data' => null
            ], 404);
        }

        $updateData=$request->all();
        $validate=Validator::make($updateData, [
            'name' => ['required', Rule::unique('drinks')->ignore($drink)],
            'stok' => 'required|numeric',
            'harga' => 'required|numeric'
        ]);

        if($validate->fails())
            return response(['message' => $validate->errors()], 400);

        $drink->name=$updateData['name'];
        $drink->stok=$updateData['stok'];
        $drink->harga=$updateData['harga'];

        if($drink->save()) {
            return response([
                'message' => 'Update Drink Success',
                'data' => $drink
            ], 200);
        }

        return response([
            'message' => 'Update Drink Failed',
            'data' => null,
        ], 400);
    }
}
