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
                            <span class="breadcrumb-item active">Daftar Laporan</span>
                        </nav>
                    </div>
                </div>
                <!-- END Breadcrumb -->

                <!-- Page Content -->
                <div class="content">
                    <div class="col-md col-xl">
                            <!-- Message List -->
                            <div class="block">
                                <div class="block-header block-header-default">
                                    <div class="block-title">
                                        <strong>Daftar Laporan Orangtua</strong>
                                    </div>
                                    <div class="block-options">
                                        <button type="button" class="btn-block-option" data-toggle="block-option">
                                            <i class="si si-arrow-left"></i>
                                        </button>
                                        <button type="button" class="btn-block-option" data-toggle="block-option">
                                            <i class="si si-arrow-right"></i>
                                        </button>
                                        <button type="button" class="btn-block-option" data-toggle="block-option" data-action="state_toggle" data-action-mode="demo">
                                            <i class="si si-refresh"></i>
                                        </button>
                                        <button type="button" class="btn-block-option" data-toggle="block-option" data-action="fullscreen_toggle"></button>
                                    </div>
                                </div>
                                <div class="block-content">

                                    <!-- Messages -->
                                    <!-- Checkable Table (.js-table-checkable class is initialized in Codebase() -> uiHelperTableToolsCheckable()) -->
                                    <table class="js-table-checkable table table-hover table-vcenter">
                                        <tbody>
                                            @foreach($siswas as $siswa)
                                                @foreach($siswa->laporan()->get() as $laporan)
                                            <tr>
                                                <td class="text-center" style="width: 40px;">
                                                    <label class="css-control css-control-primary css-checkbox">
                                                        <input type="checkbox" class="css-control-input">
                                                        <span class="css-control-indicator"></span>
                                                    </label>
                                                </td>
                                                <td class="d-none d-sm-table-cell font-w600" style="width: 140px;">{{
                                                $siswa->nama
                                                }}</td>
                                                <td>
                                                    <a class="font-w600" href="{{url('guru/laporan/'.$laporan->id)}}">{{$laporan->judul}}</a>
                                                    <div class="text-muted mt-5">A{{$laporan->detail}}</div>
                                                </td>
                                                <td class="d-none d-xl-table-cell font-w600 font-size-sm text-muted" style="width: 120px;">WED</td>
                                            </tr>
                                                @endforeach
                                            @endforeach
                                            
                                            
                                        </tbody>
                                    </table>
                                    <!-- END Messages -->
                                </div>
                            </div>
                            <!-- END Message List -->
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
        <script>
            jQuery(function () {
                // Init page helpers (Table Tools helper)
                Codebase.helpers('table-tools');
            });
        </script>
    </body>
</html>