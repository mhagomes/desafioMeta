<?php
require_once __DIR__ . '/inicio-html.php';
/** @var \Meta\Mvc\Entity\Produto[] $produtoList */
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

<br>
<div >

 <div class="box box-primary">
        <div class="box-header">
 
           
 <div class="col-xs-6 col-sm-3 col-md-2" > 
    <a href="/cliente" class="btn btn-default"> 
      <div  > 
        <div class="col-xs-12 text-center"> 
          <i class="fa fa-archive fa-4x" id="botao1"></i> 
        </div> 
        <div class="col-xs-12 text-center"> 
          <p>Cliente </p> 
        </div> 
      </div> 
    </a> 
  </div> 
    <script type="text/javascript">
     document.botao1.style.color = "blue";
   </script>
 
  
  <div class="col-xs-6 col-sm-3 col-md-2" > 
    <a href="/produto" class="btn btn-default"> 
      <div  > 
        <div class="col-xs-12 text-center"> 
          <i class="fa fa-building fa-4x" id="botao2"></i> 
        </div> 
        <div class="col-xs-12 text-center"> 
          <p>  Produto</p> 
        </div> 
      </div> 
    </a> 
  </div> 
    <script type="text/javascript">
     document.botao2.style.color = "blue";
   </script>

       
   


<div class="col-xs-6 col-sm-3 col-md-2" > 
    <a href="/usuario" class="btn btn-default"> 
      <div  > 
        <div class="col-xs-12 text-center"> 
          <i class="fa fa-user fa-4x" id="botao5"></i> 
        </div> 
        <div class="col-xs-12 text-center"> 
          <p>Usuários</p> 
        </div> 
      </div> 
    </a> 
  </div> 
    <script type="text/javascript">
     document.botao5.style.color = "blue";
   </script>
  
      </div>

</div>
</div>
      <!-- /.row -->
<br>
<!-- Cotacao  List -->
    <div class="box box-primary">
    <div class="box-header">
         <i class="ion ion-clipboard"></i>
        <h3 class="box-title">Estoque </h3>

       <div class="box-body table-responsive no-padding">
              <table id="example2" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th>Código</th>
                  <th>Produto</th>
                  <th>Quantidade</th>
                   <th>Ação</th>
                </tr>
                </thead>
                <tbody>

                 <!--inioo loop-->
 <?php if (isset($produtoList)) : ?>
<?php foreach ($produtoList as $produto): 
                   
           
 ?>
  <tr>
       <td><?php echo $produto->getCdProduto(); ?></td>
       <td><?php echo $produto->nome;?></td>
       <td><?php echo $produto->getQuantidade();?></td>
       <td> 
          <a href="/adicionarEstoque?cdProduto=<?=  $produto->cd_produto;; ?>">+ Estoque </a>
           <a href="/diminuirEstoque?cdProduto=<?= $produto->cd_produto; ?>">- Estoque </a>     
          
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
                  <th>Produto</th>
                  <th>Quantidade</th>
                   <th>Ação</th>
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
 
   
         
<?php require_once __DIR__ . '/fim-html.php';