
<!DOCTYPE html>
<html>

  <head>
    @include('layouts.head')
  </head>

  <body>
    @include('layouts.sidenav')
    
    <div class="main-content">
    
      <div class="container-fluid">
        <div class="header-body">
            @if (count($errors)>0)
            @foreach ($errors->all() as $error)
              <div class="alert alert-danger">{{ $error }}</div>
            @endforeach
          @endif
        </div>
      </div>
      <!-- Top navbar -->
      @include('layouts.topnav')

      <!-- main content -->
      @yield('content')
    
    </div>
    
    <!-- Argon Scripts -->
    <!-- Core -->
    
    <script src="{{asset('assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js')}}"></script>
    <!-- Optional JS -->
    <script src="{{asset('assets/vendor/chart.js/dist/Chart.min.js')}}"></script>
    <script src="{{asset('assets/vendor/chart.js/dist/Chart.extension.js')}}"></script>
    <!-- Argon JS -->
    <script src="{{asset('assets/js/argon.js?v=1.0.0')}}"></script>

    <script src="{{ asset('assets/vendor/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js')}}"></script>
    
 
  <script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.10.18/datatables.min.js"></script>

    {{-- <script >
      $(document).ready(function() {
          $('#example').DataTable();
      } );
    </script> --}}


  </body>

</html>