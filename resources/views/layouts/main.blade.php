
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

      <!-- main content -->
      @yield('content')
    
    </div>
    
    <!-- Argon Scripts -->
    <!-- Core -->
    <script src="{{asset('assets/vendor/jquery/dist/jquery.min.js')}}"></script>
    <script src="{{asset('assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js')}}"></script>
    <!-- Optional JS -->
    <script src="{{asset('assets/vendor/chart.js/dist/Chart.min.js')}}"></script>
    <script src="{{asset('assets/vendor/chart.js/dist/Chart.extension.js')}}"></script>
    <!-- Argon JS -->
    <script src="{{asset('assets/js/argon.js?v=1.0.0')}}"></script>
    
 
  <script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.10.18/datatables.min.js"></script>

    {{-- <script >
      $(document).ready(function() {
          $('#example').DataTable();
      } );
    </script> --}}


  </body>

</html>