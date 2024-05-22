package com.lettitorque.Lettitorque.model;

import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Entity
@Data
@NoArgsConstructor
@Table(name = "confirmed_order_details")
public class ConfirmedOrderDetails {
    @Id
    @GeneratedValue
    @Column(name = "cod_id")
    private Long codId;

    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(unique = true, name = "order_fk", referencedColumnName = "order_id")
    private Orders order;

    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(unique = true, name = "pmt_fk", referencedColumnName = "pmt_id")
    private Payment payment;

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "cod_date")
    private Date codDate;

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "delivered_date")
    private Date deliveredDate;

    @Column(name = "service_delivered", nullable = true)
    private Boolean serviceDelivered;

    @Column(name = "confirmed_order", nullable = true)
    private boolean confirmedOrder;

    public ConfirmedOrderDetails(Orders order, Payment payment, Date codDate, Date deliveredDate, Boolean serviceDelivered, boolean confirmedOrder) {
        this.order = order;
        this.payment = payment;
        this.codDate = codDate;
        this.deliveredDate = deliveredDate;
        this.serviceDelivered = serviceDelivered;
        this.confirmedOrder = confirmedOrder;
    }
}
