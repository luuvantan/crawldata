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
    	$this->call(UseSeeder::class);
       
    }
}

class UseSeeder extends Seeder{
	public function run(){
		 DB::table('users')->insert([
        	'name'=>'Tansssss','email'=>str_random(5).'@gmail.com','password'=>bcrypt('123456'),
        	'name'=>'Tangaaa','email'=>str_random(5).'@gmail.com','password'=>bcrypt('123456'),
        	'name'=>'Tangsaaaa','email'=>str_random(5).'@gmail.com','password'=>bcrypt('123456')
        ]);
	}
}
