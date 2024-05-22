package com.lettitorque.Lettitorque.model;

import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

import java.util.Date;
import java.util.List;

import static org.eclipse.jdt.internal.compiler.parser.Parser.name;

@Entity
@NoArgsConstructor
@Data
@Table(name = "orders")
public class Orders {
    @Id
    @GeneratedValue
    @Column(name = "order_id")
    private Long orderId;
    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "order_date")
    private Date orderDate;
    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "delivery_date")
    private Date deliveryDate;
    @ManyToOne(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    @JoinColumn(name = "cust_fk",
            referencedColumnName = "user_id",
            nullable = true)
    @OnDelete(action = OnDeleteAction.SET_NULL)
    private Customer customer;
    private Boolean status;
    private Double tot_amt;

    public Orders(Date orderDate, Date deliveryDate,
                  Customer customer,
                  Boolean status, Double tot_amt) {
        this.orderDate = orderDate;
        this.deliveryDate = deliveryDate;
        this.customer = customer;
        this.status = status;
        this.tot_amt = tot_amt;
    }
}
