package com.nbugaenco.exam.entity;

import java.util.LinkedHashSet;
import java.util.Set;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "toy_category")
public class ToyCategory {

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column(name = "category_id", nullable = false)
  private Integer id;

  @Column(name = "category_name", nullable = false)
  private String categoryName;

  @OneToMany(mappedBy = "category", fetch = FetchType.LAZY)
  private Set<Toy> toys = new LinkedHashSet<>();

}
