<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="container-fluid py-4">
    <div class="row justify-content-center">
        <div class="col-12 col-md-8 col-lg-6">
            <div class="card">
                <div class="card-header">
                    <h3 class="card-title mb-0">
                        <i class="fas fa-folder me-2"></i>
                        ${categorie.id == null ? 'Nouvelle Catégorie' : 'Modifier Catégorie'}
                    </h3>
                </div>
                <div class="card-body">
                    <form action="/categories" method="post" class="needs-validation" novalidate>
                        <input type="hidden" name="id" value="${categorie.id}">
                        
                        <div class="mb-4">
                            <label for="nom" class="form-label">Nom de la catégorie</label>
                            <div class="input-group">
                                <span class="input-group-text">
                                    <i class="fas fa-folder"></i>
                                </span>
                                <input type="text" 
                                       class="form-control" 
                                       id="nom" 
                                       name="nom" 
                                       value="${categorie.nom}" 
                                       required
                                       placeholder="Entrez le nom de la catégorie">
                            </div>
                            <div class="invalid-feedback">
                                Veuillez entrer un nom de catégorie valide.
                            </div>
                        </div>
                        
                        <div class="d-flex justify-content-end gap-2">
                            <a href="/categories" class="btn btn-light">
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