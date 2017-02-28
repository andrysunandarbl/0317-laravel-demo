<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use Log;

class AjaxController extends Controller
{
    public function index(Request $request){
      $data = $request->all(); // This will get all the request data.
      dd($data); // This will dump and die
   }
}
