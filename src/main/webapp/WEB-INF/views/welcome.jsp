<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Банк Закрытие</title>
    <link href="<c:url value='/css/main.css' />" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="<c:url value='/js/main.js' />"></script>
</head>
<body>
    <ul class="menu">
        <li><img src="<c:url value='/css/closing.jpeg' />" height="40"/></li>
        <li><a href="/AccountUI/">На главную</a></li>
    </ul>

    <div class="main-panel">
    <h1>Поиск счетов</h1>
    <div class="search">
        <b>Номер счёта:</b>
        <input id="search-field" type="text" />
        <button onClick="searchAccById()">Поиск</button>
        <span id="error"/>
    </div>
    <table id="account-table">
        <tr>
            <th>Номер</th>
            <th>Имя</th>
            <th>Фамилия</th>
            <th>Отчество</th>
            <th>Сумма</th>
            <th>Действия</th>
        </tr>
    </table>
    </div>
</body>
</html>