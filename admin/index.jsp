
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
        <link href="../admin/css/styleform.css" rel="stylesheet" />
   
    
    </head>
    <body>
        <div class="container-fluid">
            <form action="config/trataLogin.jsp" method="post">
                <div class="mb-3">
                      
                  <label for="exampleInputEmail1" class="form-email"><h3><b>E-mail</b></h3></label>
                  <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                  <div id="emailHelp" class="form-text"><h6>Não compartilhe seu e-mail, mantenha-se seguro!</h6></div>
                </div>
                <div class="mb-3">
                  <label for="exampleInputPassword1" class="form-email"><h3><b>Senha</b></h3></label>
                  <input type="password" name="senha" class="form-control" id="exampleInputPassword1">
                </div>
                <div class="mb-3 form-check">
                </div>
                <button type="submit" class="btn btn-primary" style="font-size: 30px; text-align:center; ">Entrar</button>
            </form>
        </div>
    </body>
</html>