<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Facades\DB;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Transaction>
 */
class TransactionFactory extends Factory
{
  /**
   * Define the model's default state.
   *
   * @return array<string, mixed>
   */
  public function definition(): array
  {
    return [
      'transaction_code' => 'TF' . now()->format('ymd') . mt_rand(11111, 99999),
      'bank_id' => DB::table('banks')->inRandomOrder()->first()->id,
      'balance' => fake()->numberBetween(0, 999999),
      'total' => fake()->numberBetween(0, 999999),
      'account_id' => DB::table('accounts')->inRandomOrder()->first()->id,
      'virtual_account' => fake()->randomNumber(9),
      'expired' => fake()->dateTime(),
    ];
  }
}
