{{-- @extends('layouts.app')

@section('content')

    <div class="container">
        <h1>{{$products[0] -> category_name}}</h1>
        <div class="row">
            @foreach($products as $product)
                <div class="col-4">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">{{$product -> name}}</h5>
                            <img src="{{$product -> image}}" class="card-img-top product_image" alt="Product Image">
                            <p class="card-text">
                                {{$product -> description}}
                            </p>                            
                            <a href="#" class="btn btn-primary">Add to shoppingcart</a>
                            <a href="#" class="btn btn-primary">Details</a>
                            <span class="price">&euro;{{$product -> price}}</span>
                        </div>  
                    </div>
                </div>
            @endforeach
        </div>
        
    </div>

@endsection --}}