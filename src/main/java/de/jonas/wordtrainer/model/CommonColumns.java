package de.jonas.wordtrainer.model;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;
import org.springframework.data.annotation.CreatedBy;
import org.springframework.data.annotation.LastModifiedBy;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import java.time.LocalDateTime;

@EntityListeners(AuditingEntityListener.class)
@MappedSuperclass
@Getter
@Setter
public abstract class CommonColumns {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    Long id;

    @CreatedBy
    @Column(name = "created_by", updatable = false)
    protected String createdBy;

    @CreationTimestamp
    @Column(name = "created_on", nullable = false, updatable = false)
    protected LocalDateTime createdOn;

    @LastModifiedBy
    @Column(name = "modified_by")
    protected String lastModifiedBy;

    @UpdateTimestamp
    @Column(name = "modified_on", nullable = false)
    protected LocalDateTime lastModifiedDate;
}