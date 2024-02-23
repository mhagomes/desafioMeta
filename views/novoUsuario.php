<?php
require_once __DIR__ . '/inicio-html.php';

?>
 <!-- Content Wrapper. Contains page content -->
 <div class="content-wrapper">
    <!-- Content Header (Page header) -->   
    <section class="content-header">
      <h1>
        Adicionar Usuário
      </h1>
      <ol class="breadcrumb">
        <li><a href="/"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="usuario">Lista Usuário</a></li>
        <li class="adicionarUsuario">Adicionar Usuário</li>
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
              <h3 class="box-title"> Usuário</h3>
            </div>
            <!-- /.box-header -->
     
              <form action="adicionarUsuario" method="POST" name="frmValidate" id="frmValidate"    onsubmit="return validarFormulario()" >
        
              <div class="box-body">
              <div class="form-group">
                     <label>CPF</label>
                     <input type="text" name="usuario[cpf]"  class="form-control" id="cpfcnpj"  placeholder="Digite seu CPF..." required="true">

                </div>
  
                <div class="form-group">
                     <label>Nome</label>
                       <input type="text" name="usuario[nome]" class="form-control" id="nome"  placeholder="Digite o nome da publicação.." required="true">

                </div>

                <div class="form-group">
                     <label>Email</label>
                       <input type="mail" name="usuario[email]" class="form-control" id="email"  placeholder="Digite o assunto da publicação.." required="true">

                </div>
                 <div class="form-group">
                             <label>Origem </label><BR>
                             <?php
                                    // var_dump($listaOrigemPulicacao);
                                     //exit;

                                    ?>
                               <select class="selectpicker" name="usuario[cd_origem]"  id='cd_origem' >
                                   <?php if ($listaOrigemPublicacao)  { ?>
                                  <?php foreach ($listaOrigemPublicacao as $origem) : ?>
                                    

                                   <option value="<?php echo $origem->getCdOrigem(); ?>">
                                     <?php   echo    $origem->getNmOrigem() ; ?></option>
                                  <?php endforeach;
                                  }; ?>
                                </select> 
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
 

         
<?php require_once __DIR__ . '/fim-html.php'?> 
<!-- Page script -->
<script>



  $(function () {


     //mascara do cpf
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
