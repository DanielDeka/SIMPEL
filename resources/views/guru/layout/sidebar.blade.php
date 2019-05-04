<nav id="sidebar">
@php
date_default_timezone_set('Asia/Jakarta')
@endphp
                <!-- Sidebar Scroll Container -->
                <div id="sidebar-scroll ">
                    <!-- Sidebar Content -->
                    <div class="sidebar-content">
                        <!-- Side Header -->
                        <div class="content-header content-header-fullrow px-15">
                            <!-- Mini Mode -->
                            <!-- END Mini Mode -->

                            <!-- Normal Mode -->
                            <div class="content-header-section text-center align-parent sidebar-mini-hidden">
                                <!-- Close Sidebar, Visible only on mobile screens -->
                                <!-- Layout API, functionality initialized in Codebase() -> uiApiLayout() -->
                                <button type="button" class="btn btn-circle btn-dual-secondary d-lg-none align-v-r" data-toggle="layout" data-action="sidebar_close">
                                    <i class="fa fa-times text-danger"></i>
                                </button>
                                <!-- END Close Sidebar -->

                                <!-- Logo -->
                                <div class="content-header-item">
                                    <a class="link-effect font-w700 mr-5" href="index.html">
                                        <span class="font-size-xl text-primary">SIMPEL</span>
                                    </a>
                                </div>
                                <!-- END Logo -->
                            </div>
                            <!-- END Normal Mode -->
                        </div>
                        <!-- END Side Header -->

                        <!-- Side User -->
                        {{-- <div class="content-side content-side-full content-side-user px-10 align-parent bg-gd-pulse"> --}}
                        <div class="content-side content-side-full content-side-user px-10 align-parent">
                            <!-- Visible only in normal mode -->
                            <div class="sidebar-mini-hidden-b text-center">
                                <a class="img-link" href="be_pages_generic_profile.html">
                                    <img class="img-avatar" src="{{asset('assets/codebase/assets/img/avatars/avatar15.jpg')}}" alt="">
                                </a>
                                <ul class="list-inline mt-10">
                                    <li class="list-inline-item">
                                        <a class="link-effect text-dual-primary-dark font-size-xs font-w600 text-uppercase" href="be_pages_generic_profile.html">{{$guru->nama}}</a>
                                    </li>
                                    <li>
                                        <span class="text-dual-primary-dark font-size-s font-w600 text-uppercase">{{date("l, d - M - Y")}}</span>
                                    </li>
                                </ul>
                            </div>
                            <!-- END Visible only in normal mode -->
                        </div>
                        <!-- END Side User -->

                        <!-- Side Navigation -->
                        <div class="content-side content-side-full">
                            <ul class="nav-main">
                                <li>
                                    <a class="nav-submenu" data-toggle="nav-submenu" href="#"><i class="si si-home"></i><span class="sidebar-mini-hide">Kelas</span></a>
                                    <ul>
                                        <li>
                                            <a href="{{url('guru/daftar_siswa')}}">Daftar Siswa</a>
                                        </li>
                                        <li>
                                            <a href="{{url('guru/absensi')}}">Absensi</a>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a class="nav-submenu" data-toggle="nav-submenu" href="#"><i class="si si-notebook"></i><span class="sidebar-mini-hide">Laporan</span></a>
                                    <ul>
                                        <li>
                                            <a href="{{url('guru/form_laporan')}}">Buat Laporan</a>
                                        </li>
                                        <li>
                                            <a href="{{url('guru/daftar_laporan')}}">Daftar Laporan Siswa</a>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a class="nav-submenu" data-toggle="nav-submenu" href="#"><i class="si si-graduation"></i><span class="sidebar-mini-hide">Raport</span></a>
                                    <ul>
                                        <li>
                                            <a href="{{url('guru/form_nilai')}}">Input Nilai</a>
                                        </li>
                                        <li>
                                            <a href="#">Data Nilai Siswa</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <!-- END Side Navigation -->
                    </div>
                    <!-- Sidebar Content -->
                </div>
                <!-- END Sidebar Scroll Container -->
            </nav>