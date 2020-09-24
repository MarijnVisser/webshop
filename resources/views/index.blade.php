@extends('layouts.app')

@section('content')
<div class="container">
    @if(Session::has('success'))
        <div class="row">
            <div class="col-md-6">
                <div id="charge-message" class="alert alert-success">
                    {{Session::get('success')}}
                </div>
            </div>
        </div>
    @endif
    <div class="row justify-content-center">
        <div class="col-md-10">
            <div class="card">
                <div class="card-header">
                    <h1>Home</h1>
                </div>

                <div class="card-body">
                   <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce porta mollis libero a tincidunt. Quisque et sapien dui. Fusce vel orci vitae urna imperdiet commodo. Nam tellus sem, placerat quis mattis vel, congue eu nunc. In magna leo, hendrerit nec pellentesque pretium, iaculis a ex. Nulla facilisi. In ullamcorper eget orci eget auctor. 
                   </p>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
