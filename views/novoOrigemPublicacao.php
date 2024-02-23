<?php
require_once __DIR__ . '/inicio-html.php';
/** @var \Alura\Mvc\Entity\origemPublicacao[] $listaOrigemPulicacao */
?>
 <!-- Content Wrapper. Contains page content -->
 <div class="content-wrapper">
    <!-- Content Header (Page header) -->   
    <section class="content-header">
      <h1>
        Adicionar Origem Publicação
      </h1>
      <ol class="breadcrumb">
        <li><a href="/"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="origemPublicacao">Lista Origem Publicação</a></li>
        <li class="adicionarOrigemPublicacao">Adicionar Origem Publicação</li>
      </ol>
    </section>

    
      

    <!-- Main content -->
    <section class="content">

  
    <!-- Main content -->
    <section class="content">
      <div class="row">
        <!-- left column -->
        <div class="col-md-6">
          <!-- general form elements -->
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Origem Publicação</h3>
            </div>
            <!-- /.box-header -->
     
              <form action="adicionarOrigemPublicacao" method="POST" name="frmValidate" id="frmValidate"  >
        
              <div class="box-body">

  
                <div class="form-group">
                     <label>Nome</label>
                       <input type="text" name="origemPublicacao[nm_origem]" class="form-control" id="nm_origem"  placeholder="Digite a origem de uma publicação.." required="true">

                </div>

                
     

              </div>
              <!-- /.form group -->
                
                


              <div class="box-footer">
                <button type="submit" class="btn btn-primary">Gravar</button>
              </div>
            </form>
          </div>
          <!-- /.box -->                              

          
   </section>
    <!-- /.content -->
  </div>
 
  <!-- /.content-wrapper -->
         
<?php require_once __DIR__ . '/fim-html.php';