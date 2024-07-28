<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Facades\Hash;
use App\Models\AdminUser;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\AdminUser>
 */
class AdminUserFactory extends Factory
{
    /**
     * 
     *
     * @var string
     */
    protected $model = AdminUser::class;

    /**
     *
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'email' => 'admin@admin.com',
            'password' => Hash::make('admin'), 
        ];
    }
}
