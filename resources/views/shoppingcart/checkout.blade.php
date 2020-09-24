@extends('layouts.app')

@section('content')

    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h1>Checkout</h1>
                <h4>Your total: €{{ $total }}</h4>
                <form action="{{ route('checkout') }}" method="post" id="checkout-form">
                    <div class="form-row">
                        <div class="form-group col-md-8">
                            <label for="name">Name</label>
                            <input type="text" class="form-control" id="name" placeholder="Name" name="name" required>
                        </div>                        
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-4">
                            <label for="address">Address</label>
                            <input type="text" class="form-control" id="address" placeholder="Address" name="address" required>
                        </div>
                        <div class="form-group col-md-4">
                            <label for="city">City</label>
                            <input type="text" class="form-control" id="city" placeholder="City" required>
                        </div>
                    </div>
                    <br>
                    <div class="form-row">
                        <div class="form-group col-md-4">
                            <label for="payment">Payment Method</label>
                            <select id="inputState" class="form-control">
                                <option selected>Choose...</option>
                                <option value="ideal">Ideal</option>
                                <option value="paypal">Paypal</option>
                                <option value="creditcard">Creditcard</option>
                              </select>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-primary">Buy now</button>
                    {{csrf_field()}}
                </form>
            </div>
        </div>
    </div>

@endsection