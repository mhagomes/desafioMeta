<?php
require_once __DIR__ . '/inicio-html.php';
/** @var \Upe\Mvc\Entity\tipoPublicacao[] $listaTipoPulicacao */
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
        <li><a href="tipoPublicacao">Lista Tipo Publicação</a></li>
  
      </ol>
       <div class="box"></div>
    </section> 

    
      

    <!-- Main content -->
    <section class="content">

       <!-- box-header -->
       <div class="box">
            <div align="right" class="box-header">
            <a align="rights" class="btn btn-primary" href="adicionarTipoPublicacao" ><i class="fa fa-plus"></i>Novo Tipo Publicação</a>
            <a align="rights" class="btn btn-default"href="tipoPublicacao"><i class="fa fa-refresh"></i> Atualizar</a>
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
        <h3 class="box-title">Tipo Publicação </h3>

       <div class="box-body table-responsive no-padding">
              <table id="example2" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th>Código</th>
                  <th>Tipo  Publicação</th>
                   <th>Ação</th>
                </tr>
                </thead>
                <tbody>

                 <!--inioo loop-->
                  <?php if ($listaTipoPulicacao) : ?>
                  <?php foreach ($listaTipoPulicacao as $tipoPublicacao   ): 
                                    
                            
                  ?>
                    <tr>
                        <td><?php echo $tipoPublicacao->cd_tipo_publicacao; ?></td>
                        <td><?= $tipoPublicacao->nm_tipo_publicacao; ?></td>
                        
                        <td> 
                            <a href="/removerTipoPublicacao?cd_tipo_publicacao=<?= $tipoPublicacao->cd_tipo_publicacao; ?>"  class="btn btn-sm btn-danger"><i class="fa fa-trash"></i></a >      
                                  
                        </td>
                          </tr>
                  <?php endforeach; ?>
                  <?php else : ?>
                      <tr>
                        <td colspan="5">Nenhum registro encontrado.</td>
                      </tr>
                    <?php  endif; ?>
                 <!--fim loop-->
             
                <tfoot>
                  
                <th>Código</th>
                  <th>Tipo Publicação</th>
                   <th>Ação</th>
                </tfoot>
               
                
              </table>
            </div>


            </div>
          </div>
          <!-- /.box -->
 


   
     


        </section>
        <!-- right col -->
       


      </div>
      <!-- /.row (main row) -->
   
    </section>
    <!-- /.content -->

  </div>
  <!-- /.content-wrapper -->
 
   
         
<?php  require_once __DIR__ . '/fim-html.php';?>

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
      'paging'      : true,
      'lengthChange': false,
      'searching'   : false,
      'ordering'    : true,
      'info'        : true,
      'autoWidth'   : true
    })
  })
</script>
</body>
</html>


  