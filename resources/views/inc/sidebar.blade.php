 <aside id="sidebar" class="sidebar">

     <ul class="sidebar-nav" id="sidebar-nav">

         <li class="nav-item">
             <a class="nav-link collapsed" href="{{ url('dashboard') }}">
                 <i class="bi bi-grid"></i>
                 <span>Dashboard</span>
             </a>
         </li><!-- End Dashboard Nav -->

         <li class="nav-item">
             <a class="nav-link collapsed" data-bs-target="#components-nav" data-bs-toggle="collapse" href="#">
                 <i class="bi bi-menu-button-wide"></i><span>Master Data</span><i
                     class="bi bi-chevron-down ms-auto"></i>
             </a>
             <ul id="components-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                 <li>
                     <a href="{{ url('service') }}">
                         <i class="bi bi-circle"></i><span>Services</span>
                     </a>
                 </li>
                 <li>
                     <a href="{{ route('customer.index') }}">
                         <i class="bi bi-circle"></i><span>Pelanggan</span>
                     </a>
                 </li>
                 <li>
                     <a href="{{ route('level.index') }}">
                         <i class="bi bi-circle"></i><span>Level</span>
                     </a>
                 </li>
                 <li>
                     <a href="{{ route('user.index') }}">
                         <i class="bi bi-circle"></i><span>User</span>
                     </a>
                 </li>

             </ul>
         </li><!-- End Components Nav -->

         <li class="nav-item">
             <a class="nav-link collapsed" data-bs-target="#forms-nav" data-bs-toggle="collapse" href="#">
                 <i class="bi bi-journal-text"></i><span>Transaksi</span><i class="bi bi-chevron-down ms-auto"></i>
             </a>
             <ul id="forms-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                 <li>
                     <a href="{{ route('trans.index') }}">
                         <i class="bi bi-circle"></i><span>Trans Order</span>
                     </a>
                 </li>
             </ul>
         </li><!-- End Forms Nav -->
     </ul>

 </aside><!-- End Sidebar-->
