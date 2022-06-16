<?php

namespace App\Http\Controllers;

use Illuminate\Database\DBAL\TimestampType;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class uploadController extends Controller
{
    public function upload(Request $request){

        if($request->hasFile('file')){

            $request->validate([
                'file'=> 'required|mimes:pdf, jpg, jpeg, gif, png|max:20000'
            ]);

            $randomFileName = time().rand();
            $path = Storage::disk('public')->put($randomFileName, $request->file('file'));
            
        }
        return view('upload');
        
    }


        
}
