package com.collicode.api.securesign.security.utility;

import lombok.experimental.UtilityClass;
import org.springframework.security.core.userdetails.User;

import java.util.List;

@UtilityClass
public class SecurityUtils {

    public User convert(com.collicode.api.securesign.entity.User user) {
        return new User(user.getEmailId(), user.getPassword(), List.of());
    }

}