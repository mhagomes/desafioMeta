<?php
require_once __DIR__ . '/inicio-html.php';
/** @var \Alura\Mvc\Entity\Produto[] $listaProduto */
?>
 <!-- Content Wrapper. Contains page content -->
 <div class="content-wrapper">
    <!-- Content Header (Page header) -->   
    <section class="content-header">
      <h1>
        Adicionar Produto
      </h1>
      <ol class="breadcrumb">
        <li><a href="/"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="produto">Lista Produto</a></li>
        <li class="adicionarProduto">Adicionar Produto</li>
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
              <h3 class="box-title">Produto</h3>
            </div>
            <!-- /.box-header -->
     
              <form action="adicionarProduto" method="POST" name="frmValidate" id="frmValidate"  >
        
              <div class="box-body">

  
                <div class="form-group">
                     <label>Nome</label>
                       <input type="text" name="Produto[nome]" class="form-control" id="nm_produto"  placeholder="Digite o nome do produto" required="true">

                </div>

                <div class="form-group">
                     <label>Quantidade</label>
                       <input type="number" name="Produto[quantidade]" class="form-control" id="qunatidade"  placeholder="Digite a quantidade do produto" required="true">

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