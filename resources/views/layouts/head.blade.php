  <meta charset="utf-8">  
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="Start your development with a Dashboard for Bootstrap 4.">
  <meta name="author" content="Creative Tim">
  <meta name="csrf-token" content="{{ csrf_token() }}">

  <title>@yield('title')</title>
  
  <!-- Favicon -->
    <link href=" {{asset('assets/img/brand/favicon.png')}}" rel="icon" type="image/png">

  <!-- Fonts -->

  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
  <!-- Icons -->
  <link href="{{asset('assets/vendor/nucleo/css/nucleo.css')}}" rel="stylesheet">
  <link href="{{asset('assets/vendor/@fortawesome/fontawesome-free/css/all.min.css')}}" rel="stylesheet">
  <!-- Argon CSS -->
  <link type="text/css" href="{{asset('assets/css/argon.min.css?v=1.0.0')}}" rel="stylesheet">

  {{-- swiper --}}
  <link type="text/css" href="{{asset('assets/css/swiper.min.css')}}" rel="stylesheet">
  
  {{-- making number box without buttons --}}
  <style>
    input[type=number] { 
      -moz-appearance: textfield;
      appearance: textfield;
      margin: 0; 
    }
    input[type=number]::-webkit-inner-spin-button, 
    input[type=number]::-webkit-outer-spin-button { 
          -webkit-appearance: none; 
          margin: 0; 
    }
  </style>