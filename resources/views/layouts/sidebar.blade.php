<aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
          <!-- Sidebar user panel -->
          <div class="user-panel">
            <div class="pull-left image">
              <img src="{{ asset('/public/dist/img/user2-160x160.jpg') }}" class="img-circle" alt="User Image">
            </div>
            <div class="pull-left info">
              <p>{{ Auth::user()->username }}</p>
              <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
          </div>
          
          <!-- sidebar menu: : style can be found in sidebar.less -->
          <ul class="sidebar-menu">
            <li class="header">MAIN NAVIGATION</li>
            @if(Auth::user()->role_id != '3')
            <li class="{{ (
                        Request::is('perangkatlunak*') || 
                        Request::is('company*') || 
                        Request::is('license*') || 
                        Request::is('media*') ||
                        Request::is('jenis*')
                        )?'active':'' }} treeview">
              <a href="#">
                <i class="fa fa-table"></i> <span>Master Perangkat Lunak</span> <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li {{ Request::is('perangkatlunak*')?'class=active':'' }} ><a href="{{ action('PerangkatLunakController@index')}}"><i class="fa fa-circle-o"></i>Data Perangkat Lunak</a></li>
                @if(Auth::user()->role_id=='1' || Auth::user()->role_id=='4')
                <li {{ Request::is('company*')?'class=active':'' }}><a href="{{ action('CompanyController@index') }}"><i class="fa fa-circle-o"></i>Master Company</a></li>
                <li {{ Request::is('license*')?'class=active':'' }}><a href="{{ action('LicenseController@index') }}"><i class="fa fa-circle-o"></i>Master Lisensi</a></li>
                <li {{ Request::is('media*')?'class=active':'' }}><a href="{{ action('MediaController@index') }}"><i class="fa fa-circle-o"></i>Master Media Penyimpanan</a></li>
                <li {{ Request::is('jenis*')?'class=active':'' }}><a href="{{ action('JenisController@index') }}"><i class="fa fa-circle-o"></i>Master Jenis</a></li>
                @endif
              </ul>
            </li>
            @endif
            
            <li class="{{ (
                        Request::is('data_inventori*') ||
                        Request::is('subjek*')
                        )?'active':'' }} treeview">
              <a href="#">
                <i class="fa fa-table"></i> <span>Master Data Inventori</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li {{ Request::is('data_inventori*')?'class=active':'' }} ><a href="{{ action('DataInventoriController@index')}}"><i class="fa fa-circle-o"></i>Data Inventori</a></li>
                <li {{ Request::is('subjek*')?'class=active':'' }} ><a href="{{ action('SubjekController@index')}}"><i class="fa fa-circle-o"></i>Subjek Data Inventori</a></li>
              </ul>
            </li>
            @if(Auth::user()->role_id=='1')
            <li class="treeview{{ Request::is('user*')?' active':'' }}">
              <a href="{{ URL::to('user/index') }}">
                <i class="fa fa-table"></i> <span>Master Pengguna</span>
              </a>              
            </li>
            @endif
            @if(Auth::user()->role_id=='1' || Auth::user()->role_id=='4')
           
            
            <li class="treeview{{ Request::is('peminjaman_perangkatlunak*')?' active':'' }}">
                <a href="{{ URL::to('peminjaman_perangkatlunak/index') }}">
                    <i class="fa fa-table text-yellow"></i><span>Peminjaman Software</span></a>
            </li>
            <li class="treeview{{ Request::is('permohonan_data*')?' active':'' }}">
                <a href="{{ URL::to('permohonan_data/index') }}">
                    <i class="fa fa-table text-aqua"></i><span>Permintaan Data</span></a>
            </li>
            @endif
          </ul>
        </section>
        <!-- /.sidebar -->
      </aside>