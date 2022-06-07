package com.backend.entity;

import com.backend.service.UserService;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;


@Entity
@Getter
@Setter
@Table(name = "t_sign")
public class Property {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    private String name;

    private String email;

    private String realEstate;

    private String text;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;

    public Property() {
    }

    public Property(Long id) {
        this.id = id;
    }

    public Property(Long id, String name) {
        this.id = id;
        this.name = name;
    }

    public Property(Long id, String name, String email) {
        this.id = id;
        this.name = name;
        this.email = email;
    }

    public Property(Long id, String name, String email, String realEstate) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.realEstate = realEstate;
    }

    public Property(Long id, String name, String email, String realEstate, String text, User user) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.realEstate = realEstate;
        this.text = text;
        this.user = user;
    }

    public Property(Long id, String name, String email, String realEstate, String text, Long user) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.realEstate = realEstate;
        this.text = text;
        this.user = new UserService().findUserById(user);
    }


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

}
