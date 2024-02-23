<?php
require_once __DIR__ . '/inicio-html.php';

?>
 <!-- Content Wrapper. Contains page content -->
 <div class="content-wrapper">
    <!-- Content Header (Page header) -->   
    <section class="content-header">
      <h1>
        Editar Cliente
      </h1>
      <ol class="breadcrumb">
        <li><a href="/"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="cliente">Lista Cliente</a></li>
        <li class="cliente">Editar Cliente</li>
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
              <h3 class="box-title"> Cliente</h3>
            </div>
            <!-- /.box-header -->
     
              <form action="/atualizarCliente" method="POST" name="frmValidate" id="frmValidate"   >
              <input type="hidden" name="cliente[cdCliente]"  value="<?php echo $clienteEdita->CdCliente;?>" />

              
              <div class="box-body">
    
   
  
              <div class="box-body">
              
    
                 <div class="form-group">
                     <label>CNPJ/CPF</label>
                       <input type="text" name="cliente[cpfcnpj]" class="form-control" id="cpfcnpj" name="cliente['cnpj_cpf']"  value="<?=$clienteEdita->cpfcnpj?>" placeholder="Digite Numero CNPJ/CPF..." required="true">

                </div>

             <div class="form-group">
                     <label>Nome Fantasia</label>
                     <input type="text" name="cliente[nomeFantasia]" class="form-control" placeholder="Digite o nome fantasia do cliente" required="true"   value="<?=$clienteEdita->nomeFantasia?>">
                </div>

              <div class="form-group">
                     <label>Razão Social</label>
   
                     <input type="text" name="cliente[razaoSocial]" class="form-control" placeholder="Digite Razão Social do cliente" required="true"   value="<?=$clienteEdita->razaoSocial?>">
                </div>
 
    
 
 
   
 

                <div class="form-group">
                     <label>Contato Comercial</label>
                     <!--<input type="text" name="cliente[nm_comercial]" class="form-control" placeholder="Digite o nome do contato da àrea comercial" >-->
                      <textarea class="form-control rounded-0" name="cliente[contatoComercial]" rows="3"> <?=$clienteEdita->contatoComercial?></textarea>
                </div>

                 <div>
                   <label>Email</label>
                    
                    
                     <input type="email" name="cliente[emailComercial]"    class="form-control" placeholder="Digite o email do contato" autocomplete="off"   value="<?=$clienteEdita->emailComercial?>">
                </div>

                    <!-- phone mask -->
              <div class="form-group">
                <label>Telefone</label>

                <div class="input-group">
                  <div class="input-group-addon">
                    <i class="fa fa-phone"></i>
                  </div>
                  <input type="text" name="cliente[telefoneComercial]"  class="form-control" data-inputmask='"mask": "(99) 9999-9999"' data-mask placeholder="Digite o celular do contato  "  value="<?=$clienteEdita->telefoneComercial?>">
                </div>
                <!-- /.input group -->
              </div>
              <!-- /.form group -->

               

                <!-- phone mask -->
              <div class="form-group">
                <label>Celular</label>

                <div class="input-group">
                  <div class="input-group-addon">
                    <i class="fa fa-phone"></i>
                  </div>
                  <input type="text" name="cliente[celularComercial]"  class="form-control" data-inputmask='"mask": "(99) 99999-9999"' data-mask placeholder="Digite o celular do contato..." value="<?=$clienteEdita->celularComercial?>">
                </div>
                <!-- /.input group -->
              </div>
              <!-- /.form group -->

 
                
               
 

              <div class="form-group">
                     <label>Observação</label>
                      <textarea class="form-control rounded-0" name="cliente[observacao]" rows="3"><?php echo $clienteEdita->observacao; ?></textarea>
                     <!--input type="text"  class="form-control" placeholder="Digite alguma observação" -->
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
         
<?php require_once __DIR__ . '/fim-html.php';?>

 <!--  Page script -->

<script>



  $(function () {

 

   
     $("input[id*='cpfcnpj']").inputmask({
       mask: ['999.999.999-99', '99.999.999/9999-99'],
       keepStatic: true
     });
     
    //Initialize Select2 Elements
    $('.select2').select2()

    //Datemask dd/mm/yyyy
    $('#datemask').inputmask('dd/mm/yyyy', { 'placeholder': 'dd/mm/yyyy' })
    //Datemask2 mm/dd/yyyy
    $('#datemask2').inputmask('mm/dd/yyyy', { 'placeholder': 'mm/dd/yyyy' })
    //Money Euro
    $('[data-mask]').inputmask()

    //Date range picker
    $('#reservation').daterangepicker()
    //Date range picker with time picker
    $('#reservationtime').daterangepicker({ timePicker: true, timePickerIncrement: 30, locale: { format: 'MM/DD/YYYY hh:mm A' }})
    //Date range as a button
    $('#daterange-btn').daterangepicker(
      {
        ranges   : {
          'Today'       : [moment(), moment()],
          'Yesterday'   : [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
          'Last 7 Days' : [moment().subtract(6, 'days'), moment()],
          'Last 30 Days': [moment().subtract(29, 'days'), moment()],
          'This Month'  : [moment().startOf('month'), moment().endOf('month')],
          'Last Month'  : [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
        },
        startDate: moment().subtract(29, 'days'),
        endDate  : moment()
      },
      function (start, end) {
        $('#daterange-btn span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'))
      }
    )

    //Date picker
    $('#datepicker').datepicker({
      autoclose: true
    })

    //iCheck for checkbox and radio inputs
    $('input[type="checkbox"].minimal, input[type="radio"].minimal').iCheck({
      checkboxClass: 'icheckbox_minimal-blue',
      radioClass   : 'iradio_minimal-blue'
    })
    //Red color scheme for iCheck
    $('input[type="checkbox"].minimal-red, input[type="radio"].minimal-red').iCheck({
      checkboxClass: 'icheckbox_minimal-red',
      radioClass   : 'iradio_minimal-red'
    })
    //Flat red color scheme for iCheck
    $('input[type="checkbox"].flat-red, input[type="radio"].flat-red').iCheck({
      checkboxClass: 'icheckbox_flat-green',
      radioClass   : 'iradio_flat-green'
    })

    //Colorpicker
    $('.my-colorpicker1').colorpicker()
    //color picker with addon
    $('.my-colorpicker2').colorpicker()

    //Timepicker
    $('.timepicker').timepicker({
      showInputs: false
    })
  })
</script>
</body>
</html>
