<?php

namespace App\Http\Controllers;

use App\Models\Company;
use Illuminate\Http\Request;

class CompanyApiController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return Company::all();
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validator= Validator($request->all(), [
            'name' => 'required|string|max:191',
            'description' =>'string|nullable',
            'email'=>'required|string|email|max:255|unique:users',
            'phone'=>['required','unique:users', 'regex:/(\+261(32|34|38|33))([0-9]{7})/'],
            'location'=>'required|string|max:191',
            'fax'=>'nullable|string|max:30|unique:users',
            'website'=>'nullable|string|max:191',
            'linkedin'=>'nullable|string|max:191',
            'youtube'=>'nullable|string|max:191',
            'facebook'=>'nullable|string|max:191',
            'twitter'=>'nullable|string|max:191',
            'logo'=>'nullable|string|max:191',
            'city_id'=>'nullable|numeric',
        ]);

        if($validator->fails()){
            return response(['errors' => $validator->errors()->all(), 422]);
        }
        $company = Company::create($request->toArray());
        if($company){
            $response = ["message" => "Company created successfully"];
        } else {
            return response(["message" => "something wrong"]);
        }
        return response($response, 200);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        return Company::findOrFail($id);
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
        $company = Company::findOrFail($id);
        $company->update($request->all());
        if($company->wasChanged()){
            return response([
                "message" => "Data updated successfully",
                "data" => $company
            ],200);
        } else {
            return response(["error" => "something wrong please check"], 422);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $company = Company::findOrFail($id);
        if($company->Delete()){
            return response([
                "message" => "Data deleted successfully"
            ], 200);
        } else {
            return response(["error" => "something wrong please check"]);
        }
    }
}
