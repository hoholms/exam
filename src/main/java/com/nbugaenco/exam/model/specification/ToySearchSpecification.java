package com.nbugaenco.exam.model.specification;

import java.util.ArrayList;
import java.util.List;

import org.springframework.data.jpa.domain.Specification;

import com.nbugaenco.exam.model.dto.SearchToyDto;
import com.nbugaenco.exam.model.entity.Toy;
import lombok.experimental.UtilityClass;

@UtilityClass
public class ToySearchSpecification {

  public static Specification<Toy> getSpecification(SearchToyDto searchToyDto) {
    List<Specification<Toy>> specs = new ArrayList<>();

    if (searchToyDto.getToyName() != null && !searchToyDto.getToyName().isEmpty()) {
      specs.add((root, query, cb) -> cb.like(cb.lower(root.get("toyName")),
          "%" + searchToyDto.getToyName().toLowerCase() + "%"));
    }
    if (searchToyDto.getMaterial() != null && !searchToyDto.getMaterial().isEmpty()) {
      specs.add((root, query, cb) -> cb.like(cb.lower(root.get("material")),
          "%" + searchToyDto.getMaterial().toLowerCase() + "%"));
    }
    if (searchToyDto.getCategoryId() != null) {
      specs.add((root, query, cb) -> cb.equal(root.get("category").get("id"), searchToyDto.getCategoryId()));
    }
    if (searchToyDto.getMinSize() != null) {
      specs.add((root, query, cb) -> cb.greaterThanOrEqualTo(root.get("size"), searchToyDto.getMinSize()));
    }
    if (searchToyDto.getMaxSize() != null) {
      specs.add((root, query, cb) -> cb.lessThanOrEqualTo(root.get("size"), searchToyDto.getMaxSize()));
    }
    if (searchToyDto.getMinPrice() != null) {
      specs.add((root, query, cb) -> cb.greaterThanOrEqualTo(root.get("price"), searchToyDto.getMinPrice()));
    }
    if (searchToyDto.getMaxPrice() != null) {
      specs.add((root, query, cb) -> cb.lessThanOrEqualTo(root.get("price"), searchToyDto.getMaxPrice()));
    }

    return specs.stream().reduce(Specification::and).orElse(null);
  }

}
