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
				.cors() 		   //위변조 방지
				.and()  		   //위변조 방지
				.csrf().disable()  //암호코드를 사용하지 않겠다는 뜻 나중에 허용해햐함.
				
				.authorizeRequests()
									.antMatchers("/").permitAll()
									.antMatchers("/borad/**").permitAll()
									.antMatchers("/product/**").permitAll()
									.antMatchers("/api/**").permitAll()
									.antMatchers("/member/login", "/member/joinCheck","/member/join","/member/updateCheck").permitAll()
									.antMatchers("/member/mypage").hasRole("MEMBER")
									.antMatchers("/admin/**").hasRole("ADMIN")
									.and()
									
				.formLogin()
							.loginPage("/member/login")
							.defaultSuccessUrl("/")
							.and()
				.logout()
							.logoutUrl("/member/logout")
							.logoutSuccessUrl("/")
							.invalidateHttpSession(true)
							.deleteCookies("JSESSIONID")
									;
										
			
		}
		
		@Bean
		public PasswordEncoder passwordEncoder() {
			return new BCryptPasswordEncoder();
		}
	
}
