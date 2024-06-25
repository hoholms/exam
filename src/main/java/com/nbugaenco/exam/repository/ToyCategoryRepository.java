package com.nbugaenco.exam.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.nbugaenco.exam.entity.ToyCategory;

@Repository
public interface ToyCategoryRepository extends JpaRepository<ToyCategory, Integer> {}
