package cl.portafolio.Proyecto01.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import cl.portafolio.Proyecto01.dao.ImplUsuarioDao;
import cl.portafolio.Proyecto01.interfaces.CRUD;
import cl.portafolio.Proyecto01.modelo.Usuario;

@Configuration
@ComponentScan(basePackages="cl.portafolio.Proyecto01")
@EnableWebMvc
public class MvcConfiguration extends WebMvcConfigurerAdapter{



		@Bean
		public ViewResolver getViewResolver(){
			InternalResourceViewResolver resolver = new InternalResourceViewResolver();
			resolver.setPrefix("/WEB-INF/views/");
			resolver.setSuffix(".jsp");
			return resolver;
		}

		@Override
		public void addResourceHandlers(ResourceHandlerRegistry registry) {
			registry.addResourceHandler("/resources/**").addResourceLocations("/resources/");
		}

		@Bean
		public DriverManagerDataSource getConnection() {

			DriverManagerDataSource dbc = new DriverManagerDataSource();
			dbc.setDriverClassName("com.mysql.cj.jdbc.Driver");
			dbc.setUrl("jdbc:mysql://localhost:3306/portafolio");
			dbc.setUsername("root");
			dbc.setPassword("1234");

			return dbc;
		}

		@Bean

		public CRUD<Usuario> getUsuarioDao(){
			return new ImplUsuarioDao(getConnection());
		}

	  }
