package com.collicode.api.securesign.dto;

import lombok.Builder;
import lombok.Getter;
import lombok.extern.jackson.Jacksonized;

@Getter
@Builder
@Jacksonized
public class TokenRefreshRequestDto {

    private final String refreshToken;

}
