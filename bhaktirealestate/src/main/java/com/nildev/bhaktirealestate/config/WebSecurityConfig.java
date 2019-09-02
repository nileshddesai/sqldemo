package com.nildev.bhaktirealestate.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

	@Autowired
	private UserDetailsService userDetialsService;
	
	@Bean
	public PasswordEncoder passwordencoder() {
		return new BCryptPasswordEncoder(); 
	}
	
//	@Override
//	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
//		
////		List<User> users = userRepository.findAll();
////		
////		if(CollectionUtils.isEmpty(users)) {
////			User user = new User();
////			user.setName("Admin");
////			user.setRole("ADMIN");
////			user.setPassword(new BCryptPasswordEncoder().encode("admin"));
////			userRepository.save(user);
////		}
//		auth.userDetailsService(userDetialsService).passwordEncoder(new BCryptPasswordEncoder());
//	}
//	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests()
		.antMatchers("/assets/**","/image/**","/img/**","/public/**", "/resources/**","/resources/public/**").permitAll()
		.antMatchers("/login").permitAll()
		.antMatchers("/").access("hasRole('ROLE_ADMIN') OR hasRole('ROLE_USER')")
		.anyRequest().authenticated()
		.and()
		.formLogin()
		.loginPage("/login")
		.loginProcessingUrl("/login")
		.usernameParameter("username").passwordParameter("password")
		.failureUrl("/login?error")
		.defaultSuccessUrl("/propertycategory")
		.permitAll()
		.and()
		.logout()
		.logoutSuccessUrl("/login?logout")
		.permitAll().and().csrf().disable();
	}
	
	@Autowired
	public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(userDetialsService).passwordEncoder(passwordencoder());
	}
	
	@Override
	public void configure(WebSecurity web) throws Exception {
		
		super.configure(web);
		web.ignoring().antMatchers("/static/**");
	}
}
