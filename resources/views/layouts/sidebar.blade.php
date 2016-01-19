<aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
          <!-- Sidebar user panel -->
          <div class="user-panel">
            <div class="pull-left image">
              <img src="{{ asset('/public/dist/img/user2-160x160.jpg') }}" class="img-circle" alt="User Image">
            </div>
            <div class="pull-left info">
              <p>Farid</p>
              <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
          </div>
          
          <!-- sidebar menu: : style can be found in sidebar.less -->
          <ul class="sidebar-menu">
            <li class="header">MAIN NAVIGATION</li>
            <li class="{{ (
                        Request::is('perangkatlunak*') || 
                        Request::is('company*') || 
                        Request::is('license*') || 
                        Request::is('media*') ||
                        Request::is('jenis*')
                        )?'active':'' }} treeview">
              <a href="#">
                <i class="fa fa-dashboard"></i> <span>Master Perangkat Lunak</span> <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li {{ Request::is('perangkatlunak*')?'class=active':'' }} ><a href="{{ action('PerangkatLunakController@index')}}"><i class="fa fa-circle-o"></i>Data Perangkat Lunak</a></li>
                <li {{ Request::is('company*')?'class=active':'' }}><a href="{{ action('CompanyController@index') }}"><i class="fa fa-circle-o"></i>Master Company</a></li>
                <li {{ Request::is('license*')?'class=active':'' }}><a href="{{ action('LicenseController@index') }}"><i class="fa fa-circle-o"></i>Master Lisensi</a></li>
                <li {{ Request::is('media*')?'class=active':'' }}><a href="{{ action('MediaController@index') }}"><i class="fa fa-circle-o"></i>Master Media Penyimpanan</a></li>
                <li {{ Request::is('jenis*')?'class=active':'' }}><a href="{{ action('JenisController@index') }}"><i class="fa fa-circle-o"></i>Master Jenis</a></li>
              </ul>
            </li>
            
            <li class="{{ (
                        Request::is('data_inventori*') 
                        )?'active':'' }} treeview">
              <a href="#">
                <i class="fa fa-table"></i> <span>Master Data Inventori</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li {{ Request::is('data_inventori*')?'class=active':'' }} ><a href="{{ action('DataInventoriController@index')}}"><i class="fa fa-circle-o"></i>Data Inventori</a></li>
                <li><a href="pages/tables/data.html"><i class="fa fa-circle-o"></i> Data tables</a></li>
              </ul>
            </li>
            <li class="treeview">
              <a href="#">
                <i class="fa fa-table"></i> <span>Master Pegawai</span>
              </a>              
            </li>
            <li class="treeview">
              <a href="#">
                <i class="fa fa-table"></i> <span>Master Operator</span>
              </a>              
            </li>
           <li class="header">TRANSAKSI</li>
            <li><a href="#"><i class="fa fa-circle-o text-red"></i>Peminjaman Data Inventori</a></li>
            <li><a href="#"><i class="fa fa-circle-o text-yellow"></i>Peminjaman Perangkat Lunak</a></li>
            <li><a href="#"><i class="fa fa-circle-o text-aqua"></i>Permintaan Data</a></li>
          </ul>
        </section>
        <!-- /.sidebar -->
      </aside>