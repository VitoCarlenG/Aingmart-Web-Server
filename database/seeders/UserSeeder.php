<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use DB;
use Carbon\Carbon;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //GD11
        DB::table('users')->insert([
            'name' => 'Vito Carlen Giovanni',
            'email' => '10181@students.uajy.ac.id',
            'password' => '$2b$10$sy9CMqB/bNdrbC0KDrM61eyu4d4Ckop9OVlWYA7OMmi4mNyUwKpOa',
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now()
        ]);
    }
}
