package com.example.commerce.controller;

import com.example.commerce.model.Produit;
import com.example.commerce.repository.ProduitRepository;
import com.example.commerce.repository.MarqueRepository;
import com.example.commerce.repository.CategorieRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/produits")
public class ProduitController {

    @Autowired
    private ProduitRepository produitRepository;
    
    @Autowired
    private MarqueRepository marqueRepository;
    
    @Autowired
    private CategorieRepository categorieRepository;

    @GetMapping
    public String list(Model model) {
        model.addAttribute("produits", produitRepository.findAll());
        return "produits/list";
    }

    @GetMapping("/new")
    public String newForm(Model model) {
        model.addAttribute("produit", new Produit());
        model.addAttribute("marques", marqueRepository.findAll());
        model.addAttribute("categories", categorieRepository.findAll());
        return "produits/form";
    }

    @PostMapping
    public String save(@ModelAttribute Produit produit) {
        produitRepository.save(produit);
        return "redirect:/produits";
    }

    @GetMapping("/edit/{id}")
    public String edit(@PathVariable Long id, Model model) {
        model.addAttribute("produit", produitRepository.findById(id).orElseThrow());
        model.addAttribute("marques", marqueRepository.findAll());
        model.addAttribute("categories", categorieRepository.findAll());
        return "produits/form";
    }

    @GetMapping("/delete/{id}")
    public String delete(@PathVariable Long id) {
        produitRepository.deleteById(id);
        return "redirect:/produits";
    }
} 