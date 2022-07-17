<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Models\Job;

class JobController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $jobs = Job::all()->toArray();
        return response(['data' => $jobs]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validator = Validator($request->all(), [
            "name" =>'required|string|max:255',
            "description"=>'string|nullable',
            "poste"=>'required|string|max:255',
            "salary"=>['required', 'regex:/[\d]+,[\d]{2}/'],
            "currency"=>'required|string',
            "types"=>'required|string',
            "job_type_id"=>'required|numeric',
            "company_id" => 'required|numeric',
            "city_id" => 'required|numeric',
            "domain_id"=> 'required|numeric'
        ]);
        if($validator->fails()){
            return response(['errors' => $validator->errors()->all(), 422]);
        }
        $user = Job::create($request->toArray());
        if($user){
            $response = ['success' => 'Job created successfully'];
        } else {
            return response(['error' => 'something wrong']);
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
        //
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
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
