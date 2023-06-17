<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Account extends Model
{
  use HasFactory;

  /**
   * @property int $id
   * @property int $user_id
   * @property int $bank_id
   * @property string $account_number
   * @property \Illuminate\Support\Carbon|null $created_at
   * @property \Illuminate\Support\Carbon|null $updated_at
   * @property \Illuminate\Support\Carbon|null $deleted_at
   */
  protected $fillable = [
    'user_id',
    'bank_id',
    'account_number',
  ];

  public function user()
  {
    return $this->belongsTo(User::class)->withDefault();
  }

  public function bank()
  {
    return $this->belongsTo(Bank::class)->withDefault();
  }
}
