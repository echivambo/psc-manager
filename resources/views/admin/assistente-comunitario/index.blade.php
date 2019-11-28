@extends('layouts.app')

@section('style')
  <!-- Custom fonts for this template -->
  <link href="../../vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

  <!-- Custom styles for this template -->
  <link href="../../css/sb-admin-2.min.css" rel="stylesheet">

  <!-- Custom styles for this page -->
  <link href="../../vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
@endsection

@section('content')

  <!-- Begin Page Content -->
  <div class="container-fluid">
    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800">Assistentes Comunitários</h1>

    <p class="md-4">Please fill in the period. Give details of the food you want it to help us select the exert chef for the work.</p>


    <!-- DataTales Example -->
    <div class="card shadow mb-4">

      <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">
          <a href="{{route('assistentes-comunitarios.create')}}" class="btn btn-primary btn-icon-split">
                      <span class="icon text-white-50">
                        <i class="fas fa-arrow-right"></i>
                      </span>
            <span class="text">Adicionar Novo</span>
          </a>
        </h6>
      </div>
      <div class="card-body">
        <div class="table-responsive">

          @include('mensagens.msg')

          <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
            <thead>
            <tr>
              <th>ID</th>
              <th>Nome</th>
              <th>Email</th>
              <th>Contacto</th>
              <th>Usuário</th>
              <th class="text-center" colspan="2"><i class="fas fa-tools"></i></th>
            </tr>
            </thead>
            <tfoot>
            <tr>
              <th>ID</th>
              <th>Nome</th>
              <th>Email</th>
              <th>Contacto</th>
              <th>Usuário</th>
              <th class="text-center" colspan="2"><i class="fas fa-tools"></i></th>
            </tr>
            </tfoot>
            <tbody>
            @if(isset($results))
              @foreach($results as $result)
            <tr>
              <td>{{$result->id}}</td>
              <td>{{$result->nome}}</td>
              <td>{{$result->email}}</td>
              <td>{{$result->contacto}}</td>
              <td>{{$result->user}}</td>
              <td  class="text-center">
                <a href="{{ route('assistentes-comunitarios.edit', $result->id)}}" class="btn btn-warning btn-circle">
                  <i class="fas fa-pencil-alt"></i>
                </a>
              </td>
              <td  class="text-center">
                <form action="{{ route('assistentes-comunitarios.destroy', $result->id)}}" method="POST">
                  @method('DELETE')
                  @csrf
                  <button class="btn btn-danger btn-circle"
                          onclick="return confirm('Remover  da base de dados?')">
                    <i class="fas fa-trash"></i>
                  </button>
                </form>
              </td>
            </tr>

              @endforeach
            @endif
            </tbody>
          </table>
        </div>
      </div>
    </div>

  </div>
  <!-- /.container-fluid -->
@endsection

@section('script')
  <!-- Bootstrap core JavaScript-->
  <script src="../../vendor/jquery/jquery.min.js"></script>
  <script src="../../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="../../vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="../../js/sb-admin-2.min.js"></script>

  <!-- Page level plugins -->
  <script src="../../vendor/datatables/jquery.dataTables.min.js"></script>
  <script src="../../vendor/datatables/dataTables.bootstrap4.min.js"></script>

  <!-- Page level custom scripts -->
  <script src="../../js/demo/datatables-demo.js"></script>
@endsection