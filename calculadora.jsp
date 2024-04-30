<%-- 
    Document   : Calculadora de média de 2 notas utilizando HTML e JAVA(JSP)
    Created on : 29 de abr. de 2024
    Author     : MARLON RUFINO DO NASCIMENTO
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Resultado</title>
</head>
<body>
    <h2>Resultado</h2>
    <%-- Obtendo os parâmetros do formulário --%>
    <% 
        double nota1 = 0, nota2 = 0;
        try {
            nota1 = Double.parseDouble(request.getParameter("nota1"));
            nota2 = Double.parseDouble(request.getParameter("nota2"));
        } catch (NumberFormatException e) {
            out.println("<p>Erro ao obter as notas.</p>");
            return;
        }
    %>
    <%-- Verificando se as notas estão dentro do intervalo válido --%>
    <% if (nota1 < 0 || nota1 > 10 || nota2 < 0 || nota2 > 10) { %>
        <p>A entrada de nota é inválida. Insira uma nota entre 0 e 10 nos dois campos.</p>
    <% } else { %>
        <%-- Calculando a média --%>
        <% double media = (nota1 + nota2) / 2; %>
        <%-- Exibindo o resultado --%>
        <p>A média das notas <%= nota1 %> e <%= nota2 %> é: <%= media %></p>
    <% } %>
    <a href="index.html"><button> Retornar </button> </a>
</body>
</html>
