@extends('layouts.app')

@section('content')

    <div class="container">
        <h1 class="my-4">{{$details[0] -> name}}

        </h1>

        <div class="row">
            <div class="col-md-8">
                <img class="img-fluid" src="{{$details[0] -> image}}" alt="">
            </div>

            <div class="col-md-4">
                <h3 class="my-3">Description</h3>
                <p>{{$details[0] -> description}}</p>

                <div class="row">
                    <div class="col-md-6">
                        <span class="price">&euro;{{$details[0] -> price}},-</span>
                    </div>
                    <div class="col-md-6">
                    <a href="{{ route('products.addToCart', ['id' => $details[0]->id])}}" class="btn btn-primary">Add to shoppingcart</a>
                    </div>

                </div>

            </div>
        </div>     
    </div>

@endsection