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
                            <a class="breadcrumb-item" href="be_pages_ecom_dashboard.html">Guru</a>
                            <span class="breadcrumb-item active">Daftar Siswa</span>
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
                            <h2 class="content-heading pt-0">Daftar Absensi Siswa Kelas 3A</h2>
                            <div class="block block-rounded">
                                <div class="block-content">
                                    <table class="table table-borderless table-striped js-table-sections">
                                        <thead>
                                            <tr>
                                                <th class="text-center" style="width: 50px;">No. Absen</th>
                                                <th>Nama Siswa</th>
                                                <th class="d-none d-sm-table-cell" style="width: 15%;">Absensi</th>
                                            </tr>
                                        </thead>
                                        <tbody class="js-table-sections-header">
                                            <tr>
                                                <th class="text-center" scope="row">1</th>
                                                <td>Alam Cahya Kumolo</td>
                                                <td class="d-none d-sm-table-cell">
                                                    <span class="badge badge-danger">Tanpa Izin</span>
                                                </td>
                                            </tr>
                                        </tbody>
                                        <tbody>
                                            <tr>
                                                <td class="text-center"></td>
                                                <td class="font-w600 text-muted">Senin, 6 April 2019</td>
                                                <td class="font-size-sm">
                                                    <span class="badge badge-danger">Tanpa Izin</span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="text-center"></td>
                                                <td class="font-w600 text-muted">Selasa, 7 April 2019</td>
                                                <td class="font-size-sm">
                                                    <span class="badge badge-success">Hadir</span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="text-center"></td>
                                                <td class="font-w600 text-muted">Rabu, 8 April 2019</td>
                                                <td class="font-size-sm">
                                                    <span class="badge badge-success">Hadir</span>
                                                </td>
                                            </tr>
                                        </tbody>
                                        <tbody class="js-table-sections-header">
                                            <tr>
                                                <th class="text-center" scope="row">2</th>
                                                <td>Abyan "myans" Dafa</td>
                                                <td class="d-none d-sm-table-cell">
                                                    <span class="badge badge-info">Izin</span>
                                                </td>
                                            </tr>
                                        </tbody>
                                        <tbody>
                                            <tr>
                                                <td class="text-center"></td>
                                                <td class="font-w600 text-muted">Senin, 6 April 2019</td>
                                                <td class="font-size-sm">
                                                    <span class="badge badge-danger">Tanpa Izin</span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="text-center"></td>
                                                <td class="font-w600 text-muted">Selasa, 7 April 2019</td>
                                                <td class="font-size-sm">
                                                    <span class="badge badge-success">Hadir</span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="text-center"></td>
                                                <td class="font-w600 text-muted">Rabu, 8 April 2019</td>
                                                <td class="font-size-sm">
                                                    <span class="badge badge-success">Hadir</span>
                                                </td>
                                            </tr>
                                        </tbody>
                                        <tbody class="js-table-sections-header">
                                            <tr>
                                                <th class="text-center" scope="row">3</th>
                                                <td>Fandy "Jinusean" Mohammad</td>
                                                <td class="d-none d-sm-table-cell">
                                                    <span class="badge badge-success">Hadir</span>
                                                </td>
                                            </tr>
                                        </tbody>
                                        <tbody>
                                            <tr>
                                                <td class="text-center"></td>
                                                <td class="font-w600 text-muted">Senin, 6 April 2019</td>
                                                <td class="font-size-sm">
                                                    <span class="badge badge-danger">Tanpa Izin</span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="text-center"></td>
                                                <td class="font-w600 text-muted">Selasa, 7 April 2019</td>
                                                <td class="font-size-sm">
                                                    <span class="badge badge-success">Hadir</span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="text-center"></td>
                                                <td class="font-w600 text-muted">Rabu, 8 April 2019</td>
                                                <td class="font-size-sm">
                                                    <span class="badge badge-success">Hadir</span>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
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