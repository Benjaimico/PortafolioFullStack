package cl.portafolio.Proyecto01.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class QsController {

	@GetMapping("/quienesSomos")
	public ModelAndView test(HttpServletResponse response) throws IOException{
		return new ModelAndView("quienesSomos");
	}
}
