# Aplicação Java Web de cadastro de usuário.

Dependências do Projeto:

 	-Java 14 Jdk
	-Eclipse
	-Tomcat v9.0.62 server
	-PostgreeSQL 9

Inciando a aplicação:
No eclipse (já com o Tomcat configurado):

	-import
	-maven project
	-projeto 
  
Dentro da aba Servers, precisamos clicar com o botão direito no Tomcat v9.0 Server e depois em "Add and Remove" e adicionar o projeto.

Para podermos inserir um usuário no banco de dados, primeiro precisamos criar um novo banco e depois conectar nossa aplicação com o Postgree:

	Para criar um novo banco no pgAdmin do Postgree:
	- Databases > create > Database > loteria
  Depois vamos	configurar o persistence.xml para conectar com o PostgreeSQL:
  
  	- webapp/WEB-INF/classes/META-INF/persistance.xml
	Vamos especificar o seu banco criado:
	- <property name="javax.persistence.jdbc.url" value="jdbc:postgresql://localhost/loteria" />
	Seu usuario do Postgree:
	- <property name="javax.persistence.jdbc.user" value="postgres" /> 
	Sua senha do Postgree:
        - <property name="javax.persistence.jdbc.password" value="123456" /> 

Agora já podemos inserir um usuário dentro do banco de dados e testar as outras páginas da aplicação:

-Para ver o usuário cadastrado basta ir dentro do pgAdmin do Postgree e ir até tables > usuario > View/Edit Data > All Rows
Rotas da aplicação:

- http://localhost:8080/loteria/cadastro
- http://localhost:8080/loteria/login
- http://localhost:8080/loteria/dashboard
- http://localhost:8080/loteria/novaaposta
- http://localhost:8080/loteria/apostas
- http://localhost:8080/loteria/resultado

