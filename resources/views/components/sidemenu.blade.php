<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        <!-- Sidebar user panel -->
        <div class="sidebar-menu text-center">
            <div style="color:white">
                {{ auth()->user()->name }}
            </div>
        </div>
        
        <ul class="sidebar-menu" data-widget="tree">
            <li>
                <a href="{{ route('home') }}">
                    <i class="fa fa-circle-o"></i> <span>Bantuan Dibutuhkan</span>
                </a>
            </li>
            <li>
                <a href="{{ route('terpenuhi') }}">
                    <i class="fa fa-circle-o"></i> <span>Bantuan Terpenuhi</span>
                </a>
            </li>
            <li>
                <a href="{{ route('logout') }}">
                    <i class="fa fa-circle-o"></i> <span>Logout</span>
                </a>
            </li>
        </ul>

    </section>
    <!-- /.sidebar -->
</aside>