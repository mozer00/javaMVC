package controller;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Contato;
import model.ContatoDAO;

// TODO: Auto-generated Javadoc
/**
 * The Class InserirContatoServlet.
 */
@WebServlet("/Inserir")
public class InserirContatoServlet extends HttpServlet {
	
	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = 1L;

	/**
	 * Do post.
	 *
	 * @param request the request
	 * @param response the response
	 * @throws ServletException the servlet exception
	 * @throws IOException Signals that an I/O exception has occurred.
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		// recebendo os dados do formulario via parametro
		String nome = request.getParameter("nome");
		int idade = Integer.parseInt(request.getParameter("idade"));
		
		// criando o objeto contato
		Contato objContato = new Contato();
		// guardando os dados do formulario do objeto
		objContato.setNome(nome);
		objContato.setIdade(idade);
		objContato.setDataCadastro(new Date());
		// criando um objeto DAO para enviar o objeto Contato para o banco de dados

		// usando o método save da classe ContatoDAO
		ContatoDAO cdao = new ContatoDAO();
		cdao.save(objContato);
		// Redirecionando o usuario para a pagina inicial da aplicação.
		response.sendRedirect("home");

	}

}
