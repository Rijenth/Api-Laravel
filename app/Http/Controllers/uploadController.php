<?php

namespace App\Http\Controllers;

use Illuminate\Database\DBAL\TimestampType;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class uploadController extends Controller
{
    public function upload(Request $request){
    
        $request->validate([
                'file' => ['required','mimes:pdf,jpg,jpeg,gif,png','max:20000']
            ]);
       
        $randomFileName = time().rand();
        $path = Storage::disk('public')->put($randomFileName, $request->file('file'));
        /* $request->file('file')->store(''); */
        dd('Votre fichier a été correctement upload à l\'emplacement storage/app/public, dans le fichier : '.$randomFileName);
        // On peux tester ceci avec Postman
        
        
        return view('upload');
        
    }


        
}
