<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="container-fluid py-4">
    <div class="row justify-content-center">
        <div class="col-12 col-md-8 col-lg-6">
            <div class="card">
                <div class="card-header">
                    <h3 class="card-title mb-0">
                        <i class="fas fa-box me-2"></i>
                        ${produit.id == null ? 'Nouveau Produit' : 'Modifier Produit'}
                    </h3>
                </div>
                <div class="card-body">
                    <form action="/produits" method="post" class="needs-validation" novalidate>
                        <input type="hidden" name="id" value="${produit.id}">
                        
                        <div class="mb-4">
                            <label for="nom" class="form-label">Nom du produit</label>
                            <div class="input-group">
                                <span class="input-group-text">
                                    <i class="fas fa-box"></i>
                                </span>
                                <input type="text" 
                                       class="form-control" 
                                       id="nom" 
                                       name="nom" 
                                       value="${produit.nom}" 
                                       required
                                       placeholder="Entrez le nom du produit">
                            </div>
                            <div class="invalid-feedback">
                                Veuillez entrer un nom de produit valide.
                            </div>
                        </div>
                        
                        <div class="mb-4">
                            <label for="prix" class="form-label">Prix</label>
                            <div class="input-group">
                                <span class="input-group-text">
                                    <i class="fas fa-euro-sign"></i>
                                </span>
                                <input type="number" 
                                       step="0.01" 
                                       class="form-control" 
                                       id="prix" 
                                       name="prix" 
                                       value="${produit.prix}" 
                                       required
                                       placeholder="Entrez le prix">
                            </div>
                            <div class="invalid-feedback">
                                Veuillez entrer un prix valide.
                            </div>
                        </div>
                        
                        <div class="mb-4">
                            <label for="marque" class="form-label">Marque</label>
                            <div class="input-group">
                                <span class="input-group-text">
                                    <i class="fas fa-tag"></i>
                                </span>
                                <select class="form-select" id="marque" name="marque.id" required>
                                    <option value="">Sélectionnez une marque</option>
                                    <c:forEach items="${marques}" var="marque">
                                        <option value="${marque.id}" ${produit.marque.id == marque.id ? 'selected' : ''}>
                                            ${marque.nom}
                                        </option>
                                    </c:forEach>
                                </select>
                            </div>
                            <div class="invalid-feedback">
                                Veuillez sélectionner une marque.
                            </div>
                        </div>
                        
                        <div class="mb-4">
                            <label for="categorie" class="form-label">Catégorie</label>
                            <div class="input-group">
                                <span class="input-group-text">
                                    <i class="fas fa-folder"></i>
                                </span>
                                <select class="form-select" id="categorie" name="categorie.id" required>
                                    <option value="">Sélectionnez une catégorie</option>
                                    <c:forEach items="${categories}" var="categorie">
                                        <option value="${categorie.id}" ${produit.categorie.id == categorie.id ? 'selected' : ''}>
                                            ${categorie.nom}
                                        </option>
                                    </c:forEach>
                                </select>
                            </div>
                            <div class="invalid-feedback">
                                Veuillez sélectionner une catégorie.
                            </div>
                        </div>
                        
                        <div class="d-flex justify-content-end gap-2">
                            <a href="/produits" class="btn btn-light">
                                <i class="fas fa-times me-2"></i>Annuler
                            </a>
                            <button type="submit" class="btn btn-primary">
                                <i class="fas fa-save me-2"></i>Enregistrer
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
// Validation du formulaire
(function () {
    'use strict'
    var forms = document.querySelectorAll('.needs-validation')
    Array.prototype.slice.call(forms).forEach(function (form) {
        form.addEventListener('submit', function (event) {
            if (!form.checkValidity()) {
                event.preventDefault()
                event.stopPropagation()
            }
            form.classList.add('was-validated')
        }, false)
    })
})()
</script> 