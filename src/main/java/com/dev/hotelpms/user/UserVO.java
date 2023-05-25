package com.dev.hotelpms.user;

import lombok.Getter;
import lombok.Setter;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.oauth2.core.user.OAuth2User;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;
import java.util.Collection;
import java.util.Collections;
import java.util.Map;

@Setter
@Getter
public class UserVO implements UserDetails, OAuth2User {
    @NotBlank
    private String id;
    @NotBlank
    @Size(min = 8, max=10)
    private String password;
    @NotBlank
    private String passwordCheck;
    @NotBlank
    private String phoneNumber;
    @NotBlank
    private String name;
    @NotBlank
    @Email
    private String email;
    @NotBlank
    private String emailCheck;
    private String roleName;

    //OAuth2User, token 정보 저장
    private Map<String,Object> attributes;

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        // 사용자의 권한을 반환
        // 여기서는 간단히 "ROLE_USER" 권한을 부여
        return Collections.singletonList(new SimpleGrantedAuthority("ROLE_MEMBER"));
    }

    @Override
    public String getUsername() {
        return id;
    }
    @Override
    public boolean isAccountNonExpired() {
        // TODO Auto-generated method stub
        // 계정의 만료 여부
        // true : 만료가 안됨
        // false: 만료 됨, 로그인 안됨
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        // TODO Auto-generated method stub
        // 계정의 잠김 여부
        // true : 잠기지 않음
        // false: 잠김
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        // TODO Auto-generated method stub
        // password 만료 여부
        // true : 만료 안됨
        // false: 만료 됨, 로그인 안됨
        return true;
    }

    @Override
    public boolean isEnabled() {
        // TODO Auto-generated method stub
        // 계정 사용 여부
        // true = 1: 계정 활성화
        // false = 0: 계정 비활성화, 로그인 안됨
        return true;
    }
}
