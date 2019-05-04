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
                <!-- Hero -->

                <!-- END Hero -->

                <!-- Breadcrumb -->
                <div class="bg-body-light border-b">
                    <div class="content py-5 text-center">
                        <nav class="breadcrumb bg-body-light mb-0">
                            <a class="breadcrumb-item" href="be_pages_ecom_dashboard.html">Orang Tua</a>
                            <span class="breadcrumb-item active">Kelas</span>
                            <span class="breadcrumb-item active">Absensi</span>
                        </nav>
                    </div>
                </div>
                <!-- END Breadcrumb -->

                <!-- Page Content -->
                <div class="content ">
                    <!-- Overview -->
                    <h2 class="content-heading pt-0">Ringkasan</h2>
                    <div class="row gutters-tiny">
                        <!-- All Products -->
                        <div class="col-md-6 col-xl-4">
                            <a class="block block-rounded block-link-shadow" href="javascript:void(0)">
                                <div class="block-content block-content-full block-sticky-options">
                                    <div class="block-options">
                                        <div class="block-options-item">
                                            <i class="fa fa-circle-o fa-2x text-info-light"></i>
                                        </div>
                                    </div>
                                    <div class="py-20 text-center">
                                        <div class="font-size-h2 font-w700 mb-0 text-info" data-toggle="countTo" data-to="50">0</div>
                                        <div class="font-size-sm font-w600 text-uppercase text-muted">Hari Masuk</div>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <!-- END All Products -->

                        <!-- Top Sellers -->
                        <div class="col-md-6 col-xl-4">
                            <a class="block block-rounded block-link-shadow" href="javascript:void(0)">
                                <div class="block-content block-content-full block-sticky-options">
                                    <div class="block-options">
                                        <div class="block-options-item">
                                            <i class="fa fa-exclamation fa-2x text-warning-light"></i>
                                        </div>
                                    </div>
                                    <div class="py-20 text-center">
                                        <div class="font-size-h2 font-w700 mb-0 text-warning" data-toggle="countTo" data-to="5">0</div>
                                        <div class="font-size-sm font-w600 text-uppercase text-muted">Hari Izin</div>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <!-- END Top Sellers -->

                        <!-- Out of Stock -->
                        <div class="col-md-6 col-xl-4">
                            <a class="block block-rounded block-link-shadow" href="javascript:void(0)">
                                <div class="block-content block-content-full block-sticky-options">
                                    <div class="block-options">
                                        <div class="block-options-item">
                                            <i class="fa fa-warning fa-2x text-danger-light"></i>
                                        </div>
                                    </div>
                                    <div class="py-20 text-center">
                                        <div class="font-size-h2 font-w700 mb-0 text-danger" data-toggle="countTo" data-to="1">0</div>
                                        <div class="font-size-sm font-w600 text-uppercase text-muted">Hari Tanpa Izin</div>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <!-- END Out of Stock -->
                    </div>
                    <!-- END Overview -->

                    <!-- Products -->
                    <div class="row gutters-tiny">
                        <!-- Latest Orders -->
                        <div class="col-xl">
                            <h2 class="content-heading pt-4">Absensi Siswa</h2>
                            <div class="block block-rounded">
                                <div class="block-content">
                                    <table class="table table-borderless table-striped">
                                        <thead>
                                            <tr>
                                                <th style="width: 50px;">Hari</th>
                                                <th class="d-none d-sm-table-cell" style="width: 15%;">Status Absensi</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row">Senin, 6 April 2019</th>
                                                <td class="d-none d-sm-table-cell">
                                                    <span class="badge badge-danger">Tanpa Izin</span>
                                                </td>
                                            </tr>
                                        </tbody>
                                        <tbody>
                                            <tr>
                                                <th scope="row">Selasa, 7 April 2019</th>
                                                <td class="d-none d-sm-table-cell">
                                                    <span class="badge badge-warning">Izin</span>
                                                </td>
                                            </tr>
                                        </tbody>
                                        <tbody>
                                            <tr>
                                                <th scope="row">Rabu, 8 April 2019</th>
                                                <td class="d-none d-sm-table-cell">
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
                    <!-- END Products -->
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