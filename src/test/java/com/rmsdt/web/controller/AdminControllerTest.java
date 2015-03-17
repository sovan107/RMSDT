package com.rmsdt.web.controller;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.redirectedUrl;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import javax.servlet.Filter;
import javax.transaction.Transactional;

import org.joda.time.DateTime;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.MediaType;
import org.springframework.mock.web.MockHttpSession;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.annotation.web.servlet.configuration.EnableWebMvcSecurity;
import org.springframework.security.core.context.SecurityContextHolder;
//import org.springframework.security.core.userdetails.User;
import org.springframework.security.test.context.support.WithMockUser;
import org.springframework.security.web.FilterChainProxy;
import org.springframework.security.web.context.HttpSessionSecurityContextRepository;
import org.springframework.security.web.context.SecurityContextRepository;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.server.RequestBuilder;
import org.springframework.test.web.server.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.ResultActions;
import org.springframework.test.web.servlet.request.MockHttpServletRequestBuilder;
import org.springframework.test.web.servlet.result.MockMvcResultHandlers;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.redirectedUrl;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.view;

import com.rmsdt.web.model.User;
import com.rmsdt.web.service.AdminService;

import static org.springframework.security.test.web.servlet.request.SecurityMockMvcRequestBuilders.*;
import static org.springframework.security.test.web.servlet.response.SecurityMockMvcResultMatchers.*;
import static org.springframework.security.test.web.servlet.request.SecurityMockMvcRequestPostProcessors.*;
import static org.junit.Assert.assertEquals;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration(locations = { "/spring/mvc-view-config.xml",
		"/spring/mvc-core-config.xml", "/spring/jpa-tx-config.xml",
		"/spring/security-config.xml" })
public class AdminControllerTest {

	@Autowired
	private Filter springSecurityFilterChain;

	@Autowired
	AdminService adminService;

	@Autowired
	private WebApplicationContext wac;

	@Autowired
	MockHttpSession session;

	private MockMvc mockMvc;

	@Before
	public void init() throws Exception {
		mockMvc = MockMvcBuilders
				.webAppContextSetup(wac)
				.defaultRequest(
						get("/admin").with(
								user("sambitc").password("mindfire").roles(
										"SUPER_ADMIN")))
				.addFilters(springSecurityFilterChain).build();
	}

	@Test
	public void viewDetailsTest() throws Exception {
		this.mockMvc
				.perform(
						get("/admin/viewDetails").with(
								httpBasic("sambitc", "mindfire")))
				.andDo(print()).andExpect(status().isOk())
				.andExpect(view().name("admin/viewAdminDetails"));
	}

	@Test
	@Rollback
	@Transactional
	public void editDetailsTest() throws Exception {
		User user = adminService.findAdminByName("sambitc");

		MockHttpServletRequestBuilder requestBuild = post("/admin/editDetails",
				user).contentType(MediaType.APPLICATION_FORM_URLENCODED);
		requestBuild.param("firstName", "sambitupdated");

		requestBuild.sessionAttr("user", user);
		this.mockMvc.perform(requestBuild).andDo(print())
				.andExpect(status().isMovedTemporarily())
				.andExpect(redirectedUrl("/admin/" + user.getId()));
		user = adminService.findAdminByName("sambitc");
		assertEquals(user.getFirstName(), "sambitupdated");

	}
}
