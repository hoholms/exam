package com.nbugaenco.exam.mapper;

import org.springframework.stereotype.Component;

import com.nbugaenco.exam.model.dto.ToyDto;
import com.nbugaenco.exam.model.entity.Toy;
import com.nbugaenco.exam.repository.ToyCategoryRepository;
import lombok.RequiredArgsConstructor;

@Component
@RequiredArgsConstructor
public class ToyMapper {

  private final ToyCategoryRepository toyCategoryRepository;

  public Toy toToy(final ToyDto toyDto, final String photo) {
    return Toy
        .builder()
        .id(toyDto.getId())
        .toyName(toyDto.getToyName())
        .size(toyDto.getSize())
        .material(toyDto.getMaterial())
        .price(toyDto.getPrice())
        .category(toyCategoryRepository.findById(toyDto.getCategory()).orElse(null))
        .photo(photo)
        .build();
  }

  public Toy toToy(final ToyDto toyDto, final String photo, final Toy toy) {
    return toy
        .withToyName(toyDto.getToyName())
        .withSize(toyDto.getSize())
        .withMaterial(toyDto.getMaterial())
        .withPrice(toyDto.getPrice())
        .withCategory(toyCategoryRepository.findById(toyDto.getCategory()).orElse(null))
        .withPhoto(photo);
  }

}
