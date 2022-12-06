<%@ page import="java.sql.*" %>
<%@ page import="org.postgresql.Driver" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Sua Camisa Oficial</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="./admin/css/styles.css" rel="stylesheet" />       
    </head>
    <body>
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container px-4 px-lg-5">
                <i class="fa-thin fa-briefcase"></i>
                <a class="navbar-brand" href="#!">ThStore</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">          
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><b>Camisas</b></a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="#!">Clubes Brasileiros</a></li>
                                <li><hr class="dropdown-divider" /></li>
                                <li><a class="dropdown-item" href="#!">Clubes Europeus</a></li>
                                
                            </ul>
                        </li>
                    </ul>
                    <form class="d-flex">
                        
                        <button class="btn btn-outline-light" type="submit">
                            <i class="bi-cart-fill me-1"></i>
                            Carinho
                            <span class="badge bg-dark text-white ms-1 rounded-pill">3</span>
                        </button>
                    </form>
                </div>
            </div>
        </nav>
        <!-- Header-->
        <header class="bg-dark py-5" style="background-image: url(arquivos/img-black.jpg); background-repeat:no-repeat; background-size: 100%; ">
            <div class="container px-4 px-lg-5 my-5">
                <div class="text-center text-white">
                    <h1 class="display-4 fw-bolder">A loja das camisas Oficiais</h1>
                    <p class="lead fw-normal text-white-50 mb-0">A camisa do seu time do coração, você encontra aqui. </p>
                </div>
            </div>
        </header>
        <!-- Section-->
        <section class="py-5">
            <div class="container px-4 px-lg-5 mt-5">
                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                    <%
                    Connection con = null;
                    Statement st = null;
                    ResultSet rs = null;
                    String url = "jdbc:postgresql://localhost:5432/postgres";
                    String usuario = "postgres";
                    String senhaBD = "admin";
                    try{
                        Class.forName("org.postgresql.Driver");
                        con = DriverManager.getConnection(url,usuario,senhaBD);
                        st = con.createStatement();
                        rs = st.executeQuery("SELECT *FROM produtos ORDER BY id DESC");
                        while(rs.next()){
                            String id = rs.getString("id");
                        %>    
                        
                        <br>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="arquivos/<%=rs.getString("imagem") %>" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder"><%=rs.getString("nome") %></h5>
                                    <!-- Product price-->
                                   <%=rs.getString("valor") %>
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-primary mt-auto" href="https://www.netshoes.com.br/ " >Adquirir</a></div>
                            </div>
                        </div>
                    </div>
                    
                     <%    }
                }catch(Exception e){
                    out.print(e);
                }
                
                %>
                </div>
            </div>
        </section>

      
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
        
        <footer>
        
            <h6 class="footerh6">ⓒ ThStore | Todos os direitos reservados.</h6>      
       
        </footer>
        
        
        
    </body>
</html>
