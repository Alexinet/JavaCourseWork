package com.backend;

import org.junit.Test;
import org.junit.runner.RunWith;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.web.servlet.MockMvc;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

@RunWith(SpringRunner.class)
@SpringBootTest
@AutoConfigureMockMvc
public class LoginTest {

    @Autowired
    private MockMvc mvc;

    @Test
    public void contextCheck() throws Exception {
        this.mvc.perform(get("/login")).andExpect(status().isOk()).andDo(print());
    }

    @Test
    public void LoginTest() throws Exception {
        this.mvc.perform(post("/login").param("username", "admin")
                        .param("password", "admin"))
                .andExpect(status().is3xxRedirection()).andExpect(redirectedUrl("/")).andDo(print());
    }

}