<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="container-fluid py-4">
    <!-- En-tête avec titre et description -->
    <div class="text-center mb-5">
        <h1 class="display-4 mb-3">Bienvenue dans Gestion de Commerce</h1>
        <p class="lead text-muted">Une application moderne pour gérer votre inventaire de produits</p>
    </div>

    <!-- Cartes de fonctionnalités -->
    <div class="row g-4 mb-5">
        <div class="col-md-4">
            <div class="card h-100">
                <div class="card-body text-center">
                    <i class="fas fa-box fa-3x text-primary mb-3"></i>
                    <h3 class="card-title h5">Gestion des Produits</h3>
                    <p class="card-text text-muted">
                        Gérez facilement votre catalogue de produits avec des informations détaillées sur les prix, 
                        les marques et les catégories.
                    </p>
                    <a href="/produits" class="btn btn-outline-primary">
                        <i class="fas fa-arrow-right me-2"></i>Voir les produits
                    </a>
                </div>
            </div>
        </div>
        
        <div class="col-md-4">
            <div class="card h-100">
                <div class="card-body text-center">
                    <i class="fas fa-tag fa-3x text-primary mb-3"></i>
                    <h3 class="card-title h5">Gestion des Marques</h3>
                    <p class="card-text text-muted">
                        Organisez vos produits par marques pour une meilleure gestion de votre inventaire 
                        et une navigation simplifiée.
                    </p>
                    <a href="/marques" class="btn btn-outline-primary">
                        <i class="fas fa-arrow-right me-2"></i>Voir les marques
                    </a>
                </div>
            </div>
        </div>
        
        <div class="col-md-4">
            <div class="card h-100">
                <div class="card-body text-center">
                    <i class="fas fa-folder fa-3x text-primary mb-3"></i>
                    <h3 class="card-title h5">Gestion des Catégories</h3>
                    <p class="card-text text-muted">
                        Catégorisez vos produits pour une organisation optimale et une recherche facilitée 
                        dans votre catalogue.
                    </p>
                    <a href="/categories" class="btn btn-outline-primary">
                        <i class="fas fa-arrow-right me-2"></i>Voir les catégories
                    </a>
                </div>
            </div>
        </div>
    </div>

    <!-- Section des statistiques -->
    <div class="row g-4 mb-5">
        <div class="col-md-4">
            <div class="stats-card">
                <div class="stats-number">${produits.size()}</div>
                <div class="stats-label">Produits</div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="stats-card">
                <div class="stats-number">${marques.size()}</div>
                <div class="stats-label">Marques</div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="stats-card">
                <div class="stats-number">${categories.size()}</div>
                <div class="stats-label">Catégories</div>
            </div>
        </div>
    </div>

    <!-- Section des fonctionnalités principales -->
    <div class="row mb-5">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    <h2 class="h4 mb-4">Fonctionnalités principales</h2>
                    <div class="row g-4">
                        <div class="col-md-6">
                            <ul class="list-unstyled">
                                <li class="mb-3">
                                    <i class="fas fa-check-circle text-success me-2"></i>
                                    Interface utilisateur intuitive et responsive
                                </li>
                                <li class="mb-3">
                                    <i class="fas fa-check-circle text-success me-2"></i>
                                    Gestion complète des produits, marques et catégories
                                </li>
                                <li class="mb-3">
                                    <i class="fas fa-check-circle text-success me-2"></i>
                                    Validation des formulaires en temps réel
                                </li>
                            </ul>
                        </div>
                        <div class="col-md-6">
                            <ul class="list-unstyled">
                                <li class="mb-3">
                                    <i class="fas fa-check-circle text-success me-2"></i>
                                    Navigation fluide entre les différentes sections
                                </li>
                                <li class="mb-3">
                                    <i class="fas fa-check-circle text-success me-2"></i>
                                    Statistiques en temps réel
                                </li>
                                <li class="mb-3">
                                    <i class="fas fa-check-circle text-success me-2"></i>
                                    Design moderne et professionnel
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div> 