package com.example.commerce.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.example.commerce.repository.ProduitRepository;
import com.example.commerce.repository.MarqueRepository;
import com.example.commerce.repository.CategorieRepository;

@Controller
public class HomeController {
    
    @Autowired
    private ProduitRepository produitRepository;
    
    @Autowired
    private MarqueRepository marqueRepository;
    
    @Autowired
    private CategorieRepository categorieRepository;
    
    @GetMapping("/")
    public String home(Model model) {
        model.addAttribute("produits", produitRepository.findAll());
        model.addAttribute("marques", marqueRepository.findAll());
        model.addAttribute("categories", categorieRepository.findAll());
        return "home";
    }
} 