package com.nbugaenco.exam.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.nbugaenco.exam.entity.ToyCategory;
import com.nbugaenco.exam.service.ToyCategoryService;
import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class ToyCategoryController {

  public static final String REDIRECT_TOY_SEARCH = "redirect:/toy/search";

  private final ToyCategoryService categoryService;

  @GetMapping("/category/add")
  public String addCategory(Model model) {
    model.addAttribute("category", new ToyCategory());

    return "addCategory";
  }

  @PostMapping("/category/add")
  public String saveCategory(@ModelAttribute ToyCategory category) {
    categoryService.saveCategory(category);

    return REDIRECT_TOY_SEARCH;
  }

  @GetMapping("/category/edit/{id}")
  public String editCategory(@PathVariable Integer id, Model model) {
    model.addAttribute("category", categoryService.findById(id));

    return "editCategory";
  }

  @PostMapping("/category/edit")
  public String updateCategory(@ModelAttribute ToyCategory category) {
    categoryService.saveCategory(category);

    return REDIRECT_TOY_SEARCH;
  }

  @PostMapping("/category/delete/{id}")
  public String deleteCategory(@PathVariable Integer id) {
    categoryService.deleteCategory(id);

    return REDIRECT_TOY_SEARCH;
  }

}
