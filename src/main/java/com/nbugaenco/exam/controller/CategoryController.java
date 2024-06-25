package com.nbugaenco.exam.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CategoryController {

  @GetMapping({"category/add"})
  public String addCategory() {
    return "addCategory";
  }

}
