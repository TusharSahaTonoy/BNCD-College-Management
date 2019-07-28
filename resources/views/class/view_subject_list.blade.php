@extends('layouts.main')

@section('title','Class Subject List')

@section('content')

  <div class="header bg-gradient-subject pb-9 pt-5 pt-lg-8 " >
    <span class="mask opacity-8"></span>
    <div class="container-fluid d-flex ">
      <div class="header-body">

        @if (count($errors)>0)
          @foreach ($errors->all() as $error)
            <div class="alert alert-danger">{{ $error }}</div>
          @endforeach
        @endif
      </div>
    </div>
  </div>

  <!-- Page content -->
  <div class="container-fluid mt--7">
    <div class="col-xl-12 order-xl-1">
      <div class="card bg-secondary shadow">
        <div class="card-header bg-white border-0">
          <div class="row align-items-center">
            <div class="col-8">
              <h3 class="mb-0">Subject List</h3>
            </div>
            <div class="col-4 text-right">
              @if ((in_array(auth()->user()->type ,array("SuperAdmin","Admin","VicePrincipal","Principal","Worker"))))
                <button type="button" class="btn btn-md btn-primary" data-toggle="modal" data-target="#galleryModal">Add New Subject</button>
              @endif
            </div>
          </div>
        </div>

        <div class="card-body">
          <div class="table-responsive"><br>
            <table class="table align-items-center table-flush text-center display" id="example"  style="width:100%">
              <thead>
                <tr class="text-center">
                  <th scope="col">#</th>
                  <th scope="col">Class</th>
                  <th scope="col">Group</th>
                  <th scope="col">Total Subject</th>
                  <th scope="col">Action</th>
                </tr>
              </thead>
              <tbody>
                @foreach ($subject_list as $index => $subject)
                  <tr>
                    <td>{{ ++$index }}</td>
                    <td>{{ $subject->class }}</td>
                    <td>{{ $subject->group }}</td>
                    <td>
                      {{ App\ClassSubjectList::where('class',$subject->class)->where('group',$subject->group)->groupBy('class','group')->count() }}
                    </td>
                    <td class="row justify-content-center">

                      {{-- View --}}
                      <a href="#" class="btn btn-sm btn-success" data-toggle="modal" data-target="#Modal-Description{{ $subject->class }}"><i class="far fa-eye"></i></a>
                      <div class="modal fade" id="Modal-Description{{ $subject->class }}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                          <div class="modal-content ">
                            <div class="modal-header">
                              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                              </button>
                            </div>
                            <div class="modal-body">
                              @php
                              if ($subject->class&& $subject->group) {
                                $subject_name_list=App\ClassSubjectList::where('class',$subject->class)->where('group',$subject->group)->get();
                              }else {
                                $subject_name_list=App\ClassSubjectList::where('class',$subject->class)->get();
                              }
                              @endphp
                              <table class="table table-bordered table-hover">
                                <tbody>
                                  @foreach ($subject_name_list as $name)
                                    <tr>
                                      <th>{{ $name->subject}}</th>
                                    </tr>
                                  @endforeach
                                </tbody>
                              </table>
                            </div>
                          </div>
                        </div>
                      </div>
                      {{-- End View --}}
                      @if ((in_array(auth()->user()->type ,array("SuperAdmin","Admin","VicePrincipal","Principal","CoOrdinator"))))

                        <a href="{{ route('subject-list.edit',['id'=>$subject->id]) }}" class="btn btn-sm btn-warning"><i class="fas fa-edit blue"></i></a>
                      @endif
                      @if ((in_array(auth()->user()->type ,array("SuperAdmin","Admin","VicePrincipal","Principal"))))
                        <a href="#" class="btn btn-sm btn-danger" data-toggle="modal" data-target="#Modal-delete{{ $subject->id }}"><i class="fas fa-trash red"></i></a>
                        <!-- Modal -->
                        <div class="modal fade" id="Modal-delete{{ $subject->id }}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                          <div class="modal-dialog modal-dialog-centered" role="document">
                            <div class="modal-content">
                              <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Class Subject List</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                  <span aria-hidden="true">&times;</span>
                                </button>
                              </div>
                              <form action="{{ route('subject-list.destroy',['id'=>$subject->id]) }}" method="post" >
                                <div class="modal-body">
                                  {{ csrf_field() }}
                                  {{ method_field("DELETE") }}
                                  <h2>Are you sure you want to delete?</h2>
                                </div>
                                <div class="modal-footer">
                                  <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                  <button type="submit" class="btn btn-danger">Delete</button>
                                </div>
                              </form>
                            </div>
                          </div>
                        </div>
                      @endif
                    </td>
                  </tr>
                @endforeach
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
  </div>


@endsection