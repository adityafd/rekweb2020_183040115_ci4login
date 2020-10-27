<?php

namespace App\Database\Seeds;

use CodeIgniter\I18n\Time;

class PeopleSeeder extends \CodeIgniter\Database\Seeder
{
    public function run()
    {
        // $data = [
        //     [
        //         'name' => 'Astari Pradipta Dwijaya',
        //         'address' => 'Jl. Antapani Asri No.43',
        //         'created_at' => Time::now(),
        //         'updated_at' => Time::now()
        //     ],
        //     [
        //         'name' => 'Aditya Fataha Dwijaya',
        //         'address' => 'Jl. Antapani Asri No.43',
        //         'created_at' => Time::now(),
        //         'updated_at' => Time::now()
        //     ],
        //     [
        //         'name' => 'Astrid Dian Dwijaya',
        //         'address' => 'Jl. Antapani Asri No.43',
        //         'created_at' => Time::now(),
        //         'updated_at' => Time::now()
        //     ]
        // ];

        $faker = \Faker\Factory::create('id_ID');
        for ($i = 0; $i < 100; $i++) {
            $data = [
                'name' => $faker->name,
                'address' => $faker->address,
                'created_at' => Time::createFromTimestamp($faker->unixTime()),
                'updated_at' => Time::now()
            ];
            $this->db->table('people')->insert($data);
        }

        // Simple Queries
        // $this->db->query(
        //     "INSERT INTO people (name, address, created_at, updated_at) VALUES(:name:, :address:, :created_at:, :updated_at:)",
        //     $data
        // );

        // Using Query Builder
        //$this->db->table('people')->insert($data);
        //$this->db->table('people')->insertBatch($data);
    }
}
