package com.dev.hotelpms.config;

import com.dev.hotelpms.security.UserLoginFailHandler;
import com.dev.hotelpms.security.UserLogoutHandler;
import com.dev.hotelpms.security.UserLogoutSucessHandler;
import com.dev.hotelpms.security.UserSuccessHandler;
import com.dev.hotelpms.user.UserSocialService;
import org.apache.catalina.filters.ExpiresFilter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityCustomizer;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
@EnableWebSecurity
public class SecurityConfig {

	@Autowired
	private UserLogoutHandler userLogoutHandler;

	@Autowired
	private UserSocialService userSocialService;

	@Autowired
	private UserLogoutSucessHandler logoutSucessHandler;

	@Bean
		//public 을 선언하면 default로 바꾸라는 메세지 출력
	WebSecurityCustomizer webSecurityConfig() {
		//Security에서 무시해야하는 URL 패턴 등록
		return web -> web
				.ignoring()
				.antMatchers("/img/**")
				.antMatchers("/js/**")
				.antMatchers("/css/**")
				.antMatchers("/fonts/**");
	}

	@Bean
	SecurityFilterChain fiterChain(HttpSecurity httpSecurity) throws Exception{
		httpSecurity
				.cors()
				.and()
				.csrf()
				.disable()
				.authorizeRequests()
				//URL과 권한매칭
				.antMatchers("/").permitAll() //루트만 허용
//				.antMatchers("/booking/**").permitAll()
//				.antMatchers("/customer/findIdPw").permitAll()
//				.antMatchers("/customer/join").permitAll()
//				.antMatchers("/customer/myPage").hasRole("MEMBER")
//				.antMatchers("/pay/paymentDetail").hasRole("MEMBER")
//				.antMatchers("/pay/paymentList").hasRole("MEMBER")
//				.anyRequest().authenticated()
//				//그외 나머지는 로그인 해야 볼수 있음 (authenticated = 인증)
				.anyRequest().permitAll()
//				//테스트할땐 모두 걸려버리니까 permit 마지막에 주자
				.and()
				.formLogin() //로그인 폼 인증 설정
				.loginPage("/customer/login") //내장된 로그인폼을 사용하지 않고 개발자가 만든 폼요청 URL
				.usernameParameter("id") //id 파라미터는 username이지만, 개발자가 다른 파라미터 이름을 사용할 때
//				.defaultSuccessUrl("/") //인증에 성공할 경우 요청할 URL
				.successHandler(new UserSuccessHandler()) //UserSuccessHandler 객체 생성 (로그인 성공시)
//				.failureUrl("/member/login") //인증에 실패했을 경우 요청할 URL
				.failureHandler(new UserLoginFailHandler()) //UserLoginFailHandler 객체 생성 (로그인 실패시)
				.permitAll()
				.and()
				.logout() //로그아웃 폼 인증 설정
				.logoutUrl("/customer/logout")
				.logoutSuccessUrl("/")
				.logoutSuccessHandler(logoutSucessHandler)//UserLogoutSucessHandler 객체 생성 (로그아웃 성공시)
				//.addLogoutHandler(userLogoutHandler) //UserLogoutHandler 객체 생성(단순 로그아웃)
				.invalidateHttpSession(true)
				.deleteCookies("JSESSIONID")
				.permitAll()
				.and()
				.oauth2Login()
				.userInfoEndpoint()
				.userService(userSocialService);
//			.sessionManagement()
//				.maximumSessions(1) //최대 허용 가능한 세션 수 => -1: 무제한, 1:한명만 접속
//				.maxSessionsPreventsLogin(false); //false: 이전 사용자 세션 만료, true: 새로운 사용자 인증 실패


		return httpSecurity.build();
	}

	@Bean
	public PasswordEncoder getPasswordEncoder() {
		return new BCryptPasswordEncoder();
	}
}
