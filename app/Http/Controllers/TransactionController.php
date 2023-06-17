<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreTransactionRequest;
use App\Http\Requests\UpdateTransactionRequest;
use App\Http\Resources\TransactionResource;
use App\Models\Bank;
use App\Models\Transaction;

class TransactionController extends Controller
{
  /**
   * Display a listing of the resource.
   */
  public function index()
  {
    //
  }

  /**
   * Store a newly created resource in storage.
   */
  public function store(StoreTransactionRequest $request)
  {
    // dd($request->all());

    $code = Bank::where('id', $request->bank_id)->first()->code;

    $fee = Bank::where('id', $request->bank_id)->first()->fee;

    // dd($code);

    $transaction = Transaction::query()->create([
      'transaction_code' => 'TF' . now()->format('ymd') . mt_rand(11111, 99999),
      'bank_id' => $request->bank_id,
      'balance' => $request->balance,
      'total' => $request->balance + $code + $fee,
      'account_id' => $request->account_id,
      'virtual_account' => mt_rand(1111111111, 999999999999),
      'expired' => now()->addHour()->addMinutes(30)
    ]);

    // dd($transaction->transaction_code);

    return TransactionResource::make($transaction);
  }

  /**
   * Display the specified resource.
   */
  public function show(Transaction $transaction)
  {
    //
  }

  /**
   * Update the specified resource in storage.
   */
  public function update(UpdateTransactionRequest $request, Transaction $transaction)
  {
    //
  }

  /**
   * Remove the specified resource from storage.
   */
  public function destroy(Transaction $transaction)
  {
    //
  }
}
