@if(Session::has('message'))
    <div class="alert alert-success text-center">{{ Session::get('message') }}</div>
@endif

@if( isset($errors) && count($errors) > 0 )
    <div class="alert alert-danger text-center">
        @foreach($errors->all() as $error)
            <p>{{$error}}</p>
        @endforeach
    </div>
@endif

@if( Session::has('error'))
    <div class="alert alert-danger text-center">
            <p>{{Session::get('error')}}</p>
    </div>
@endif