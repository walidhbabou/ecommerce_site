<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${param.title} - Gestion de Commerce</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <link href="/css/style.css" rel="stylesheet">
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark mb-4">
        <div class="container">
            <a class="navbar-brand" href="/">
                <i class="fas fa-store"></i> Gestion de Commerce
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="/produits">
                            <i class="fas fa-box"></i> Produits
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/marques">
                            <i class="fas fa-trademark"></i> Marques
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/categories">
                            <i class="fas fa-tags"></i> Catégories
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container">
        <jsp:include page="${param.content}" />
    </div>

    <footer class="footer mt-5 py-3 bg-light">
        <div class="container text-center">
            <span class="text-muted">© 2024 Gestion de Commerce. Tous droits réservés.</span>
        </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        // Activer le lien de navigation actif
        $(document).ready(function() {
            var currentPath = window.location.pathname;
            $('.nav-link').each(function() {
                if ($(this).attr('href') === currentPath) {
                    $(this).addClass('active');
                }
            });
        });
    </script>
</body>
</html> 