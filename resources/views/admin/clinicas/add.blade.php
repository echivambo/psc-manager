@extends('layouts.app')
@section('style')
  <!-- Custom fonts for this template -->
  <link href="../../../vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

  <!-- Custom styles for this template -->
  <link href="../../../css/sb-admin-2.min.css" rel="stylesheet">

  <!-- Custom styles for this page -->
  <link href="../../../vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
@endsection

@section('content')
  <div class="container">

    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800">Registar Assistentes Comunitários</h1>


    <div class="row justify-content-center">
      <div class="col-md-12">
        <div class="card">
          <div class="card-header">
            <a href="{{route('assistentes-comunitarios.index')}}" class="btn btn-primary btn-icon-split">
                      <span class="icon text-white-50">
                        <i class="fas fa-arrow-left"></i>
                      </span>
              <span class="text">Voltar a Lista</span>
            </a>
          </div>

          <div class="card-body">
            <!--@include('mensagens.msg')-->

            @if(isset($result))
              <form class="cmxform form-horizontal " method="POST" action="{{route('assistentes-comunitarios.update', $result->id)}}">
                <input name="_method" type="hidden" value="PATCH">
            @else
                <form method="POST" action="{{route('assistentes-comunitarios.store')}}">
            @endif
              @csrf

              <input type="hidden" id="user_id" name="user_id" value="{{Auth::user()->id}}">

              <div class="form-group row">
                <label for="nome" class="col-md-4 col-form-label text-md-right">Nome:</label>

                <div class="col-md-6">
                  <input id="nome" type="text" class="form-control @error('nome') is-invalid @enderror" name="nome"
                         required autocomplete="nome" autofocus
                         value="{{ isset($result->nome) ? $result->nome : old('nome')}}">

                  @error('nome')
                  <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                  @enderror
                </div>
              </div>

              <div class="form-group row">
                <label for="email" class="col-md-4 col-form-label text-md-right">Email:</label>

                <div class="col-md-6">
                  <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email"
                          required autocomplete="email" value="{{ isset($result->email) ? $result->email : old('email')}}">

                  @error('email')
                  <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                  @enderror
                </div>
              </div>

              <div class="form-group row">
                <label for="contacto" class="col-md-4 col-form-label text-md-right">Contacto: </label>

                <div class="col-md-6">
                  <input id="contacto" type="number" class="form-control @error('contacto') is-invalid @enderror" name="contacto"
                         autocomplete="contacto" maxlength="9" value="{{ isset($result->contacto) ? $result->contacto : old('contacto')}}">

                  @error('contacto')
                  <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                  @enderror
                </div>
              </div>

              <div class="form-group row mb-0">
                <div class="col-md-6 offset-md-4">
                  <button type="submit" class="btn btn-primary">
                    Registar
                  </button>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>


@section('script')
  <!-- Bootstrap core JavaScript-->
  <script src="../../../vendor/jquery/jquery.min.js"></script>
  <script src="../../../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="../../../vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="../../../js/sb-admin-2.min.js"></script>

  <!-- Page level plugins -->
  <script src="../../../vendor/datatables/jquery.dataTables.min.js"></script>
  <script src="../../../vendor/datatables/dataTables.bootstrap4.min.js"></script>

  <!-- Page level custom scripts -->
  <script src="../../../js/demo/datatables-demo.js"></script>
@endsection
@endsection
