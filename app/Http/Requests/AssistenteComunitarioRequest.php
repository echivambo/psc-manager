<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class AssistenteComunitarioRequest extends FormRequest
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
     * @return array
     */
    public function rules()
    {
        return [
            'nome' => 'required|string|max:60|min:6|unique:assistente_comunitarios',
            'email' => 'required|string|max:60|min:6|unique:assistente_comunitarios',
            'contacto' => 'nullable|unique:assistente_comunitarios|max:9|min:9',
            'user_id' => 'required|integer',
        ];

    }
}
