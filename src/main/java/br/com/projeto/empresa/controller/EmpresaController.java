package br.com.projeto.empresa.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.security.sasl.SaslException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.projeto.empresa.model.Empresa;

@WebServlet("/EmpresaController")
public class EmpresaController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private Empresa empresa;
		
	public EmpresaController() {
		this.empresa = new Empresa();
	}

	// Servlet
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws SaslException, IOException, ServletException {
		
		
		String email = request.getParameter("email");
		String senha = request.getParameter("senha");
		
		// PrintWriter entrada = response.getWriter();
		
		
		if(email.equals("rafael@gmail.com") && senha.equals("123")) {
			request.setAttribute("email",email);
			request.setAttribute("senha",senha);
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/index.jsp");
			rd.forward(request, response);
			
		}else {
			request.setAttribute("mensagem", "Login ou senha incorreto!");
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/login.jsp");
			rd.forward(request, response);
			
			
		}
	}

}
