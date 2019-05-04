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
                            <a class="breadcrumb-item" href="{{url('ortu')}}">Orang Tua</a>
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
                                        <strong>Daftar Laporan Siswa</strong>
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
                                    <div class="row">
                                    <div class="col-md-12">
                                <!-- Default Elements -->
                                        <div class="block">
                                            <div class="block-content">
                                                <form action="be_forms_elements_bootstrap.html" method="post" enctype="multipart/form-data" onsubmit="return false;">
                                                    <div class="form-group row">
                                                        <label class="col-12">Judul</label>
                                                        <div class="col-md-9">
                                                            <div class="form-control-plaintext">{{ $laporan->judul }}</div>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="col-12" for="example-text-input">Detail</label>
                                                        <div class="col-md-9">
                                                            <div class="form-text text-muted">{{ $laporan->detail }}</div>
                                                        </div>
                                                    </div>
                                                        
                                                    <div class="js-chat-talk block-content block-content-full text-wrap-break-word overflow-y-auto" data-chat-id="4"></div>

                                    <!-- Chat Input -->
                                                </form>
                                                    <div class="js-chat-form block-content block-content-full block-content-sm bg-body-light">
                                                        <form action="asdas.html" method="post">
                                                            <input class="js-chat-input form-control" type="text" data-target-chat-id="4" placeholder="Type your message and hasdasdit enter..">
                                                        </form>
                                                    </div>
                                            </div>
                                        </div>
                            <!-- END Default Elements -->
                        </div>
                    </div>
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
        <script src="{{ asset('assets/codebase/assets/js/pages/be_comp_chat.js') }}"></script>
        <script>
            jQuery(function () {
                
                // BeCompChat.addHeader(4, 'Yesterday');
                // BeCompChat.addMessage(4, 'Hi Admin!');
                // BeCompChat.addMessage(4, 'How are you?');
                // BeCompChat.addHeader(4, 'Today');
                // BeCompChat.addMessage(4, 'I\'m fine, thanks!', 'self')});
                @foreach ($komentars as $komentar)
                    @if($komentar->tipe==2)
                        BeCompChat.addMessage(4, '{{$komentar->isi}}', 'self');
                    @else
                        BeCompChat.addMessage(4, '{{$komentar->isi}}');
                    @endif
                @endforeach 
                });
        </script>   

        <script>
            jQuery(function () {
                // Init page helpers (Table Tools helper)
                Codebase.helpers('table-tools');
            });
        </script>

    </body>
</html>