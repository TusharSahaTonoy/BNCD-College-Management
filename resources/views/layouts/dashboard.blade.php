
@extends('layouts.main')

@section('title','Dashboard')


@section('content')

  @auth
    @if( auth()->user()->type == "admin" || auth()->user()->type == "superadmin" )
      @include('admin.dash_admin')
    @endif 
       
    {{-- @if( auth()->user()->type == "admin" || auth()->user()->type == "superadmin" )
      @include('admin.dash_admin')
    @endif 

    @if( auth()->user()->type == "admin" || auth()->user()->type == "superadmin" )
      @include('admin.dash_admin')
    @endif 

    @if( auth()->user()->type == "admin" || auth()->user()->type == "superadmin" )
      @include('admin.dash_admin')
    @endif 

    @if( auth()->user()->type == "admin" || auth()->user()->type == "superadmin" )
      @include('admin.dash_admin')
    @endif  --}}

    @else 
    

  @endauth
    
@endsection
  

  
