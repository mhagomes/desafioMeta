<!DOCTYPE HTML>
<html>
<head>
<title>Gerenciamento de Estoque - Login</title>
 

<!-- Bootstrap 3.3.7 -->
<link rel="stylesheet" href="/css/bootstrap.min.css">
<script src="/js/bootstrap.min.js"></script>

<!-- JQUERY -->
<script type="text/javascript" language="javascript" src="/js/jquery.js"></script>

<link href="/css/style.css" rel="stylesheet" type="text/css" media="all"/>
<script type="text/javascript" language="javascript" src="/css/style.js"></script>
  <link rel="shortcut icon" href=" /img/favicon.ico" type="image/x-icon" />

</head>
<body>

<!--div class="container">
<form class="container__formulario" method="post">
            <h2 class="formulario__titulo">Efetue login</h2>
                <div class="formulario__campo">
                    <label class="campo__etiqueta" for="usuario">E-mail</label>
                    <input name="email" type="email" class="campo__escrita" required
                        placeholder="Digite seu usuário" id='usuario' />
                </div>

                <div class="formulario__campo">
                    <label class="campo__etiqueta" for="senha">Senha</label>
                    <input type="password" name="password" class="campo__escrita" required placeholder="Digite sua senha"
                        id='senha' />
                </div>

                <input class="formulario__botao" type="submit" value="Entrar" />
        </form>

    
</div-->

 
<div class="container">
        <div class="card card-container">
            <img id="profile-img" class="profile-img-card" src="/img/logo.png" />
            <p id="profile-name" class="profile-name-card"></p>
            <form class="container__formulario" method="post">
                <input type="email" id="usuario" name="email" class="form-control" placeholder="email" required autofocus>
                <br>
                <input type="password" id="password" name="password" class="form-control" placeholder="Digite sua Senha" required>
                <br>
                <button class="btn btn-lg btn-primary btn-block btn-signin" type="submit"  name="Botao">Entrar</button>
            </form>
            
        </div>
</div>

</body>
</html>
 
    
       