<?php
use Meta\Mvc\Utils\Utils;
require_once __DIR__ . '/inicio-html.php';

/** @var \Upe\Mvc\Entity\produto[] $listaProduto */
?>
 <!-- Content Wrapper. Contains page content -->
 <div class="content-wrapper">
    <!-- Content Header (Page header) -->   
    <section class="content-header">
   
      <h1>
      Home
      </h1>
      <ol class="breadcrumb">
        <li><a href="/"><i class="fa fa-dashboard"></i> Home</a></li>
     </ol>
       <div class="box"></div>
    </section> 

    
      

    <!-- Main content -->
    <section class="content">

       <!-- box-header -->
       <div class="box">
            <div align="right" class="box-header">
            <a align="rights" class="btn btn-primary" href="adicionarProduto" ><i class="fa fa-plus"></i>Nova Produto</a>
            <a align="rights" class="btn btn-default"href="produto"><i class="fa fa-refresh"></i> Atualizar</a>
        </div>
 

          <!--inicio box mensagem  -->
     

          <?php if (!empty($_SESSION['message'])) : ?>
             <div class="alert alert-<?php echo $_SESSION['type']; ?> alert-dismissible" role="alert">
              <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
               <?php echo $_SESSION['message']; ?>
              </div>
              <?
                 //  php clear_messages(); 
                  unset($_SESSION['message']);
                                  ?>
         <?php endif; ?>

         <!--fim box mensagem-->
<!-- Cotacao  List -->
    <div class="box box-primary">
    <div class="box-header">
         <i class="ion ion-clipboard"></i>
        <h3 class="box-title">Produto </h3>

       <div class="box-body table-responsive no-padding">
              <table id="example2" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th>Código</th>
                  <th>Nome</th>
                  <th>Quantidade</th>
                  <th>Cadastro</th>
                   <th>Ação</th>
                </tr>
                </thead>
                <tbody>

                 <!--inioo loop-->
 <?php if ($listaProduto) : ?>
<?php foreach ($listaProduto as $produto): 
                   
           
 ?>
  <tr>
       <td><?php echo $produto->cdProduto; ?></td>
       <td><?php echo $produto->nome; ?></td>
       <td><?php echo $produto->quantidade; ?></td>
       <td>   <?php echo Utils::formatarData($produto->dtCadastro); ?></td>
        <td> 
            <a href="/removerProduto?cdProduto=<?=$produto->cdProduto; ?>"  class="btn btn-sm btn-danger"><i class="fa fa-trash"></i></a>      
       </td>
    </tr>
<?php endforeach; ?>
 <?php else : ?>
     <tr>
      <td colspan="5">Nenhum registro encontrado.</td>
     </tr>
   <?php  endif; ?>

             
                <tfoot>
                  
                <th>Código</th>
                  <th>Nome</th>
                  <th>Quantidade</th>
                  <th>Cadastro</th>
                   <th>Ação</th>>
                </tfoot>
               
                
              </table>
            </div>


            </div>
          </div>
          <!-- /.box -->
<!-- end cotacao -->

        </section>
        <!-- right col -->
       


      </div>
      <!-- /.row (main row) -->
   
    </section>
    <!-- /.content -->

  </div>
  <!-- /.content-wrapper -->
 
   
         
<?php require_once __DIR__ . '/fim-html.php';?>

<!-- page script -->
<script>
  $(function () {
    $('#example1').DataTable()
    $('#example2').DataTable({
       "language": {
           "decimal": ",",
           "thousands": ".",
           "sEmptyTable": "Nenhum registro encontrado",
           "sInfo": "Mostrando de _START_ até _END_ de _TOTAL_ registros",
           "sInfoEmpty": "Mostrando 0 até 0 de 0 registros",
           "sInfoFiltered": "(Filtrados de _MAX_ registros)",
           "sInfoPostFix": "",
           "sInfoThousands": ".",
           "sLengthMenu": "_MENU_ resultados por página",
           "sLoadingRecords": "Carregando...",
           "sProcessing": "Processando...",
           "sZeroRecords": "Nenhum registro encontrado",
           "sSearch": "Pesquisar",
           "oPaginate": {
          "sNext": "Próximo",
           "sPrevious": "Anterior",
           "sFirst": "Primeiro",
          "sLast": "Último"
             }
        },
      'paging'      : false,
      'lengthChange': true,
      'searching'   : false,
      'ordering'    : true,
      'info'        : true,
      'autoWidth'   : false
    })
  })
</script>
</body>
</html>