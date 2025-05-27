<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="container-fluid py-4">
    <div class="d-flex justify-content-between align-items-center mb-4">
        <h2 class="page-title">Liste des Produits</h2>
        <a href="/produits/new" class="btn btn-primary">
            <i class="fas fa-plus"></i> Nouveau Produit
        </a>
    </div>

    <div class="card">
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Nom</th>
                            <th>Prix</th>
                            <th>Marque</th>
                            <th>Catégorie</th>
                            <th class="text-end">Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${produits}" var="produit">
                            <tr>
                                <td>${produit.id}</td>
                                <td>
                                    <div class="d-flex align-items-center">
                                        <i class="fas fa-box me-2 text-primary"></i>
                                        ${produit.nom}
                                    </div>
                                </td>
                                <td>
                                    <span class="badge bg-success">
                                        <fmt:formatNumber value="${produit.prix}" type="currency" currencySymbol="€"/>
                                    </span>
                                </td>
                                <td>
                                    <a href="/marques/edit/${produit.marque.id}" class="text-decoration-none">
                                        <span class="badge bg-info">
                                            <i class="fas fa-tag me-1"></i>${produit.marque.nom}
                                        </span>
                                    </a>
                                </td>
                                <td>
                                    <a href="/categories/edit/${produit.categorie.id}" class="text-decoration-none">
                                        <span class="badge bg-secondary">
                                            <i class="fas fa-folder me-1"></i>${produit.categorie.nom}
                                        </span>
                                    </a>
                                </td>
                                <td class="text-end">
                                    <div class="btn-group">
                                        <a href="/produits/edit/${produit.id}" 
                                           class="btn btn-sm btn-outline-primary"
                                           title="Modifier">
                                            <i class="fas fa-edit"></i>
                                        </a>
                                        <a href="/produits/delete/${produit.id}" 
                                           class="btn btn-sm btn-outline-danger"
                                           onclick="return confirm('Êtes-vous sûr de vouloir supprimer ce produit ?')"
                                           title="Supprimer">
                                            <i class="fas fa-trash"></i>
                                        </a>
                                    </div>
                                </td>
                            </tr>
                        </c:forEach>
                        <c:if test="${empty produits}">
                            <tr>
                                <td colspan="6" class="text-center py-4">
                                    <div class="empty-state">
                                        <i class="fas fa-box-open fa-3x mb-3 text-muted"></i>
                                        <p class="text-muted">Aucun produit n'a été trouvé</p>
                                        <a href="/produits/new" class="btn btn-primary mt-2">
                                            <i class="fas fa-plus"></i> Ajouter un produit
                                        </a>
                                    </div>
                                </td>
                            </tr>
                        </c:if>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div> 