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
    <script>
    $(document).ready(function() {
        watchOperations(${acc_id});
    });
    </script>
</head>
<body>
    <ul class="menu">
        <li><img src="<c:url value='/css/closing.jpeg' />" height="40"/></li>
        <li><a href="/AccountUI/">На главную</a></li>
        <li><a href="/AccountUI/perform-operation/${acc_id}">Выполнить операцию по счёту ${acc_id}</a></li>
    </ul>
    <div class="main-panel">
    <h1>Операции счёта №${acc_id}</h1>
    <table id="operations-table">
        <tr>
            <th>Номер</th>
            <th>Счёт отправителя</th>
            <th>Счёт получателя</th>
            <th>Сумма</th>
            <th>Дата транзакции</th>
        </tr>
    </table>
    </div>
</body>
</html>