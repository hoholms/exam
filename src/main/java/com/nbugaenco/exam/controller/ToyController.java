package com.nbugaenco.exam.controller;

import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.nbugaenco.exam.model.dto.SearchToyDto;
import com.nbugaenco.exam.model.dto.ToyDto;
import com.nbugaenco.exam.model.entity.Toy;
import com.nbugaenco.exam.service.ToyCategoryService;
import com.nbugaenco.exam.service.ToyService;
import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class ToyController {

  public static final String REDIRECT_TOY_SEARCH = "redirect:/toy/search";

  private final ToyCategoryService toyCategoryService;
  private final ToyService         toyService;

  @GetMapping({"", "/", "/index", "/search"})
  public String searchRedirect() {
    return REDIRECT_TOY_SEARCH;
  }

  @GetMapping("toy/search")
  public String search(final Model model, final @ModelAttribute SearchToyDto searchToyDto,
      final @PageableDefault(sort = {"id"}, direction = Sort.Direction.DESC) Pageable pageable) {

    model.addAttribute("toys", toyService.searchToys(searchToyDto, pageable));
    model.addAttribute("categories", toyCategoryService.findAll());
    model.addAttribute("searchToyDto", searchToyDto);

    return "searchToy";
  }

  @GetMapping("/toy/add")
  public String addToy(Model model) {
    model.addAttribute("toy", new Toy());
    model.addAttribute("categories", toyCategoryService.findAll());
    return "addToy";
  }

  @PostMapping("/toy/add")
  public String addToy(@ModelAttribute ToyDto toyDto) {
    toyService.addToy(toyDto);

    return REDIRECT_TOY_SEARCH;
  }

  @GetMapping("/toy/edit/{toyId}")
  public String editToy(@PathVariable Integer toyId, Model model) {
    model.addAttribute("toy", toyService.findById(toyId));
    model.addAttribute("categories", toyCategoryService.findAll());

    return "editToy";
  }

  @PostMapping("/toy/edit")
  public String updateToy(@ModelAttribute ToyDto toyDto) {
    toyService.updateToy(toyDto);

    return REDIRECT_TOY_SEARCH;
  }

  @PostMapping("/toy/delete/{toyId}")
  public String deleteToy(@PathVariable Integer toyId) {
    toyService.deleteToy(toyId);

    return REDIRECT_TOY_SEARCH;
  }

}
