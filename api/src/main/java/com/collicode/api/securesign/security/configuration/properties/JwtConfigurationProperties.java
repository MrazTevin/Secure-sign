package com.collicode.api.securesign.security.configuration.properties;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;

@ConfigurationProperties(prefix = "com.collicode.api.securesign.security.jwt")
@Data
public class JwtConfigurationProperties {

    private JWT jwt = new JWT();

    @Data
    public class JWT {
        private String secretKey;
    }

}