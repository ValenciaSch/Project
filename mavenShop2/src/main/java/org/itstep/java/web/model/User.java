package org.itstep.java.web.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import org.hibernate.secure.spi.GrantedPermission;

import java.util.Objects;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

//@Entity
//@Table(name="tb_user")
public class User implements Serializable, UserDetails {

   static GrantedAuthority auth = new GrantedAuthority() {
        @Override
        public String getAuthority() {
            return "ROLE_USER";
        }
    };
   
    private Integer Id;
    private String Name;
    private String Email;
    private String Password;
    private boolean banned;

    public User(String name, String email) {
        this.Name = name;
        this.Email = email;
    }

    public User(String name) {
        this.Name = name;
    }

    public User() {

    }

    public boolean isBanned() {
        return banned;
    }

    void setBanned(boolean banned) {
        this.banned = banned;
    }

    public String getName() {
        return Name;
    }

    public void setName(String name) {
        this.Name = name;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String email) {
        this.Email = email;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String password) {
        this.Password = password;
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        List<GrantedAuthority> list = new ArrayList<>();
        list.add(auth);
        return list;
    }

    @Override
    public String getUsername() {
        return Email;
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return true;
    }

}
