package br.com.caelum.vraptor.controller;

import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.validation.Valid;
import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.dao.UsuarioDAO;
import br.com.caelum.vraptor.interceptor.IncludeParameters;
import br.com.caelum.vraptor.model.Usuario;
import br.com.caelum.vraptor.validator.SimpleMessage;
import br.com.caelum.vraptor.validator.Validator;

@Path("cadastro")
@Controller
public class CadastroController {
	
	@Inject EntityManager em;
	@Inject Result result;
	@Inject UsuarioDAO usuarioDao;
	@Inject Validator validator;
	
	@Get("")
	public void cadastro() {
		
	}
	
	@IncludeParameters
	@Post("salvausuario")
	public void salvaUsuario(@Valid Usuario usuario, String confirmaSenha) { 
		
		//validar a senha e a confirmação de senha
		boolean asSenhasSaoIguais = confirmaSenha.equals(usuario.getSenha());
		validator.addIf(!asSenhasSaoIguais, new SimpleMessage("confirmaSenha", "A confirmação está diferente da senha"));
		//validar usuario - se der erro precisamos redirecionar para cadastro de novo
		validator.onErrorRedirectTo(this).cadastro();
		//salvar usuario no banco
		usuarioDao.insertOrUpdate(usuario);
		//direcionar para o dashboard
		result.redirectTo(DashboardController.class).dashboard();
	}
}
