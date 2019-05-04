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
                <div class="btn-group" role="group">
                    <button type="button" class="btn btn-primary dropdown-toggle" id="btnGroupVerticalDrop1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Mata Pelajaran</button>
                    <div class="dropdown-menu" aria-labelledby="btnGroupVerticalDrop1">
                        <a class="dropdown-item" href="javascript:void(0)">
                            <i class="fa fa-fw fa-bell mr-5"></i>News
                        </a>
                        <a class="dropdown-item" href="javascript:void(0)">
                            <i class="fa fa-fw fa-envelope-o mr-5"></i>Messages
                        </a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="javascript:void(0)">
                            <i class="fa fa-fw fa-pencil mr-5"></i>Edit Profile
                        </a>
                    </div>
                </div>

                <!-- END Breadcrumb -->

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
    </body>
</html>




