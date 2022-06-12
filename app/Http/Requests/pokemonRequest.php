<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class pokemonRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, mixed>
     */
    public function rules()
    {
        return [
            // Les champs suivants sont obligatoire car
            // ils ne peuvent pas être NULL.
            'nom_pok' => ['required', 'string', 'max:20'],
            'type_pok1' => ['required', 'string', 'max:10'],
            'description' => ['required']
        ];
    }
}
