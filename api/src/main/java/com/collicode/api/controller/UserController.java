package com.collicode.api.controller;


import com.collicode.api.security.utility.JwtUtils;
import com.collicode.api.service.UserService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import lombok.AllArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@AllArgsConstructor
public class UserController {

    private final UserService userService;
    private final JwtUtils jwtUtils;

    @GetMapping(value = "/user", produces = MediaType.APPLICATION_JSON_VALUE)
    @ResponseStatus(value = HttpStatus.OK)
    @Operation(summary = "Returns logged in users account details")
    public ResponseEntity<?> loggedInUserDetailsRetrievalHandler(
            @Parameter(hidden = true) @RequestHeader(required = true, name = "Authorization") final String header) {
        return userService.getDetails(jwtUtils.extractUserId(header));
    }

    @DeleteMapping(value = "/user", produces = MediaType.APPLICATION_JSON_VALUE)
    @ResponseStatus(value = HttpStatus.OK)
    @Operation(summary = "Deletes a user account")
    public ResponseEntity<?> userAccountDeletionHandler(
            @Parameter(hidden = true) @RequestHeader(required = true, name = "Authorization") final String header) {
        return userService.deleteAccount(jwtUtils.extractUserId(header));
    }

}
