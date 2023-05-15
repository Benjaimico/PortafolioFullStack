package cl.portafolio.Proyecto01.dao;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;

import cl.portafolio.Proyecto01.dao.mapper.AdminRowMapper;
import cl.portafolio.Proyecto01.dao.mapper.ClienteRowMapper;
import cl.portafolio.Proyecto01.dao.mapper.UsuarioRowMapper;
import cl.portafolio.Proyecto01.interfaces.CRUD;
import cl.portafolio.Proyecto01.modelo.Usuario;


public class ImplUsuarioDao implements CRUD<Usuario>{

	private JdbcTemplate jdbcTemp;

	public ImplUsuarioDao(DataSource ds) {
		this.jdbcTemp = new JdbcTemplate(ds);
	}

	final String GETFORPASS = "SELECT * FROM usuario u WHERE username = ? AND clave = ? order by u.username;";
	final String GETADMINS = "SELECT u.idusuario, u.username, u.nombre, u.apellido, u.fechanacimiento, u.clave, u.run, a.idadministrativo, a.area "
			+ "FROM usuario u "
			+ "INNER JOIN administrativo a "
			+ "ON u.run = a.rutadmin;";
	final String GETCLIENTS = "SELECT u.idusuario, u.username, u.nombre, u.apellido, u.fechanacimiento, u.clave, u.run, c.idcliente, c.telefono, c.email "
			+ "FROM usuario u "
			+ "INNER JOIN cliente c "
			+ "ON u.run = c.rutcliente;";
	final String INSERT_USUARIO = "INSERT INTO usuario VALUES (?,?,?,?,?,?);";
	final String UPDATE = "UPDATE usuario SET username = ?, nombre = ?, apellido = ?, fechanacimiento = ?, clave = ? WHERE run = ?;";
	final String DELETEBYRUN = "DELETE FROM usuario WHERE run = ?;";


	/**@category	Metodo
	 * @param	getUserPass()
	 * Este metodo retorna un usuario, si esque la contraseña y el username son correctos
	 *  */
	@Override
	public Usuario getUserPass(String username, String pass) {

		String sql = "SELECT * FROM usuario WHERE username = ? AND clave = ?;";
		Object[] keys = {username, pass};
		Usuario user = jdbcTemp.queryForObject(sql, keys, new UsuarioRowMapper());

		return user;
	}


	/**@category	Metodo
	 * @param	mostrarUsuarios()
	 * Este metodo retorna una lista con todos los usuarios y sus datos especificos correspondientes, ya sea para administrativo o cliente
	 *  */
	@Override
	public List<Usuario> mostrarUsuarios() {
	    List<Usuario> usuarios = new ArrayList<>();
	    usuarios.addAll(jdbcTemp.query(GETADMINS, new AdminRowMapper()));
	    usuarios.addAll(jdbcTemp.query(GETCLIENTS, new ClienteRowMapper()));
	    System.out.println(String.valueOf(usuarios));
	    return usuarios;
	}

	@Override
	public void crearUsuario(Usuario d) {
		// TODO Auto-generated method stub

	}

	@Override
	public void editarUsuario(Usuario d) {
		// TODO Auto-generated method stub

	}

	@Override
	public void eliminarUsuario(Usuario d) {
		// TODO Auto-generated method stub

	}
}
