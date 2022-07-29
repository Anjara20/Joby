<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Job;

class JobApiController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return Job::all();
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
            "salary"=>['required','nullable','regex:/[\d]+.[\d]{2}/'],
            "currency"=>'required|string',
            "types"=>'required|string',
            "job_type_id"=>'required|numeric',
            "company_id" => 'required|numeric',
            "city_id" => 'nullable|numeric',
            "domain_id"=> 'required'
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
        return Job::findOrFail($id);
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
        $job = Job::findOrFail($id);
        $job->update($request->all());
        if($job->wasChanged()){
            return response([
                "message" => "Data updated successfully",
                "data" => $job
            ], 200);
        } else {
            return response(["error" => "something wrong please check"], 422);
        }
        return $job;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $job = Job::findOrFail($id);
        if($job->Delete()){
            return response([
                "message" => "Data deleted successfully"
            ], 200);
        } else {
            return response(["error" => "something wrong please check"], 422);
        }
    }
}
