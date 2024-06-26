package com.nbugaenco.exam.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

import com.nbugaenco.exam.model.entity.Toy;

@Repository
public interface ToyRepository extends JpaRepository<Toy, Integer>, JpaSpecificationExecutor<Toy> {}
