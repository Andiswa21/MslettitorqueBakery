package com.lettitorque.Lettitorque.model;

import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

import java.util.Date;

@Entity
@NoArgsConstructor
@Data
@Table(name = "payment")
public class Payment {
    @Id
    @GeneratedValue
    @Column(name = "pmt_id")
    private Long pmtId;

    @Column(name = "tot_amt")
    private Double totAmt;

    @OneToOne(fetch = FetchType.LAZY)
    @PrimaryKeyJoinColumn(name = "order_fk")
    private Orders order;

    @Column(name = "receipt_pdf")
    private byte[] receipt;

    private Boolean status;

    @Column(name = "status_desc")
    private String statusDesc;

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "pmt_date")
    private Date pmtDate;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "admin_fk", referencedColumnName = "user_id")
    @OnDelete(action = OnDeleteAction.SET_NULL)
    private Admin admin;

    public Payment(Double totAmt, Orders order, byte[] receipt,
                   Boolean status, String statusDesc,
                   Date pmtDate, Admin admin) {
        this.totAmt = totAmt;
        this.order = order;
        this.receipt = receipt;
        this.status = status;
        this.statusDesc = statusDesc;
        this.pmtDate = pmtDate;
        this.admin = admin;
    }
}
