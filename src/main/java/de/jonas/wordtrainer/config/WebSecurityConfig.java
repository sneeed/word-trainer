package de.jonas.wordtrainer.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.security.servlet.PathRequest;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configurers.AbstractHttpConfigurer;
import org.springframework.security.config.annotation.web.configurers.HeadersConfigurer;
import org.springframework.security.core.session.SessionRegistryImpl;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.authentication.session.RegisterSessionAuthenticationStrategy;
import org.springframework.security.web.authentication.session.SessionAuthenticationStrategy;
import org.springframework.security.web.servlet.util.matcher.MvcRequestMatcher;
import org.springframework.web.servlet.handler.HandlerMappingIntrospector;

import static org.springframework.security.config.Customizer.withDefaults;

@Configuration
@EnableWebSecurity
public class WebSecurityConfig {
    @Autowired
    private UserDetailsService userDetailsService;

    @Bean
    public BCryptPasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Bean
    protected SessionAuthenticationStrategy sessionAuthenticationStrategy() {
        return new RegisterSessionAuthenticationStrategy(new SessionRegistryImpl());
    }

    // fixes h2-console not working since Spring Security 6 update
    @Bean
    MvcRequestMatcher.Builder mvc(HandlerMappingIntrospector introspector) {
        return new MvcRequestMatcher.Builder(introspector);
    }

    @Bean
    public SecurityFilterChain filterChain(HttpSecurity http, MvcRequestMatcher.Builder mvc) throws Exception {
        http.authorizeHttpRequests((auth) -> auth
                        .requestMatchers(PathRequest.toStaticResources().atCommonLocations()).permitAll()
                        // .requestMatchers(PathRequest.toH2Console()).permitAll() // Allow access to H2 console without authentication, but error on test server
                        .requestMatchers(mvc.pattern("/h2-console/**")).permitAll() // Allow access to H2 console without authentication
                        .requestMatchers(mvc.pattern("/login/**")).permitAll()
                        .requestMatchers(mvc.pattern("/cards/approve-cards")).hasAnyAuthority("TEACHER", "ADMIN")
                        .requestMatchers(mvc.pattern("/cards/approve")).permitAll()
                        .anyRequest().authenticated()
                )
                .formLogin(withDefaults()) // Configure form-based login if needed
                .headers(headers -> headers.frameOptions(HeadersConfigurer.FrameOptionsConfig::sameOrigin)) // allow iframe for h2-console
                .csrf(AbstractHttpConfigurer::disable); // disable CSRF for h2-console

        http.rememberMe((rememberMe) -> rememberMe
                .key("remember-me")
                .tokenValiditySeconds(365 * 24 * 60 * 60)
                .userDetailsService(userDetailsService)
        );

        http.requiresChannel()
                .requestMatchers(r -> r.getHeader("X-Forwarded-Proto") != null)
                .requiresSecure();

        return http.build();
    }

}
