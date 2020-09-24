@extends('layouts.app')

@section('content')

    <div class="container">
        @foreach($names as $name)
            <div class="card category">
                <div class="card-body">
                    <a href="{{url('/categories', $name -> id)}}">
                        <h4 class="card-title">
                           {{$name -> name}}
                        </h4>
                    </a>
                </div>
            </div>
        @endforeach
    </div>

@endsection