package com.nbugaenco.exam.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nbugaenco.exam.entity.ToyCategory;
import com.nbugaenco.exam.repository.ToyCategoryRepository;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class ToyCategoryService {

  private final ToyCategoryRepository toyCategoryRepository;

  public List<ToyCategory> findAll() {
    return toyCategoryRepository.findAll();
  }

  @Transactional
  public ToyCategory saveCategory(final ToyCategory category) {
    return toyCategoryRepository.save(category);
  }

  public ToyCategory findById(final Integer id) {
    return toyCategoryRepository.findById(id).orElseGet(ToyCategory::new);
  }

  @Transactional
  public void deleteCategory(final Integer id) {
    toyCategoryRepository.deleteById(id);
  }

}
