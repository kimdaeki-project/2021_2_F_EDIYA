package com.kjl.fp.config;

import javax.annotation.security.PermitAll;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

		@Override
		public void configure(WebSecurity web) throws Exception {
			// TODO Auto-generated method stub
			web.ignoring()
						.antMatchers("/css/**")
						.antMatchers("/js/**")
						.antMatchers("/images/**")
						.antMatchers("/font/**")
						.antMatchers("/vendor/**")
						.antMatchers("/favicon*/**")
						.antMatchers("/resources/**");
		}
		
		
		
		@Override
		protected void configure(HttpSecurity http) throws Exception {
		
			http
				.cors()
				.and()
				.csrf().disable()
				.authorizeRequests()
									.antMatchers("/").permitAll()
									.antMatchers("/borad/**").permitAll()
									.antMatchers("/product/**").permitAll()
									.antMatchers("/member/**").permitAll()
									//.antMatchers("Member이 들어갈 수 있는 링크").hasRole("MEMBER")
									//.antMatchers("Admin이 들어갈 수 있는 링크").hasRole("ADMIN")
									.and()
									
				.formLogin()
							.loginPage("/member/login")
							.defaultSuccessUrl("/")
									
									;
										
			
		}
		
		@Bean
		public PasswordEncoder passwordEncoder() {
			return new BCryptPasswordEncoder();
		}
	
}
