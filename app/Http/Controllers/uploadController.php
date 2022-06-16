<?php

namespace App\Http\Controllers;

use Illuminate\Database\DBAL\TimestampType;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class uploadController extends Controller
{
    public function upload(Request $request){
        $randomFileName = time().rand();
        $path = Storage::disk('public')->put($randomFileName, $request->file('file'));
        return $path;
    }


        
}
