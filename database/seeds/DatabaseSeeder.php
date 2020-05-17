<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // $this->call(UsersTableSeeder::class);
        for ($i=0; $i < 10; $i++) 
        {
             DB::table('products')->insert([
                'product_title'        => Str::random(10),
                'product_description'  => Str::random(10),
                'product_review'       => Str::random(20),
                'user_id'              => '0',
                'created_at'           => date('Y-m-d H:i:s'),
                'updated_at'           => date('Y-m-d H:i:s'),
            ]);
        }
    }
}
