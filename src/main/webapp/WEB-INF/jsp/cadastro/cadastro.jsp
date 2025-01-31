<%@ page language="java" contentType="text/html; charset=UTF-8"
   		 pageEncoding="UTF-8"%>   
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Jogo Loteria - Cadastro</title>

    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <link href="css/sb-admin-2.min.css" rel="stylesheet">
    <link rel="shortcut icon" href="img/favicon2.ico" type="image/x-icon">
</head>

<body class="bg-gradient-primary">

    <div class="container">

        <div class="card o-hidden border-0 shadow-lg my-5">
            <div class="card-body p-0">
                <div class="row">
                    <div class="col-lg-5 d-none d-lg-block bg-register-image"></div>
                    <div class="col-lg-7">
                        <div class="p-5">
                            <div class="text-center">
                                <h1 class="h4 text-gray-900 mb-4">Cadastre-se!</h1>
                            </div>
                            
                            <c:if test="${not empty errors }">
                            	<div class="alert alert-danger role="alert">
                            		<c:forEach var="error" items="${errors}">
   							 			 ${error.message}<br />
									</c:forEach>
								</div>	
							</c:if>
							
                            <form method="post" class="user" action="<c:url value="cadastro/salvausuario"/>">
                                <div class="form-group row">
                                    <div class="col-sm-12 mb-3 mb-sm-0">
                                        <input name="usuario.nome" value="${usuario.nome}" type="text" class="form-control form-control-user" id="exampleFirstName"
                                            placeholder="Nome">
                                    </div>
                         
                                </div>
                                <div class="form-group">
                                    <input name="usuario.email" value="${usuario.email}" class="form-control form-control-user" id="exampleInputEmail"
                                        placeholder="E-mail">
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input name="usuario.senha" value="${usuario.senha}" type="password" class="form-control form-control-user"
                                            id="exampleInputPassword" placeholder="Senha">
                                    </div>
                                    <div class="col-sm-6">
                                        <input name= "confirmaSenha" value="${confirmaSenha}" type="password" class="form-control form-control-user"
                                            id="exampleRepeatPassword" placeholder="Repetir Senha">
                                    </div>
                                </div>
                                <button type="submit" class="btn btn-primary btn-user btn-block">
                                    Cadastrar 
                                </button>
                            </form>
                            <hr>
                            <div class="text-center">
                                <a class="small" href="<c:url value="login"/>">Já tem uma conta? Faça o Login!</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <script src="js/sb-admin-2.min.js"></script>

</body>

</html>