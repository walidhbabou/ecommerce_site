package com.example.commerce.controller;

import com.example.commerce.model.Marque;
import com.example.commerce.repository.MarqueRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/marques")
public class MarqueController {

    @Autowired
    private MarqueRepository marqueRepository;

    @GetMapping
    public String list(Model model) {
        model.addAttribute("marques", marqueRepository.findAll());
        return "marques/list";
    }

    @GetMapping("/new")
    public String newForm(Model model) {
        model.addAttribute("marque", new Marque());
        return "marques/form";
    }

    @PostMapping
    public String save(@ModelAttribute Marque marque) {
        marqueRepository.save(marque);
        return "redirect:/marques";
    }

    @GetMapping("/edit/{id}")
    public String edit(@PathVariable Long id, Model model) {
        model.addAttribute("marque", marqueRepository.findById(id).orElseThrow());
        return "marques/form";
    }

    @GetMapping("/delete/{id}")
    public String delete(@PathVariable Long id) {
        marqueRepository.deleteById(id);
        return "redirect:/marques";
    }
} 