@extends('layouts.app')

@section('content')

    <div class="container">
        @if(Session::has('cart'))
            <div class="row">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th scope="col">Product</th>
                            <th scope="col">Quantity</th>
                            <th scope="col">Price</th>
                            <th scope="col"></th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($products as $product)
                            <tr>
                                <td>
                                    <strong>{{ $product['item']['name']}}</strong>                                    
                                </td>
                                <td>
                                    <li class="dropdown">
                                        <a href="" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Action <span class="caret"></span></a>
                                        <ul class="dropdown-menu">
                                            <li><a href="{{ route('products.reduceByOne', ['id' => $product['item']['id']]) }}">Reduce by 1</a></li>
                                            <li><a href="{{ route('products.remove', ['id' => $product['item']['id']]) }}">Reduce all</a></li>
                                        </ul>
                                    </li>            
                                </td>
                                <td>{{$product['price']}} €</td>
                                <td class="text-right">
                                    <span class="badge badge-secondary">{{ $product['qty']}}</span>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
            <hr>
            <div class="row">
                <div class="col-md-6">
                    <strong>total: {{$totalPrice}} €</strong>
                </div>
            </div>
            <hr>
            <div class="row">
                <div class="col-md-6">
                <a href="{{ route('checkout')}}" type="button" class="btn btn-success">Checkout</a>
                </div>
            </div>
        @else
            <div class="row">
                <div class="col-md-6">
                    <h2>No items in cart!</h2>
                </div>
            </div>
        @endif
    </div>

@endsection