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
                            <span class="breadcrumb-item active">Dashboard</span>
                        </nav>
                    </div>
                </div>
                <!-- END Breadcrumb -->

                <!-- Hero -->
                <div class="bg-image" style="background-image: url({{asset('assets/codebase/assets/img/photos/alam.jpg')}});">
                    <div class="bg-black-op-75">
                        <div class="content content-top content-full text-center">
                            <div class="py-20">
                                <h1 class="h2 font-w700 text-white mb-10">Kelas 3 A</h1>
                                <h2 class="h4 font-w400 text-white-op mb-0">Selamat datang, <a class="text-primary-light link-effect" href="be_pages_ecom_orders.html">Bapak Alam</a>!</h2>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- END Hero -->

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




