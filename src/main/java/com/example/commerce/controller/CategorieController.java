package com.example.commerce.controller;

import com.example.commerce.model.Categorie;
import com.example.commerce.repository.CategorieRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/categories")
public class CategorieController {

    @Autowired
    private CategorieRepository categorieRepository;

    @GetMapping
    public String list(Model model) {
        model.addAttribute("categories", categorieRepository.findAll());
        return "categories/list";
    }

    @GetMapping("/new")
    public String newForm(Model model) {
        model.addAttribute("categorie", new Categorie());
        return "categories/form";
    }

    @PostMapping
    public String save(@ModelAttribute Categorie categorie) {
        categorieRepository.save(categorie);
        return "redirect:/categories";
    }

    @GetMapping("/edit/{id}")
    public String edit(@PathVariable Long id, Model model) {
        model.addAttribute("categorie", categorieRepository.findById(id).orElseThrow());
        return "categories/form";
    }

    @GetMapping("/delete/{id}")
    public String delete(@PathVariable Long id) {
        categorieRepository.deleteById(id);
        return "redirect:/categories";
    }
} 