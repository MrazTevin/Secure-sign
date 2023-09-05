package com.collicode.api.securesign.dto;

import lombok.Builder;
import lombok.Getter;
import lombok.extern.jackson.Jacksonized;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;

@Getter
@Builder
@Jacksonized
public class UserLoginRequestDto {

    @Email
    @NotBlank
    private final String emailId;

    @NotBlank
    private final String password;

}
