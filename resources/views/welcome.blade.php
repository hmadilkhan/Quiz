<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Laravel</title>

    <!-- Fonts -->
    <link href="https://fonts.bunny.net/css2?family=Nunito:wght@400;600;700&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link href="{{asset('style.css')}}" rel="stylesheet" />
    <style>


    </style>
</head>

<body class="centered">
    <form action="{{route('store.user')}}" method="POST">
        @csrf
        <div class="container mt-sm-5 my-1 text-center">
            <input type="text" class="form-control" id="username" name="username" placeholder="Enter Name">
            <button type="submit" class="mt-2 btn btn-primary text-center" >Next</button>
        </div>
    </form>
</body>


</html>