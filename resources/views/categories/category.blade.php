@extends('layouts.app')

@section('content')
    <div class="container">
        <h1>{{$products[0] -> categoryName}}</h1>
        <div class="row">
            @foreach($products as $product)
                <div class="col-4">
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-9">
                                    <h5 class="card-title">{{$product -> name}}</h5>
                                </div>
                                <div class="col-3">
                                    <span class="price">&euro;{{$product -> price}}</span>
                                </div>
                            </div>
                            <img src="{{$product -> image}}" class="card-img-top product_image" alt="Product Image">
                            <p class="card-text">
                                {{$product -> description}}
                            </p>
                            <a href="{{url('/products', $product -> id)}}" class="btn btn-primary">Details</a>                                                                                
                        </div>  
                    </div>
                </div>
            @endforeach
        </div>
        
    </div>

@endsection