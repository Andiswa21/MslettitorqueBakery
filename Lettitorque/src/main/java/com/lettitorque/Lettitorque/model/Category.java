package com.lettitorque.Lettitorque.model;

import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

@Entity
@NoArgsConstructor
@Data
@Table(name = "category")
public class Category {
    @Id
    @GeneratedValue
    @Column(name = "cate_id")
    @OnDelete(action = OnDeleteAction.SET_NULL)
    private Integer id;
    @Column(unique = true, nullable = false)
    @OnDelete(action = OnDeleteAction.SET_NULL)
    private String name;
    private String description;
}
