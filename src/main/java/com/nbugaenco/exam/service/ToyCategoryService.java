package com.nbugaenco.exam.service;

import java.util.List;

import org.springframework.stereotype.Service;

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

}
