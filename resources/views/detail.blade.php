@extends('layouts.main')

@section('header')
  @include('layouts.head-auth')
@endsection

@section('body')

<body class="hold-transition skin-blue sidebar-mini">
    <!-- Site wrapper -->
    <div class="wrapper">
        @include('components.header')
        @include('components.sidemenu')

        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">

            <!-- Main content -->
            <section class="content">

            <h4>Detail Bantuan</h4>
            <!-- Default box -->
            <div class="box">
                <div class="box-header with-border">
                    <h3 class="box-title">Info</h3>
                </div>
                <div class="box-body">
                  
                  @if (session('status')) 
                      <div class="alert alert-success alert-dismissible">
                          <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                          <h4><i class="icon fa fa-check"></i> Alert!</h4>
                          {{ session('status') }}
                      </div>
                  @endif
                  
                  <div class="form-horizontal">
                    <div class="form-group">
                      <label for="inputName" class="col-sm-2 control-label pt-0">Nama Asker</label>
                      <div class="col-sm-10">
                        <div>{{ $bantuan->asker->name }}</div>
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="inputName" class="col-sm-2 control-label pt-0">Tanggal Permintaan</label>
                      <div class="col-sm-10">
                        <div>{{ $bantuan->tanggal }}</div>
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="inputName" class="col-sm-2 control-label pt-0">Judul Bantuan</label>
                      <div class="col-sm-10">
                        <div>{{ $bantuan->judul }}</div>
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="inputName" class="col-sm-2 control-label pt-0">Detail Bantuan</label>
                      <div class="col-sm-10">
                        <div>{{ $bantuan->detail }}</div>
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="inputName" class="col-sm-2 control-label pt-0">Bantuan yang dibutuhkan</label>
                      <div class="col-sm-10">
                        <div>Rp {{ number_format($bantuan->jumlah_bantuan,2,",",".") }}</div>
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="inputName" class="col-sm-2 control-label pt-0">Bantuan Terpenuhi</label>
                      <div class="col-sm-10">
                        <div>Rp {{ number_format($bantuan->bantuan_giver->sum('nilai_bantuan'),2,",",".") }} 
                          dari {{ $bantuan->bantuan_giver->count() }} orang giver</div>
                      </div>
                    </div>
                  </div>

                  
                  <h4>Detail Bantuan</h4>
                  <form class="form-horizontal" action="{{ route('beriBantuan', $bantuan->id) }}" method="post">
                    @csrf
                    <div class="form-group">
                      <label for="inputName" class="col-sm-2 control-label pt-0">Saldo saya saat ini</label>
                      <div class="col-sm-10">
                        <div> Rp {{ number_format(auth()->user()->saldo->saldo ,2,",",".") }}</div>
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="inputName" class="col-sm-2 control-label pt-0">Saya ingin membantu asker ini sebesar</label>
                      <div class="col-sm-10">
                        <div>(minimal 100 rb)</div>
                      </div>
                    </div>

                    @if ($errors->any())
                        <div class="alert alert-danger">
                            <ul>
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif
                    <div class="text-center form-inline">
                      <input type="number" min="100000" name="nilai_bantuan" class="form-control">
                      <div style="margin-top:10px">
                        <button class="btn btn-primary" type="submit">Berikan bantuan</button>
                      </div>
                    </div>
                  </form>
                </div>
            </div>
            <!-- /.box -->

            </section>
            <!-- /.content -->
        </div>
        <!-- /.content-wrapper -->
    </div>
    <script>
      if({{ session('status') }}){
        alert("{{ session('status') }}")
      }
    </script>
</body>
@endsection