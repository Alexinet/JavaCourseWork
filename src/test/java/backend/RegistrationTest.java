package com.backend;

import org.junit.Test;
import org.junit.runner.RunWith;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.jdbc.Sql;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.web.servlet.MockMvc;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

@RunWith(SpringRunner.class)
@SpringBootTest
@AutoConfigureMockMvc
public class RegistrationTest {

    @Autowired
    private MockMvc mvc;

    @Test
    public void contextCheck() throws Exception {
        this.mvc.perform(get("/registration")).andExpect(status().isOk()).andDo(print());
    }

    @Test
    @Sql(value = { "/DeleteUserTest.sql"}, executionPhase = Sql.ExecutionPhase.AFTER_TEST_METHOD)
    public void exampleTest() throws Exception {
                this.mvc.perform(post("/registration").param("username", "coolNOne")
                .param("password", "12345").param("passwordConfirm", "12345"))
                .andExpect(status().is3xxRedirection()).andExpect(redirectedUrl("/login")).andDo(print());
            }
}