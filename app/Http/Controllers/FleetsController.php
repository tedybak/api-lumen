<?php

namespace App\Http\Controllers;

use App\Fleet;
 use Illuminate\Http\Request;

class FleetsController extends Controller
{

    function index(Request $request){
         if( $request->isJson() ){
            return Fleet::all();
        }
        return response()->json(['error' => 'Unauthorized'],401);
    }


    public function show($id)
    {
        return response()->json(Fleet::find($id));
    }

    function  store(Request $request){

         if( $request->isJson() ) {
             try {
                 $fleet = new Fleet();
                 $fleet->name = $request->name;
                 $fleet->class = $request->class;
                 $fleet->crew = $request->crew;
                 $fleet->image = $request->image;
                 $fleet->value = $request->value;
                 $fleet->status = $request->status;
                 $fleet->armament = $request->armament;
                 $fleet->save();
                 return response()->json(['success' => true], 201);
             }catch (\Exception $e){
                 return $e;
             }
        }
        return response()->json(['error' => 'Unauthorized'],401);
    }

    public function update($id, Request $request)
    {
        if( $request->isJson() ) {
             $fleet = Fleet::findOrFail($id);
            $fleet->update($request->all());

            return response()->json(['success' => true], 200);
        }
        return response()->json(['error' => 'Unauthorized'],401);
    }

    public function delete($id, Request $request )
    {
        if( $request->isJson() ) {
            Fleet::findOrFail($id)->delete();
            return response()->json(['success' => true], 200);
        }
        return response()->json(['error' => 'Unauthorized'],401);
    }


    public function filter(Request $request)
    {
        if( $request->isJson() ) {
            $filter = $request->filter;

            $filtering_types = array("name", "class", "status");

            if (in_array("$filter", $filtering_types)) {
                return Fleet::select('name','class', 'status')->orderBy($filter)->get();
            }else{
                return response()->json(['error' => 'Filter must be a valid '],401);
            }
        }
        return response()->json(['error' => 'Unauthorized'],401);
    }



}
