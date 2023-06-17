<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Facades\DB;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Account>
 */
class AccountFactory extends Factory
{
  /**
   * Define the model's default state.
   *
   * @return array<string, mixed>
   */
  public function definition(): array
  {
    return [
      'user_id' => DB::table('users')->inRandomOrder()->first()->id,
      'bank_id' => DB::table('banks')->inRandomOrder()->first()->id,
      'account_number' => fake()->randomNumber(7),
    ];
  }
}
