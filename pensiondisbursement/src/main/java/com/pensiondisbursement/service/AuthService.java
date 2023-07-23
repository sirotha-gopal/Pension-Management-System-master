package com.pensiondisbursement.service;

import com.netflix.hystrix.contrib.javanica.annotation.HystrixCommand;
import com.pensiondisbursement.restclients.AuthorizationServiceClient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AuthService {

    @Autowired
    AuthorizationServiceClient authClient;
    @HystrixCommand(fallbackMethod = "CallHelloFallback")
    public String callHello() {
        return authClient.callHello();
    }

    public String CallHelloFallback() {
        return "fallback response";
    }
}
