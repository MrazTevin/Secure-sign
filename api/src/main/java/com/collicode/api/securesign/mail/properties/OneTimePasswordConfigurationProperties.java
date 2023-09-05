package com.collicode.api.securesign.mail.properties;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;

@Data
@ConfigurationProperties(prefix = "com.collicode.api.securesign.mail.otp")
public class OneTimePasswordConfigurationProperties {

    private OTP otp = new OTP();

    @Data
    public class OTP {
        private Integer expirationMinutes;
    }

}