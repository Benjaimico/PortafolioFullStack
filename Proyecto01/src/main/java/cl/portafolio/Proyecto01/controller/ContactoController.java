
package cl.portafolio.Proyecto01.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/*import cl.portafolio.Proyecto01.dao.ImplContactoDao;
*/import cl.portafolio.Proyecto01.modelo.Contacto;

@Controller
public class ContactoController {
	final String INSERT_CONTACTO = "INSERT INTO contacto(nombre,email,apellido) VALUES (?,?,?)";

	@RequestMapping("/contacto")
	public String contacto() {
		return "contacto";
	}
	/*
	 * @Autowired JdbcTemplate jdbcTemplate = new JdbcTemplate();
	 */
	/*
	 * @Autowired private ImplContactoDao contactoDao;
	 */
	/*
	 * @RequestMapping public String mostrarFormularioContacto(Model model) {
	 * model.addAttribute("contacto", new Contacto()); return "contacto"; }
	 */

	@RequestMapping(value = "/enviarMensaje", method = RequestMethod.POST)
	public ModelAndView enviarMensajeContacto(@RequestParam("nombre") String nombre,

			@RequestParam("email") String email,

			@RequestParam("mensaje") String mensaje) {
		ModelAndView mv = new ModelAndView();
		Contacto con = new Contacto();
		con.setNombre(nombre);
		con.setEmail(email);
		con.setMensaje(mensaje);
		System.out.println(nombre + email + mensaje);
		/* jdbcTemplate.update(INSERT_CONTACTO, con, new ContactoRowMapper()); */
		/*
		 * contactoDao.crearContacto(con);
		 */ mv.setViewName("redirect:/");
		return mv;
	}

}
