package com.nbugaenco.exam.model.dto;

import java.math.BigDecimal;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class SearchToyDto {

  private String     toyName;
  private String     material;
  private Integer    categoryId;
  private Integer    minSize;
  private Integer    maxSize;
  private BigDecimal minPrice;
  private BigDecimal maxPrice;

}
