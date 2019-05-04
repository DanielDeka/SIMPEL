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
                            <span class="breadcrumb-item active">Laporan</span>
                            <span class="breadcrumb-item active">Buat Laporan</span>
                        </nav>
                    </div>
                </div>
                <!-- END Breadcrumb -->

                <!-- Page Content -->
                <div class="content">
                    <div class="block block-themed">
                        <div class="block-header bg-gd-cherry">
                            <h3 class="block-title">Form Laporan Orang Tua</h3>
                            <div class="block-options">
                                <button type="button" class="btn-block-option" data-toggle="block-option" data-action="state_toggle" data-action-mode="demo">
                                    <i class="si si-refresh"></i> Reset
                                </button>
                            </div>
                        </div>
                        <div class="block-content">
                            <form action="{{url('guru/laporan')}}" method="post">
                                @csrf
                                <div class="form-group row">
                                    <div class="col-12">
                                        <div class="form-material floating">
                                            <input type="text" class="form-control" id="judul_kejadian" name="judul_kejadian">
                                            <label for="register3-username">Nama Kejadian / Laporan</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-12">
                                        <div class="form-material floating">
                                            <select class="form-control" id="id_siswa" name="contact2-subject" size="1">
                                                @foreach($siswas as $siswa)
                                                <option value="{{$siswa->id}}">{{$siswa->nama}}</option>    
                                                @endforeach
                                            </select>
                                            <label for="contact2-subject">Nama Siswa</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-12">
                                        <div class="form-material floating">
                                            <input type="text" class="form-control" id="waktu_kejadian" name="waktu_kejadian">
                                            <label for="register3-username">Waktu Kejadian</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-12">
                                        <div class="form-material floating">
                                            <textarea class="form-control" id="detail_kejadian" name="detail_kejadian" rows="7"></textarea>
                                            <label for="contact3-msg">Detail Kejadian</label>
                                        </div>
                                        <div class="form-text text-muted text-right">Jelaskan dengan detail kejadian yang terjadi agar orangtua paham dengan maksud anda.</div>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-12">
                                        <button type="submit" class="btn btn-alt-primary">
                                            Submit
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <!-- END Page Content -->
            </main>
            <!-- END Main Container -->

            <!-- Footer -->
            @include('layouts.footer')
            <!-- END Footer -->
        </div>
        <!-- END Page Container -->
    </body>
</html>