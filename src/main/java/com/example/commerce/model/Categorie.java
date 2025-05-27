package com.example.commerce.model;

import jakarta.persistence.*;
import lombok.Data;
import java.util.List;

@Data
@Entity
public class Categorie {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    private String nom;
    
    @OneToMany(mappedBy = "categorie")
    private List<Produit> produits;
} 