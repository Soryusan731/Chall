<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    @vite('resources/css/app.css')
    <title>Document</title>
    <script src="https://kit.fontawesome.com/3a818acd01.js" crossorigin="anonymous"></script>
    <style>
       main{
      height: 600px;
        background-image:linear-gradient(rgba(0, 0, 0, 0.4),rgba(0, 0, 0, 0.4)), url("{{ asset('image/synthesio-0301.gif') }}");
        background-position: center;
        background-repeat: no-repeat;
        background-size: cover;

        }
        .mobile{
          top:96px;
          width: 100%;
          
        }
        .margin{
          margin-top: 13rem;
        }
        .borderAdd{
          border-bottom: 1px solid white;
          border-top-width: 2px ;
          border-left-width: 2px ;
          border-right-width: 2px ;
          border-radius: 3px;
          color: gray;
       } 
    </style>
</head>

<body>
@include('layouts.navbar')


@if(session()->has('admin_id'))

@yield('admin_content')
@vite('resources/js/admin.js')
@else
@yield('content')
@vite('resources/js/index.js')
@vite('resources/js/modal.js')

@endif

@include('layouts.footer')

</body>
</html>