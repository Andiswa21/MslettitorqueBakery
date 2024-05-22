package com.lettitorque.Lettitorque.model;

import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

@Entity
@NoArgsConstructor
@Data
@Table(name = "product")
public class Product {
    @Id
    @GeneratedValue
    @Column(name = "prod_id")
    private Long id;

    @Column(nullable = false, unique = false)
    private String name;

    @Column(nullable = true)
    private String description;

    @Column(nullable = false)
    private double quantity;

    @Column(nullable = false)
    private double price;

    @Column(name = "prod_image", nullable = true)
    private byte[] prodImage;

    @ManyToOne(fetch = FetchType.LAZY, cascade = CascadeType.REMOVE)
    @JoinColumn(name = "cate_fk", referencedColumnName = "cate_id", nullable = true)
    @OnDelete(action = OnDeleteAction.CASCADE)
    private Category category;

}
