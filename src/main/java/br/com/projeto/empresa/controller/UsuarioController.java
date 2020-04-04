package br.com.projeto.empresa.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UsuarioController
 */
public class UsuarioController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UsuarioController() {
        super();
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email = request.getParameter("email");
		String senha = request.getParameter("senha");
		
		if(email.equals("lucas@gmail.com") && senha.equals("123")) {
			request.setAttribute("Bem Vindo", email);
			
			RequestDispatcher rd = request.getRequestDispatcher("http://localhost:8080/agenda-acme/admin/dashboard/");
			rd.forward(request, response);
					
		}else {
			request.setAttribute("mensagem", "Email ou Senha Incorreto!");
			RequestDispatcher rd = request.getRequestDispatcher("http://localhost:8080/agenda-acme/admin/dashboard/");
			rd.forward(request, response);
		}
		
	
		if(email.equals("") && senha.equals("")) {
			request.setAttribute("Preencha o campo corretamente!", email);
			
		}
		
		else {
			request.setAttribute("Preencha o campo corretamente!", senha);
			RequestDispatcher rd = request.getRequestDispatcher("http://localhost:8080/agenda-acme/admin/dashboard/");
			rd.forward(request, response);
		
	
	
}
}


}

