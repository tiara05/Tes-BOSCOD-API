<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $id
 * @property int $transaction_code
 * @property int $bank_id
 * @property decimal $balance
 * @property decimal $total
 * @property int $account_id
 * @property string $virtual_account
 * @property \Illuminate\Support\Carbon $expired
 * @property string|null $description
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property \Illuminate\Support\Carbon|null $deleted_at
 */
class Transaction extends Model
{
  use HasFactory;

  protected $fillable = [
    'transaction_code',
    'bank_id',
    'balance',
    'total',
    'account_id',
    'virtual_account',
    'expired',
    'description',
  ];

  public function bank()
  {
    return $this->belongsTo(Bank::class)->withDefault();
  }

  public function account()
  {
    return $this->belongsTo(Account::class)->withDefault();
  }
}
