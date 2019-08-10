
<!DOCTYPE html>
<html>

  <head>
    @include('layouts.head')
  </head>

  <body>
    @include('layouts.sidenav')
    
    <div class="main-content">
    
      <!-- Top navbar -->
      @include('layouts.topnav')

      <!-- Header -->
      @include('layouts.message_header')

      <!-- main content -->
      @yield('content')
    
      <!-- footer -->
      <br>
      <div class="container-fluid">
        <div class="row">
          <h4></h4>
        </div>
      </div>
    </div>
    
    <!-- Argon Scripts -->
    <!-- Core -->

    <script src="{{asset('assets/vendor/jquery/dist/jquery.min.js')}}"></script>
    {{-- <script src="https://code.jquery.com/jquery-3.3.1.js"></script> --}}

    <script src="{{asset('assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js')}}"></script>
    <!-- Optional JS -->
    <script src="{{asset('assets/vendor/chart.js/dist/Chart.min.js')}}"></script>
    <script src="{{asset('assets/vendor/chart.js/dist/Chart.extension.js')}}"></script>
    <!-- Argon JS -->
    <script src="{{asset('assets/js/argon.js?v=1.0.0')}}"></script>

    <script src="{{ asset('assets/vendor/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js')}}"></script>
    
    {{-- swiper --}}
    <script src="{{asset('assets/js/swiper.min.js')}}"></script>
    <script>
      var swiper = new Swiper('.swiper-container', {
        effect: 'flip',
        grabCursor: false,
        pagination: {
          el: '.swiper-pagination',
        },
        navigation: {
          nextEl: '.swiper-button-next',
          prevEl: '.swiper-button-prev',
        },
      });

      // $("#check-boxes").click(function(){
      //   // console.log('div clicked');
      //   swiper.next();
      // });

    </script>

  </body>

</html>