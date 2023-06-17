<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
  /**
   * Run the migrations.
   */
  public function up(): void
  {
    Schema::create('transactions', function (Blueprint $table) {
      $table->id();
      $table->string('transaction_code');
      $table->integer('bank_id')->index();
      $table->decimal('balance', 15, 4);
      $table->decimal('total', 15, 4);
      $table->integer('account_id')->index();
      $table->string('virtual_account');
      $table->dateTime('expired');
      $table->text('description')->nullable();
      $table->timestamps();
    });
  }

  /**
   * Reverse the migrations.
   */
  public function down(): void
  {
    Schema::dropIfExists('transactions');
  }
};
