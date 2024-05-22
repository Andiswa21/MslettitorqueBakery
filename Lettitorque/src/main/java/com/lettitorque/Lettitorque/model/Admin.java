package com.lettitorque.Lettitorque.model;

import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@NoArgsConstructor
@Data
@Table(name = "admin")
@DiscriminatorValue("A")
public class Admin extends User {
}
