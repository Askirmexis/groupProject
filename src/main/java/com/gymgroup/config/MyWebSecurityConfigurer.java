
package com.gymgroup.config;

import com.gymgroup.service.UserService;
import java.util.logging.Logger;
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.User.UserBuilder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

/**
 *
 * @author Alex
 */
//@Configuration
@EnableWebSecurity
public class MyWebSecurityConfigurer extends WebSecurityConfigurerAdapter {
    
    @Autowired
    private UserService userDetailsService;
    
    @Autowired
    private DataSource datasource;
    
    
    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception { 
        UserBuilder userBuilder = User.builder();
        
        
        auth.authenticationProvider(authenticationProvider());
        
               
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        
        http.csrf().disable().
                authorizeRequests()//Restrict access based on HttpServletRequest
                //.anyRequest().authenticated()//Any request to the app must be authenticated(logged in)
                .antMatchers("/static").permitAll()
                .antMatchers("/").permitAll()
                .antMatchers("/admin/**").hasRole("ADMIN")
                .antMatchers("/products/**", "/json/**","/user/**","/order/**").permitAll()
                .and()
                .formLogin() //We are customizing the form login process
                .loginPage("/loginPage")  // Show my form at the request mapping
                .loginProcessingUrl("/authenticate")  // Login form will POST data to this URL for processing username and password
                .permitAll() // allow everyone to sen Login page. Dont have to be logged in.
                .and().logout().permitAll()
                .and()
                .exceptionHandling().accessDeniedPage("/access-denied");
                
                
    }
    
    @Bean
    public DaoAuthenticationProvider authenticationProvider(){
        
        DaoAuthenticationProvider auth = new DaoAuthenticationProvider();
        auth.setUserDetailsService(userDetailsService);
        auth.setPasswordEncoder(passwordEncoder());
        return auth;
    }
    
    @Bean
    public BCryptPasswordEncoder passwordEncoder(){
        return new BCryptPasswordEncoder();
    }

}
