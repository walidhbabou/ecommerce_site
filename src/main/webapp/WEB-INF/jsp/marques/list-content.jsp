<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="container-fluid py-4">
    <div class="d-flex justify-content-between align-items-center mb-4">
        <h2 class="page-title">Liste des Marques</h2>
        <a href="/marques/new" class="btn btn-primary">
            <i class="fas fa-plus"></i> Nouvelle Marque
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
                            <th>Nombre de Produits</th>
                            <th class="text-end">Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${marques}" var="marque">
                            <tr>
                                <td>${marque.id}</td>
                                <td>
                                    <div class="d-flex align-items-center">
                                        <i class="fas fa-tag me-2 text-primary"></i>
                                        ${marque.nom}
                                    </div>
                                </td>
                                <td>
                                    <span class="badge bg-info">
                                        ${marque.produits.size()} produits
                                    </span>
                                </td>
                                <td class="text-end">
                                    <div class="btn-group">
                                        <a href="/marques/edit/${marque.id}" 
                                           class="btn btn-sm btn-outline-primary"
                                           title="Modifier">
                                            <i class="fas fa-edit"></i>
                                        </a>
                                        <a href="/marques/delete/${marque.id}" 
                                           class="btn btn-sm btn-outline-danger"
                                           onclick="return confirm('Êtes-vous sûr de vouloir supprimer cette marque ?')"
                                           title="Supprimer">
                                            <i class="fas fa-trash"></i>
                                        </a>
                                    </div>
                                </td>
                            </tr>
                        </c:forEach>
                        <c:if test="${empty marques}">
                            <tr>
                                <td colspan="4" class="text-center py-4">
                                    <div class="empty-state">
                                        <i class="fas fa-tags fa-3x mb-3 text-muted"></i>
                                        <p class="text-muted">Aucune marque n'a été trouvée</p>
                                        <a href="/marques/new" class="btn btn-primary mt-2">
                                            <i class="fas fa-plus"></i> Ajouter une marque
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