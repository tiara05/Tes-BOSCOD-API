<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class TransactionResource extends JsonResource
{
  /**
   * Transform the resource into an array.
   *
   * @return array<string, mixed>
   */
  public function toArray(Request $request): array
  {
    /** @var Transaction $transaction */
    $transaction = $this;

    return [
      'id' => $transaction->id,
      'transaction_code' => $transaction->transaction_code,
      'balance' => $transaction->balance,
      'code' => $transaction->bank->code,
      'fee' => number_format($transaction->bank->fee),
      'total' => $transaction->total,
      'from_bank' => $transaction->account->bank->name,
      'virtual_account' => $transaction->virtual_account,
      'expired' => $transaction->expired,
    ];
  }
}
