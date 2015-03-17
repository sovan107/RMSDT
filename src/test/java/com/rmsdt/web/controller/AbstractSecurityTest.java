///*
// * To change this license header, choose License Headers in Project Properties.
// * To change this template file, choose Tools | Templates
// * and open the template in the editor.
// */
//package com.rmsdt.web.controller;
//
//import java.util.ArrayList;
//import java.util.List;
//
//import org.junit.After;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
//import org.springframework.security.core.Authentication;
//import org.springframework.security.core.context.SecurityContextHolder;
//import org.springframework.security.core.userdetails.UserDetails;
//
//import com.pluralsight.service.MyUserDetailsService;
//
///**
// *
// * @author sambitc
// */
//public class AbstractSecurityTest {
//
//    @Autowired
//    private MyUserDetailsService userDetailsService;
//
//    @After
//    public void clearSecurityContext() {
//        SecurityContextHolder.clearContext();
//    }
//
//    protected void login(String customUsername) {
//        UserDetails ud = userDetailsService.loadUserByUsername(customUsername);
//        Authentication auth = new UsernamePasswordAuthenticationToken(ud,
//                ud.getPassword(), ud.getAuthorities());
//        SecurityContextHolder.getContext().setAuthentication(auth);
//    }
//}
