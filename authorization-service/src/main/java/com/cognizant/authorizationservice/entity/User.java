package com.cognizant.authorizationservice.entity;

import lombok.*;

import javax.persistence.*;

@Data
@NoArgsConstructor
@Entity
@RequiredArgsConstructor
@Table(name = "users", uniqueConstraints = {
        @UniqueConstraint(columnNames = "username")
})
public class User {
    @Id
    private long id;
    @NonNull
    private String username;
    @NonNull
    private String password;
    @NonNull
    private String roles;
}
