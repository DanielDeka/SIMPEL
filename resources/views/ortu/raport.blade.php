<!doctype html>
<!--[if lte IE 9]>     <html lang="en" class="no-focus lt-ie10 lt-ie10-msg"> <![endif]-->
<!--[if gt IE 9]><!--> <html lang="en" class="no-focus"> <!--<![endif]-->
    <head>
        @include('layouts.header')
    </head>
    <body>
        <div id="page-container" class="sidebar-o sidebar-inverse side-scroll page-header-fixed main-content-boxed">
            <!-- Sidebar -->
            @include('ortu.layout.sidebar')            
            <!-- END Sidebar -->

            <!-- Header -->
            @include('ortu.layout.header')
            <!-- END Header -->

            <!-- Main Container -->
            <main id="main-container">
                <!-- Breadcrumb -->
                <div class="bg-body-light border-b">
                    <div class="content py-5 text-center">
                        <nav class="breadcrumb bg-body-light mb-0">
                            <a class="breadcrumb-item" href="{{url('ortu')}}">Orang Tua</a>
                            <span class="breadcrumb-item active">Raport</span>
                        </nav>
                    </div>
                </div>
                <!-- END Breadcrumb -->

                <div class="row" style="padding: 2%;">
                    <div class="col-sm-4">
                        <div>
                            <a class="block bg-danger text-center" style="height:100%;" href="javascript:void(0)">
                                <div class="block-content block-content-full">
                                    <img class="img-avatar img-avatar-thumb" src="assets/img/avatars/avatar9.jpg" alt="">
                                </div>
                                <div class="block-content block-content-full bg-black-op-5">
                                    @foreach($siswa as $siswa)
                                    <div class="font-w600 text-white mb-5">{{$siswa->nama}}</div>
                                    <div class="font-size-sm text-white-op">{{$siswa->kelas}}</div>
                                    @endforeach
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-sm-8">
                        <div class="btn-group" role="group">
                            <!-- <button type="button" class="btn btn-primary dropdown-toggle" id="btnGroupVerticalDrop1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Mata Pelajaran</button> -->
                            <form id="select" action="{{url('/ortu/raport')}}">
                                <select class="form-control" id="select2" name="select2">
                                    @foreach ($pelajaran as $pelajaran)
                                    <option value="{{$pelajaran->id}}"><i class="fa fa-fw fa-book mr-5"></i>{{$pelajaran->nama}}</option>
                                    @endforeach
                                </select>
                            </form>
                        </div>
                                        <!-- Hover Table -->
                        <div class="block mt-5" style="height:100%">
                            <div class="block-header block-header-default">
                                <h3 class="block-title">Tabel Nilai</h3>
                            </div>
                            <div class="block-content">
                                <table class="table table-hover table-vcenter">
                                    <thead>
                                        <tr>
                                            <!-- <th class="text-center" style="width: 50px;">#</th> -->
                                            <th>Tugas</th>
                                            <th  style="width: 15%;">Nilai</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($nilai as $nilai)
                                        <tr>
                                            <!-- <th class="text-center" scope="row">1</th> -->
                                            <td>{{$nilai->nama}}</td>
                                            <td class="d-none d-sm-table-cell">
                                                <span class="badge badge-primary">{{$nilai->nilai}}</span>
                                            </td>
                                        </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <!-- END Hover Table -->
                    </div>
                </div>
                
                <!-- Page Content -->
                
                <!-- END Page Content -->
            </main>
            <!-- END Main Container -->

            <!-- Footer -->
            @include('layouts.footer')
            <!-- END Footer -->
        </div>
        <!-- END Page Container -->
        {{-- <script src="assets/js/pages/be_pages_ecom_dashboard.js"></script> --}}
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
        <script>
        $('select').on('change', function() {
            $('#select').submit();
        });
</script>
    </body>
</html>




