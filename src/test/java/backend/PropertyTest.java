package backend;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.security.test.context.support.WithUserDetails;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.web.servlet.MockMvc;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.redirectedUrl;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@RunWith(SpringRunner.class)
@SpringBootTest
@AutoConfigureMockMvc
@WithUserDetails(value = "admin")
public class PropertyTest {

    @Autowired
    private MockMvc mvc;

    @Test
    public void contextCheck() throws Exception {
        this.mvc.perform(get("/sign")).andExpect(status().isOk()).andDo(print());
    }

    @Test
    public void signTest() throws Exception {
        this.mvc.perform(post("/sign")
                        .param("name", "Ренат")
                        .param("email", "michurin2002@gmail.com")
                        .param("doctor", "Артур Магиланов")
                        .param("text", "Болит все кроме зубов"))
                .andExpect(status().is3xxRedirection())
                .andExpect(redirectedUrl("/")).andDo(print());
    }

}