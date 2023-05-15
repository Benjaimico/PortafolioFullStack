package cl.portafolio.Proyecto01.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import cl.portafolio.Proyecto01.interfaces.CRUD;
import cl.portafolio.Proyecto01.modelo.Usuario;

@Controller
public class LoginController {

	@RequestMapping(value="/login", method= RequestMethod.GET)
	public ModelAndView login(HttpServletResponse response) throws IOException{
		System.out.println("Pasando por metodo GET");
		return new ModelAndView("login");
	}

	@Autowired
	private CRUD<Usuario> usuario;


	@RequestMapping(value="/login", method = RequestMethod.POST)
	public ModelAndView loginIn(HttpServletRequest request, HttpServletResponse response) throws IOException{
		String username = request.getParameter("username");
		String password = request.getParameter("pass");
		try {
			Usuario user = usuario.getUserPass(username, password);
			HttpSession session = request.getSession();
			session.setAttribute("username", username);
			System.out.println("Se ha conectado: "+user.getUsername());
			return new ModelAndView("home");// donde se redirige la pagina si el ingreso es exitoso.
		} catch (Exception e) {
			e.printStackTrace();
	        ModelAndView mav = new ModelAndView("Error");// colocar nombre de la pagina a la que se redirige en caso de fallo
	        mav.addObject("message", "Nombre de usuario o password incorrecto");
	        return mav;
		}

	}

}
