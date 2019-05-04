<!doctype html>
<!--[if lte IE 9]>     <html lang="en" class="no-focus lt-ie10 lt-ie10-msg"> <![endif]-->
<!--[if gt IE 9]><!--> <html lang="en" class="no-focus"> <!--<![endif]-->
    <head>
        @include('layouts.header')
    </head>
    <body>
    
        <div id="page-container" class="sidebar-o sidebar-inverse side-scroll page-header-fixed main-content-boxed">
            <!-- Sidebar -->
            @include('guru.layout.sidebar')            
            <!-- END Sidebar -->

            <!-- Header -->
            @include('guru.layout.header')
            <!-- END Header -->

            <!-- Main Container -->
            <main id="main-container">
                <!-- Hero -->

                <!-- END Hero -->

                <!-- Breadcrumb -->
                <div class="bg-body-light border-b">
                    <div class="content py-5 text-center">
                        <nav class="breadcrumb bg-body-light mb-0">
                            <a class="breadcrumb-item" href="{{url('guru')}}">Guru</a>
                            <span class="breadcrumb-item ">Kelas</span>
                            <span class="breadcrumb-item active">Absensi</span>
                        </nav>
                    </div>
                </div>
                <!-- END Breadcrumb -->

                <!-- Page Content -->
                <div class="content">
                    <!-- Latest Orders and Top Products -->
                    <div class="row gutters-tiny">
                        <!-- Latest Orders -->
                        <div class="col-xl">
                            <h2 class="content-heading pt-0">Absensi Siswa<small> Senin, 1 April 2019</small></h2>
                            <div class="block block-rounded">
                                <div class="block-content">
                                    <table class="table table-borderless table-striped">
                                        <thead>
                                            <tr>
                                                <th class="text-center" style="width: 50px;">No. Absen</th>
                                                <th>Nama Siswa</th>
                                                <th class="d-none d-sm-table-cell" style="width: 15%;">Absensi</th>
                                            </tr>
                                        </thead>
                                        @if($status == 0)
                                        <form method="POST" action="{{url('guru/post_absen')}}">
                                        @csrf
                                        <tbody>
                                        @foreach($siswa as $siswa)
                                            <tr>
                                                <th class="text-center" scope="row">{{$count + 1}}</th>
                                                <td>{{$siswa->nama}}</td>
                                                <td class="d-none d-sm-table-cell" >
                                                    <select class="form-control" id="kehadiran[{{$count}}]" name="kehadiran[{{$count}}]">
                                                        <option value="1" selected>Hadir</option>
                                                        <option value="2">Tanpa Izin</option>
                                                        <option value="3">Izin</option>
                                                    </select>
                                                    <input class="form-control" type="text" hidden id="siswa[{{$count}}]" name="siswa[{{$count++}}]" value="{{ $siswa->id }}">
                                                </td>
                                            </tr>
                                        @endforeach
                                        </tbody>
                                        
                                        <input type="text" hidden id="ktl" value="besar">
                                    </table>
                                    <div class="form-group row">
                                        <div class="col-md-9 pull-right">
                                            <button type="submit" class="btn btn-alt-primary">Submit</button>
                                        </div>
                                    </div>
                                        </form>
                                        @else
                                        <tbody>
                                            <tr>
                                                <td class="text-center"></td>
                                                <td class="font-w600 text-muted text-center">Anda telah melakukan Absensi</td>
                                                <td class="font-size-sm">
                                                    <span class="badge badge-danger"></span>
                                                </td>
                                            </tr>
                                            
                                        </tbody>
                                        @endif
                                </div>
                            </div>
                        </div>
                        <!-- END Latest Orders -->
                    </div>
                    <!-- END Latest Orders and Top Products -->
                </div>
                <!-- END Page Content -->
            </main>
            <!-- END Main Container -->

            <!-- Footer -->
            @include('layouts.footer')
            <!-- END Footer -->
        </div>
        <!-- END Page Container -->
        <script>
            jQuery(function () {
                // Init page helpers (Table Tools helper)
                Codebase.helpers('table-tools');
            });
        </script>
    </body>
</html>