<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UpdateProjectRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules()
    {
        return [
            'product_id' => 'required|exists:projects,id',
            'product_name' => 'required|string|max:255',
            'product_header' => 'required|string|max:255',
            'product_img' => 'required|string|max:255',
            'product_url' => 'required|url|max:255',
            'product_desc' => 'required|string|max:200',
        ];
    }
    
}
