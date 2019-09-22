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

            <!-- Default box -->
            <div class="box">
                <div class="box-header with-border">
                    <h3 class="box-title">Bantuan Terpenuhi</h3>
                </div>
                <div class="box-body">
                    <table class="table table-bordered">
                        <tbody>
                            <tr>
                                <th>Nama</th>
                                <th>Tanggal Permintaan</th>
                                <th>Judul Bantuan</th>
                                <th>Jumlah Bantuan (Rupiah)</th>
                                <th>Tanggal Terpenuhi</th>
                            </tr>
                            @foreach($terpenuhi as $item)
                            <tr>
                                <td>{{ $item->asker->name }}</td>
                                <td>{{ $item->tanggal }}</td>
                                <td>{{ $item->judul }}</td>
                                <td class="text-right">Rp {{ number_format($item->jumlah_bantuan,2,",",".") }}</td>
                                <td>{{ $item->bantuan_giver->last()->created_at }}</td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
                <!-- /.box-body -->
            </div>
            <!-- /.box -->

            </section>
            <!-- /.content -->
        </div>
        <!-- /.content-wrapper -->
    </div>
</body>
@endsection