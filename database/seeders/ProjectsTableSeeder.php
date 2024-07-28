<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Project;

class ProjectsTableSeeder extends Seeder
{
   
    public function run(): void
    {
        Project::factory()->count(9)->create();
    }
}
