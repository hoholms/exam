package com.nbugaenco.exam.entity.dto;

import java.io.Serializable;
import java.math.BigDecimal;

import org.springframework.web.multipart.MultipartFile;

import lombok.Value;

@Value
public class ToyDto implements Serializable {

  Integer       id;
  String        toyName;
  Integer       size;
  String        material;
  BigDecimal    price;
  MultipartFile photo;
  Integer       category;

}
