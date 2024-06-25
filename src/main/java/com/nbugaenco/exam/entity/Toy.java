package com.nbugaenco.exam.entity;

import java.math.BigDecimal;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.With;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@With
@Entity
@Table(name = "toy")
public class Toy {

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column(name = "toy_code", nullable = false)
  private Integer id;

  @Column(name = "toy_name", nullable = false)
  private String toyName;

  @Column(name = "size", nullable = false)
  private Integer size;

  @Column(name = "material", nullable = false)
  private String material;

  @Column(name = "price", nullable = false, precision = 10, scale = 2)
  private BigDecimal price;

  @Column(name = "photo")
  private String photo;

  @ManyToOne(fetch = FetchType.LAZY, optional = false)
  @JoinColumn(name = "category_id", nullable = false)
  private ToyCategory category;

}
