<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Sistema de Gereciamento de Documentos</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="/css/_all-skins.min.css">
  <!-- Morris chart -->
  <link rel="stylesheet" href="/css/morris.css">
  <!-- jvectormap -->
  <link rel="stylesheet" href="/css/jquery-jvectormap.css">
  <!-- Date Picker -->
  <link rel="stylesheet" href="/css/bootstrap-datepicker.min.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="/css/daterangepicker.css">
  <!-- bootstrap wysihtml5 - text editor -->
  <link rel="stylesheet" href="/css/bootstrap3-wysihtml5.min.css">
    <!-- Bootstrap time Picker -->
  <link rel="stylesheet" href="/css/bootstrap-timepicker.min.css">
 <!-- fullCalendar -->
  <link rel="stylesheet" href="/css/fullcalendar.min.css">
  <link rel="stylesheet" href="/css/fullcalendar.print.min.css" media="print">


  

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

  <!-- Google Font -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">

   <link rel="shortcut icon" href="/img/favicon.ico" type="image/x-icon" />
</head>
  </body class="hold-transition skin-blue sidebar-mini">
<?php
//setlocale( LC_ALL, 'pt_BR', 'pt_BR.iso-8859-1', 'pt_BR.utf-8', 'portuguese' );
//date_default_timezone_set('Europe/Lisbon');
?>    
<div class="wrapper">

  <header class="main-header">
    <!-- Logo -->
    <a href="#" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>UPE</b></span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b> Universidade de Pernambuco </b></span>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>

      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
         
          <!-- User Account: style can be found in dropdown.less -->
          <li class="dropdown user user-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
           
                 <img src="/img/icon-user-default.png" class="user-image" alt="User Image">
               
            
              <span class="hidden-xs"><?php echo $_SESSION['nome'];?></span>
            </a>
            <ul class="dropdown-menu">
              <!-- User image -->
              <li class="user-header">
                  <img src="/img/icon-user-default.png" class="img-circle" alt="User Image">
                  <p>
                  <?php echo   $_SESSION['nome'];;?>
                   
                </p>
              </li>
              
              </li>
              <!-- Menu Footer-->
              <li class="user-footer">
                 <div class="pull-left">
                  <a href="/logout" class="btn btn-default btn-flat">Sair</a>
                </div>
                <!--div class="pull-left">
                   <a href="#" class="btn btn-default btn-flat">Atualizar</a>
                </div-->
               
              </li>
            </ul>
          </li>
          <!-- Control Sidebar Toggle Button -->
         <!-- <li>
            <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
          </li>-->
        </ul>
      </div>
    </nav>
  </header>
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel 
      <div class="user-panel">-->
        <!--<div class="pull-left image">
         <p> </p>
        </div> 
        <div class="pull-left info">                 
          <a href="../logout.php"><i class="fa fa-circle text-success"></i>Sair</a>
        </div>
      </div>-->
      <!-- search form 
      <form action="#" method="get" class="sidebar-form">
        <div class="input-group">
          <input type="text" name="q" class="form-control" placeholder="Condiminio">
          <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
              </span>
        </div>
      </form>-->
      <!-- /.search form -->
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <br>
      <ul class="sidebar-menu" data-widget="tree">
        <li class="header">MENU</li>
       
         
     
       <!--menu perfil administrador -->
       
        <!--<li class="active"><a href="../dashboard/index.php"><i class="fa fa-bar-chart-o"></i> Dashboard</a></li>-->
 
        <li class="treeview active">
           <a href="#">
            <i class="fa fa-money"></i> <span>Administrativo</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
           <ul class="treeview-menu">
                
                <li><a href="../colaborador/index.php"><i class="fa fa-circle-o"></i>Publicação</a></li>
                <li><a href="../usuario/index.php"><i class="fa fa-circle-o"></i>Usuários</a></li>
                <li><a href="../importacao/index.php"><i class="fa fa-circle-o"></i>Orgão</a></li>
               <!-- #endregion -->
                </ul>
           
        </li>

       
         <? if ( $_SESSION['tipo'] == 'A') { ?>  


       

            <!--

             <li class="treeview">
              <a href="#"><i class="fa fa-circle-o"></i> Operações
                <span class="pull-right-container">
                  <i class="fa fa-angle-left pull-right"></i>
                </span>
              </a>
              <ul class="treeview-menu">
                <li><a href="../aguaepoco/index.php"><i class="fa fa-circle-o"></i> Medição Àgua e Poço</a></li>
                 <li><a href="../aguaconcessionaria/index.php"><i class="fa fa-circle-o"></i> Medição Àgua Compesa</a></li>
                <li><a href="../manutencao/index.php"><i class="fa fa-circle-o"></i> Manutenção</a></li>
                <li><a href="../documentos/index.php"><i class="fa fa-circle-o"></i> Documentos</a></li>
                 <li><a href="../ocorrencia/index.php"><i class="fa fa-circle-o"></i> Ocorrências</a></li>
                 <li><a href="../reserva/pagar.php"><i class="fa fa-circle-o"></i> Reserva</a></li>
                <!--<li class="treeview">
                  <a href="#"><i class="fa fa-circle-o"></i> 
                    <span class="pull-right-container">
                      <i class="fa fa-angle-left pull-right"></i>
                    </span>
                  </a>
                  <ul class="treeview-menu">
                    <li><a href="#"><i class="fa fa-circle-o"></i> Level Three</a></li>
                    <li><a href="#"><i class="fa fa-circle-o"></i> Level Three</a></li>
                  </ul>
                </li>-->
             <!-- </ul>
            </li>
            


              <li class="treeview">
              <a href="#"><i class="fa fa-circle-o"></i> Relatórios
                <span class="pull-right-container">
                  <i class="fa fa-angle-left pull-right"></i>
                </span>
              </a>
              <ul class="treeview-menu">
                <li><a href="../relatorios/usuario.php"><i class="fa fa-circle-o"></i> Usuários</a></li>
                <li><a href="../relatorios/manutencoes.php"><i class="fa fa-circle-o"></i> Manutenções</a></li>
                <li><a href="../relatorios/fornecedor.php"><i class="fa fa-circle-o"></i> Fornecedor</a></li>
                <li><a href="../relatorios/outorgaselicenca.php"><i class="fa fa-circle-o"></i> Outorgas e Licença</a></li>
                 <li><a href="../relatorios/controledeaguas.php"><i class="fa fa-circle-o"></i>Controle de Águas</a></li>
                 <li><a href="../relatorios/reservas.php"><i class="fa fa-circle-o"></i> Reservas</a></li>
                <!--<li class="treeview">
                  <a href="#"><i class="fa fa-circle-o"></i> 
                    <span class="pull-right-container">
                      <i class="fa fa-angle-left pull-right"></i>
                    </span>
                  </a>
                  <ul class="treeview-menu">
                    <li><a href="#"><i class="fa fa-circle-o"></i> Level Three</a></li>
                    <li><a href="#"><i class="fa fa-circle-o"></i> Level Three</a></li>
                  </ul>
                </li> --> 
            <!-- </ul>
            </li> -->
             
          </ul>
        </li>
        
        <?}?> 
        <!-- administrador ver a mais a parte do financeiro -->

        

            <!--

             <li class="treeview">
              <a href="#"><i class="fa fa-circle-o"></i> Operações
                <span class="pull-right-container">
                  <i class="fa fa-angle-left pull-right"></i>
                </span>
              </a>
              <ul class="treeview-menu">
                <li><a href="../aguaepoco/index.php"><i class="fa fa-circle-o"></i> Medição Àgua e Poço</a></li>
                 <li><a href="../aguaconcessionaria/index.php"><i class="fa fa-circle-o"></i> Medição Àgua Compesa</a></li>
                <li><a href="../manutencao/index.php"><i class="fa fa-circle-o"></i> Manutenção</a></li>
                <li><a href="../documentos/index.php"><i class="fa fa-circle-o"></i> Documentos</a></li>
                 <li><a href="../ocorrencia/index.php"><i class="fa fa-circle-o"></i> Ocorrências</a></li>
                 <li><a href="../reserva/pagar.php"><i class="fa fa-circle-o"></i> Reserva</a></li>
                <!--<li class="treeview">
                  <a href="#"><i class="fa fa-circle-o"></i> 
                    <span class="pull-right-container">
                      <i class="fa fa-angle-left pull-right"></i>
                    </span>
                  </a>
                  <ul class="treeview-menu">
                    <li><a href="#"><i class="fa fa-circle-o"></i> Level Three</a></li>
                    <li><a href="#"><i class="fa fa-circle-o"></i> Level Three</a></li>
                  </ul>
                </li>-->
             <!-- </ul>
            </li>
            


              <li class="treeview">
              <a href="#"><i class="fa fa-circle-o"></i> Relatórios
                <span class="pull-right-container">
                  <i class="fa fa-angle-left pull-right"></i>
                </span>
              </a>
              <ul class="treeview-menu">
                <li><a href="../relatorios/usuario.php"><i class="fa fa-circle-o"></i> Usuários</a></li>
                <li><a href="../relatorios/manutencoes.php"><i class="fa fa-circle-o"></i> Manutenções</a></li>
                <li><a href="../relatorios/fornecedor.php"><i class="fa fa-circle-o"></i> Fornecedor</a></li>
                <li><a href="../relatorios/outorgaselicenca.php"><i class="fa fa-circle-o"></i> Outorgas e Licença</a></li>
                 <li><a href="../relatorios/controledeaguas.php"><i class="fa fa-circle-o"></i>Controle de Águas</a></li>
                 <li><a href="../relatorios/reservas.php"><i class="fa fa-circle-o"></i> Reservas</a></li>
                <!--<li class="treeview">
                  <a href="#"><i class="fa fa-circle-o"></i> 
                    <span class="pull-right-container">
                      <i class="fa fa-angle-left pull-right"></i>
                    </span>
                  </a>
                  <ul class="treeview-menu">
                    <li><a href="#"><i class="fa fa-circle-o"></i> Level Three</a></li>
                    <li><a href="#"><i class="fa fa-circle-o"></i> Level Three</a></li>
                  </ul>
                </li> --> 
            <!-- </ul>
            </li> -->
             
          </ul>
        </li>
        <!--fim menu administrador -->

       

         <? if ( $_SESSION['tipo'] == 'S') { ?>  

        <!--inicio menu supervisor -->
        <!-- <li class="treeview">
          <a href="#">
            <i class="fa fa-users"></i> <span>Supervisor</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li class="treeview">
              <a href="#"><i class="fa fa-circle-o"></i> Cadastro
                <span class="pull-right-container">
                  <i class="fa fa-angle-left pull-right"></i>
                </span>
              </a>
              <ul class="treeview-menu">
                  <li><a href="../usuario/index.php"><i class="fa fa-circle-o"></i>Usuários</a></li>
                <li><a href="../area/index.php"><i class="fa fa-circle-o"></i>Àreas</a></li>
                <li><a href="../fornecedor/index.php"><i class="fa fa-circle-o"></i> Fornecedor</a></li>
                 <li><a href="../itens/index.php"><i class="fa fa-circle-o"></i> Item Manutenção</a></li>
                 <li><a href="../inadimplentes/index.php"><i class="fa fa-circle-o"></i> Inadimplentes</a></li>
                 <li><a href="../aguaepoco/index.php"><i class="fa fa-circle-o"></i> Medição Àgua e Poço</a></li>
                 <li><a href="../manutencao/index.php"><i class="fa fa-circle-o"></i> Manutenção</a></li>

               
                <li class="treeview">
                  <a href="#"><i class="fa fa-circle-o"></i> 
                    <span class="pull-right-container">
                      <i class="fa fa-angle-left pull-right"></i>
                    </span>
                  </a>
                  <ul class="treeview-menu">
                    <li><a href="#"><i class="fa fa-circle-o"></i> Level Three</a></li>
                    <li><a href="#"><i class="fa fa-circle-o"></i> Level Three</a></li>
                  </ul>
                </li>
              </ul>
            </li>



              <li class="treeview">
              <a href="#"><i class="fa fa-circle-o"></i> Operações
                <span class="pull-right-container">
                  <i class="fa fa-angle-left pull-right"></i>
                </span>
              </a>
              <ul class="treeview-menu">
                 <li><a href="../aguaepoco/index.php"><i class="fa fa-circle-o"></i> Medição Àgua e Poço</a></li>
                 <li><a href="../manutencao/index.php"><i class="fa fa-circle-o"></i> Manutenção</a></li>
                  <li><a href="../ocorrencia/index.php"><i class="fa fa-circle-o"></i> Ocorrências</a></li>
                 <li><a href="../reserva/pagar.php"><i class="fa fa-circle-o"></i> Reserva</a></li>
                <li class="treeview">
                  <a href="#"><i class="fa fa-circle-o"></i> 
                    <span class="pull-right-container">
                      <i class="fa fa-angle-left pull-right"></i>
                    </span>
                  </a>
                  <ul class="treeview-menu">
                    <li><a href="#"><i class="fa fa-circle-o"></i> Level Three</a></li>
                    <li><a href="#"><i class="fa fa-circle-o"></i> Level Three</a></li>
                  </ul>
                </li>  
              </ul>
            </li>
             <li class="treeview">
              <a href="#"><i class="fa fa-circle-o"></i> Relatórios
                <span class="pull-right-container">
                  <i class="fa fa-angle-left pull-right"></i>
                </span>
              </a>
              <ul class="treeview-menu">
                <li><a href="#"><i class="fa fa-circle-o"></i> Reservas</a></li>
                <li><a href="#"><i class="fa fa-circle-o"></i> Inadiplentes</a></li>
                <li><a href="#"><i class="fa fa-circle-o"></i> Moradores</a></li>
                <li class="treeview">
                  <a href="#"><i class="fa fa-circle-o"></i> 
                    <span class="pull-right-container">
                      <i class="fa fa-angle-left pull-right"></i>
                    </span>
                  </a>
                  <ul class="treeview-menu">
                    <li><a href="#"><i class="fa fa-circle-o"></i> Level Three</a></li>
                    <li><a href="#"><i class="fa fa-circle-o"></i> Level Three</a></li>
                  </ul>
                </li>
              </ul>
            </li>
             
          </ul>
        </li>-->
           <!--fim menu supervisor -->


           <?}?>

              <? if ( $_SESSION['tipo'] == 'U') { ?>  

    

           
           
           
             
          </ul>
        </li>
    
      </ul>
   <!-- fim de menu usuario-->
    <? } ?>
    </section>
    <!-- /.sidebar -->
  </aside>