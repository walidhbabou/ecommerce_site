package com.example.commerce.model;

import jakarta.persistence.*;
import lombok.Data;


@Data
@Entity
public class Produit {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    private String nom;
    private double prix;
    
    @ManyToOne
    @JoinColumn(name = "marque_id")
    private Marque marque;
    
    @ManyToOne
    @JoinColumn(name = "categorie_id")
    private Categorie categorie;
} 