<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;

use App\Models\Account;
use App\Models\Bank;
use App\Models\Transaction;
use App\Models\User;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
  /**
   * Seed the application's database.
   */
  public function run(): void
  {
    User::factory(10)->create();

    User::query()->create([
      'name' => 'Admin',
      'email' => 'admin@gmail.com',
      'password' => bcrypt('12345')
    ]);

    $this->call(BankSeeder::class);

    // \App\Models\User::factory()->create([
    //     'name' => 'Test User',
    //     'email' => 'test@example.com',
    // ]);

    // Bank::factory(30)->create();

    Account::factory(10)->create();

    Transaction::factory(10)->create();
  }
}
