
package com.lettitorque.Lettitorque.model;

import jakarta.persistence.*;
        import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

@Entity
@NoArgsConstructor
@Data
@Table(name = "order_items")
public class OrderItems {
    @Id
    @GeneratedValue
    @Column(name = "oi_id")
    private Long oiId;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "prod_fk", referencedColumnName = "prod_id", nullable = false)
    @OnDelete(action = OnDeleteAction.SET_NULL)
    private Product product;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "order_fk", nullable = false)
    private Orders order;

    public OrderItems(Product product, Orders order) {
        this.product = product;
        this.order = order;
    }
}
