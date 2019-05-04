<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        @include('layouts.header')
    </head>
    <body>
        <div id="page-container" class="sidebar-inverse side-scroll page-header-fixed page-header main-content-boxed">
            <!-- Sidebar -->
            <!-- END Sidebar -->

            <!-- Header -->
            <header id="page-header">
                <!-- Header Content -->
                <div class="content-header">
                    <!-- Left Section -->
                    <div class="content-header-section">
                        <img class="img-fluid" src="{{asset('assets/codebase/assets/img/logos/logo.png')}}">
                    </div>
                    <!-- END Left Section -->

                    <!-- Middle Section -->
                    <!-- END Middle Section -->

                    <!-- Right Section -->
                    <div class="content-header-section">
                        <!-- Color Themes + A few of the many header options (used just for demonstration) -->
                        <!-- Themes functionality initialized in Codebase() -> uiHandleTheme() -->
                        <div class="btn-group ml-5" role="group">
                            <button type="button" class="btn btn-circle btn-primary" data-toggle="modal" data-target="#modal-slideup">
                              <i class="fa fa-user"></i>
                            </button>
                        </div>
                        <!-- END Color Themes + A few of the many header options -->
                        <a class="font-w700 mr-5" href="index.html">
                            <span class="font-size-xl text-primary">Masuk</span>
                        </a>
                        <!-- END Toggle Sidebar -->
                    </div>
                    <!-- END Right Section -->
                </div>
                <!-- END Header Content -->

                <!-- Header Search -->
                <!-- END Header Search -->

                <!-- Header Loader -->
                <!-- Please check out the Activity page under Elements category to see examples of showing/hiding it -->
                <div id="page-header-loader" class="overlay-header bg-primary">
                    <div class="content-header content-header-fullrow text-center">
                        <div class="content-header-item">
                            <i class="fa fa-sun-o fa-spin text-white"></i>
                        </div>
                    </div>
                </div>
                <!-- END Header Loader -->
            </header>
            <!-- END Header -->

            <!-- Main Container -->
            <main id="main-container">
                <!-- Page Content -->
                <div class="content content-full">
                    <div class="row">
                        <div class="col-sm">
                            <div>
                                <div class="block-content">
                                    <p class="text-right py-100">
                                        <span class="font-w700 mr-5 font-size-h1 text-primary">SIMPEL</span>
                                        <br>
                                        <span class="font-w700 mr-5 font-size-xl text">Sistem Informasi Monitoring Pelajar</span>
                                        <br>
                                        Pantau kegiatan dan kondisi anak anda di sekolah,
                                        <br>
                                        dimana saja dan kapan saja.
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm">
                            <div class="block block-rounded bg-image" style="background-image: url({{asset('assets/codebase/assets/img/photos/component.png')}});">
                                <div class="block-content">
                                    <p class="text-right py-200">
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- END Page Content -->
            </main>
            <!-- END Main Container -->

            <!-- Large modal -->
            <div class="modal fade" id="modal-slideup" tabindex="-1" role="dialog" aria-labelledby="modal-slideup" aria-hidden="true">
                <div class="modal-dialog modal-dialog-slideup" role="document">
                    <div class="modal-content">
                        <div class="block block-themed block-transparent mb-0">
                            <div class="block-content">
                                <button type="button" class="btn btn-lg btn-circle btn-primary mr-5 mb-5 pull-right" data-dismiss="modal" aria-label="Close">
                                    <i class="fa fa-times"></i>
                                </button>
                                <p class="text-left">
                                    <span class="font-w700 mr-5 font-size-h1 text-primary">Masuk dengan akun anda</span>
                                    <br>
                                    <br>
                                    <a href="{{url('login_guru')}}"><button type="button" class="btn btn-hero btn-rounded btn-noborder btn-danger mr-5 mb-5">
                                        Sebagai Guru
                                    </button></a>
                                    <br>
                                    <br>
                                    <a href="{{url('login_ortu')}}"><button type="button" class="btn btn-hero btn-rounded btn-noborder btn-danger mr-5 mb-5">
                                        Sebagai Orangtua
                                    </button></a>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Footer -->
            <footer id="page-footer" class="opacity-0">
                <!-- <div class="content py-20 font-size-xs clearfix">
                    <div class="float-right">
                        Crafted with <i class="fa fa-heart text-pulse"></i> by <a class="font-w600" href="http://goo.gl/vNS3I" target="_blank">pixelcave</a>
                    </div>
                    <div class="float-left">
                        <a class="font-w600" href="https://goo.gl/po9Usv" target="_blank">Codebase 2.0</a> &copy; <span class="js-year-copy">2017</span>
                    </div>
                </div> -->
                <a class="font-w600" href="https://goo.gl/po9Usv">Tentang kita</a>
            </footer>
            <!-- END Footer -->
        </div>
    </body>
</html>
