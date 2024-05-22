package com.lettitorque.Lettitorque.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@NoArgsConstructor
@Data
@Table(name = "\"user\"")
@Inheritance(strategy = InheritanceType.TABLE_PER_CLASS)
@DiscriminatorColumn(name = "users", discriminatorType = DiscriminatorType.CHAR)
@DiscriminatorValue("U")
public class User {
    @Id
    @GeneratedValue
    @Column(name = "user_id")
    private Long id;
    @Column(unique = true, nullable = false)
    private String username;
    @Column(nullable = false)
    private String password;
    @Column(nullable = false)
    private String firstname;
    @Column(nullable = false)
    private String lastname;
    @Column(nullable = true)
    private char gender;
    @Column(nullable = false)
    private Long phone;
    @Column(name = "isadmin", nullable = false)
    private boolean isAdmin;

    public User(String username, String password,
                String firstname, String lastname,
                char gender, Long phone, boolean isAdmin) {
        this.username = username;
        this.password = password;
        this.firstname = firstname;
        this.lastname = lastname;
        this.gender = gender;
        this.phone = phone;
        this.isAdmin = isAdmin;
    }
}
