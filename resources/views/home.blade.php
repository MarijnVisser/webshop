@extends('layouts.app')

@section('content')
<div class="container"> 
    <div class="row justify-content-center">
        <div class="col-md-8">
            <h2>My orders</h2>
            @foreach($orders as $order)
                <div class="card">
                    <div class="card-body">
                        <ul class="list-group">
                            @foreach($order->cart->items as $item)
                                <li class="list-group-item">
                                    <span class="badge">{{$item['price']}} €</span>
                                    {{$item['item']['name']}} | {{$item['qty']}} units
                                </li>
                            @endforeach
                        </ul>
                    </div>
                    <div class="card-footer">
                        <strong>Total Price: {{$order->cart->totalPrice}} €</strong>
                    </div>
                </div>
                <hr>
            @endforeach
        </div>
    </div>
</div>
@endsection
